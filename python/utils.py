import numpy as np
import pandas as pd
from torch.utils import data
from collections import Counter, OrderedDict
import logging
logging.basicConfig(level=logging.INFO)

class Dataset(data.Dataset):
    def __init__(self, train_data, data_path, min_categr_count=1): 
        self.feature_specs = ['uid','vid','sex','age','job','score']
        self.na_value=""
        self.min_categr_count = min_categr_count
        self.word_index = dict()
        self.fit_on_texts(self.read_csv(train_data))
        self.darray = self.transform(self.read_csv(data_path))

    def read_csv(self, data_path):
        logging.info("Reading file: " + data_path)
        all_cols = [{'name': 'uid', 'dtype': str},{'name': 'vid', 'dtype': str},{'name': 'sex', 'dtype': str},{'name': 'age', 'dtype': str},{'name': 'job', 'dtype': str},{'name': 'score', 'dtype': float}]
        dtype_dict = dict((x["name"], eval(x["dtype"]) if isinstance(x["dtype"], str) else x["dtype"]) for x in all_cols)
        ddf = pd.read_csv(data_path,  dtype=dtype_dict, memory_map=True)
        for col in all_cols:
            name = col["name"]
            if name in ddf.columns and ddf[name].isnull().values.any():
                ddf[name] = self._fill_na(col, ddf[name])
        return ddf.loc[:, self.feature_specs]
  
    def _fill_na(self, col, series):
        na_value = col.get("na_value")
        if na_value is not None:
            return series.fillna(na_value)
        elif col["dtype"] == "str":
            return series.fillna("")
        else:
            raise RuntimeError("Feature column={} requires na_value!".format(col["name"]))    

    def encode_category(self, feature, categories):
        category_indices = [self.word_index[feature].get(x, 0) for x in categories]
        return np.array(category_indices)
    def fit_on_texts(self, ddf):
        for feature in self.feature_specs[:-1]:
            tokens = list(ddf.loc[:, feature].values)
            tokens = [tk for tk in tokens if tk != self.na_value]
            word_counts = Counter(tokens)
            words = [token for token, count in word_counts.items() if count >= self.min_categr_count]
            self.word_index[feature] = dict((token, idx + 1) for idx, token in enumerate(words))
    def transform(self, ddf):
        logging.info("Transform features ...")
        data_arrays = []
        for feature in self.feature_specs[:-1]:
            data_arrays.append(self.encode_category(feature, ddf.loc[:, feature].values))
        data_arrays.append(ddf.loc[:, self.feature_specs[-1]].values) # add the label column at last
        data_arrays = [item.reshape(-1, 1) if item.ndim == 1 else item for item in data_arrays]
        data_array = np.hstack(data_arrays)
        return data_array

    def __getitem__(self, index):
        X = self.darray[index, 0:-1]
        y = self.darray[index, -1]
        return X, y
    
    def __len__(self):
        return self.darray.shape[0]

class DataGenerator(data.DataLoader):
    def __init__(self, train_data, data_path, batch_size=32, min_categr_count=1, shuffle=False, num_workers=1,  **kwargs):
        self.dataset = Dataset(train_data, data_path, min_categr_count)
        super(DataGenerator, self).__init__(dataset=self.dataset, batch_size=batch_size, shuffle=shuffle, num_workers=num_workers, drop_last=True)
    def __len__(self):
        return int(np.ceil(len(self.dataset) * 1.0 / self.batch_size))

from sklearn.metrics import roc_auc_score, log_loss, accuracy_score

def evaluate_metrics(y_true, y_pred, metrics=['logloss', 'AUC']):
    result = dict()
    logging.info("Evaluate results...")
    for metric in metrics:
        if metric in ['logloss', 'binary_crossentropy']:
            result[metric] = log_loss(y_true, y_pred, eps=1e-7)
        elif metric == 'AUC':
            result[metric] = roc_auc_score(y_true, y_pred)
        elif metric == "ACC":
            y_pred = np.argmax(y_pred, axis=1)
            result[metric] = accuracy_score(y_true, y_pred)
    logging.info('[Metrics] ' + ' - '.join('{}: {:.6f}'.format(k, v) for k, v in result.items()))
    return result
