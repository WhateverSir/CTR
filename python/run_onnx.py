import numpy as np
import onnxruntime as ort
from utils import DataGenerator, evaluate_metrics

if __name__ == "__main__":
    ort_session = ort.InferenceSession("../models/onnx/DeepFM.onnx")
    input_name = ort_session.get_inputs()[0].name
    train_data = '../data/Movielens1M/Movielens1M_x0/train.csv'
    input_path = '../data/Movielens1M/Movielens1M_x0/test.csv'
    data_generator = DataGenerator(train_data, input_path, batch_size=256)   
    y_pred = []
    y_true = []
    for batch_data in data_generator: 
        # with open("tmp_input.txt", 'a') as f:
        #     for i in range(len(batch_data[0])):
        #         f.write("{:4d} {:4d} {:4d} {:4d} {:4d}\n".format(batch_data[0].numpy().astype(np.int)[i][0], batch_data[0].numpy().astype(np.int)[i][1], 
        #         batch_data[0].numpy().astype(np.int)[i][2], batch_data[0].numpy().astype(np.int)[i][3], batch_data[0].numpy().astype(np.int)[i][4]))
        tmp_pred = ort_session.run(None, {input_name: batch_data[0].numpy().astype(np.float32)})
        y_pred.extend(tmp_pred[0])
        y_true.extend(batch_data[1].numpy().reshape(-1,1))
    y_pred = np.array(y_pred, np.float64)
    y_true = np.array(y_true, np.float64)
    val_logs = evaluate_metrics(y_true, y_pred)
    print(" logloss: {} - AUC: {} \n".format(val_logs["logloss"], val_logs["AUC"]))
    print("------------------ ALL is Well ----------------------")