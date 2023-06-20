__version__ = 'pytorch' # Set the model version: tensorflow or pytorch
__gpu__ = 0 # Set the gpu index, -1 for CPU

import sys
sys.path.append('../')
from openctr.datasets import data_generator
from openctr.datasets.avazu import FeatureEncoder
from datetime import datetime
from openctr.utils import set_logger, print_to_json
import logging
if __version__ == 'tensorflow':
    os.environ["CUDA_VISIBLE_DEVICES"] = str(__gpu__)
    from openctr.tensorflow.models import DNN
    from openctr.tensorflow.utils import seed_everything
elif __version__ == 'pytorch':
    from openctr.pytorch.models import DNN
    from openctr.pytorch.utils import seed_everything

if __name__ == '__main__':
#    feature_cols = [{'name': 'id', 'active': False, 'dtype': str, 'type': 'categorical'},
#                    {'name': 'hour', 'active': True, 'dtype': str, 'type': 'categorical', 'preprocess': 'convert_hour'},
#                    {'name': ['C1','banner_pos','site_id','site_domain','site_category','app_id','app_domain','app_category','device_id',
#                              'device_ip','device_model','device_type','device_conn_type','C14','C15','C16','C17','C18','C19','C20','C21'],
#                     'active': True, 'dtype': 'str', 'type': 'categorical'},
#                    {'name': 'weekday', 'active': True, 'dtype': str, 'type': 'categorical', 'preprocess': 'convert_weekday'},
#                    {'name': 'is_weekend', 'active': True, 'dtype': str, 'type': 'categorical', 'preprocess': 'convert_weekend'}]
#    label_col = {'name': 'click', 'dtype': float}
#
#    params = {'model_id': 'DNN_demo',
#              'dataset_id': 'avazu-' + datetime.now().strftime('%Y%m%d-%H%M%S'),
#              'train_data': '../data/Avazu/train_sample.csv',
#              'test_data': '../data/Avazu/test_sample.csv',
#              'model_dir': '../checkpoints/',
#              'validation_samples': 3000,
#              'split_type': 'sequential',
#              'embedding_regularizer': 0,
#              'kernel_regularizer': 0,
#              'hidden_units': [64, 64, 64],
#              'hidden_activations': ['relu', 'relu', 'relu'],
#              'learning_rate': 1e-3,
#              'dropout_rates': 0,
#              'batch_norm': False,
#              'optimizer': 'adam',
#              'task': 'classification',
#              'loss': 'binary_crossentropy',
#              'metrics': ['logloss', 'AUC'],
#              'min_categr_count': 5,
#              'batch_size': 64,
#              'epochs': 3,
#              'shuffle': True,
#              'seed': 2019,
#              'monitor': 'AUC',
#              'monitor_mode': 'max',
#              'use_hdf5': True,
#              'patience': 2,
#              'workers': 1,
#              'verbose': 0,
#              'version': __version__,
#              'gpu': __gpu__}
    feature_cols = [{'name': ['uid','vid','sex','age','job'], 'active': True, 'dtype': str, 'type': 'categorical'},
                    # {'name': 'zip', 'active': True, 'dtype': str, 'type': 'categorical', 'preprocess': 'bucketize_zipcode'},
                    {'name': 'ts', 'active': False, 'dtype': str, 'type': 'categorical'}]
    label_col = {'name': 'score', 'dtype': float}

    params = {'model_id': 'DNN_demo',
              'dataset_id': 'ml1m-' + datetime.now().strftime('%Y%m%d-%H%M%S'),
              'train_data': '../data/Movielens1M/Movielens1M_x0/train.csv',
              'valid_data': '../data/Movielens1M/Movielens1M_x0/test.csv',
              'test_data': '../data/Movielens1M/Movielens1M_x0/test.csv',
              'model_dir': '../checkpoints/',
              'embedding_dim': 64,
              'embedding_regularizer': 0.01,
              'kernel_regularizer': 0,
              'hidden_units': [500, 500, 500, 500],
              'hidden_activations': 'relu',
              'learning_rate': 1e-3,
              'dropout_rates': 0,
              'batch_norm': False,
              'optimizer': 'adam',
              'task': 'classification',
              'loss': 'binary_crossentropy',
              'metrics': ['logloss', 'AUC'],
              'min_categr_count': 10,
              'batch_size': 10000,
              'epochs': 50,
              'shuffle': True,
              'seed': 2019,
              'monitor': 'AUC',
              'monitor_mode': 'max',
              'use_hdf5': True,
              'patience': 2,
              'workers': 1,
              'verbose': 0,
              'version': __version__,
              'gpu': __gpu__}
    set_logger(params)
    logging.info('Start the demo...')
    logging.info(print_to_json(params))
    seed_everything(seed=params['seed'])

    feature_encoder = FeatureEncoder(feature_cols, label_col, dataset_id=params['dataset_id'], 
                                     model_dir=params['model_dir'], version=params['version'])
    feature_encoder.fit(train_data=params['train_data'], min_categr_count=params['min_categr_count'])

    train_gen, valid_gen, test_gen = data_generator(feature_encoder,
                                                    train_data=params['train_data'],
                                                    test_data=params['test_data'],
                                                    valid_data=params['valid_data'],
                                                    #validation_samples=params['validation_samples'],
                                                    #split_type=params['split_type'],
                                                    batch_size=params['batch_size'],
                                                    shuffle=params['shuffle'],
                                                    use_hdf5=params['use_hdf5'])
    model = DNN(feature_encoder, **params)
    model.fit_generator(train_gen, validation_data=valid_gen, epoches=params['epochs'],
                        verbose=params['verbose'])
    model.load_weights(model.checkpoint)
    
    logging.info('***** Train/validation/test results *****')
    model.evaluate_generator(train_gen)
    model.evaluate_generator(valid_gen)
    model.evaluate_generator(test_gen)


