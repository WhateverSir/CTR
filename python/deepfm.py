#===----------------------------------------------------------------------===#
#
# Copyright (C) 2022 Sophgo Technologies Inc.  All rights reserved.
#
# SOPHON-DEMO is licensed under the 2-Clause BSD License except for the
# third-party components.
#
#===----------------------------------------------------------------------===#
import os
import time
import argparse
import numpy as np
import sophon.sail as sail
import logging
from utils import DataGenerator, evaluate_metrics
logging.basicConfig(level=logging.INFO)

class DeepFM:
    def __init__(self, args):
        # load bmodel
        self.net = sail.Engine(args.bmodel, args.dev_id, sail.IOMode.SYSIO)
        logging.debug("load {} success!".format(args.bmodel))
        self.handle = sail.Handle(args.dev_id)
        self.bmcv = sail.Bmcv(self.handle)
        self.graph_name = self.net.get_graph_names()[0]
        
        # get input
        self.input_name = self.net.get_input_names(self.graph_name)[0]
        self.input_shape = self.net.get_input_shape(self.graph_name, self.input_name)
        self.input_shapes = {self.input_name: self.input_shape}
        
        # check batch size 
        self.batch_size = self.input_shape[0]
        suppoort_batch_size = [1, 2, 3, 4, 8, 16, 32, 64, 128, 256, 512, 1024]
        if self.batch_size not in suppoort_batch_size:
            raise ValueError('batch_size must be {} for DeepFM, but got {}'.format(suppoort_batch_size, self.batch_size))        
        
        # init time
        self.inference_time = 0.0

    def predict(self, input_tensor):
        start_time = time.time()
        input_tensors = {self.input_name: input_tensor} 
        out = self.net.process(self.graph_name, input_tensors)
        self.inference_time += time.time()-start_time
        return out

    def __call__(self, item_list):
        item_num = len(item_list)
        results = []
        for item in item_list:
            results.append(self.predict(item))
        return results
        

def main(args):
    # check params
    if not os.path.exists(args.input):
        raise FileNotFoundError('{} is not existed.'.format(args.input))
    if not os.path.exists(args.bmodel):
        raise FileNotFoundError('{} is not existed.'.format(args.bmodel))
    
    # creat save path
    output_dir = "./results"
    if not os.path.exists(output_dir):
        os.mkdir(output_dir)

    # initialize net
    model = DeepFM(args)
    batch_size = model.batch_size
    handle = sail.Handle(args.dev_id)

    # results.txt init
    if args.input[-1] == '/':
        args.input = args.input[:-1]
    txt_name = os.path.split(args.bmodel)[-1] + "_" + os.path.split(args.input)[-1] + "_python_result.txt"

    # test datasets 
    logging.info("------------------ MOdel predict ----------------------")
    start_time = time.time()
    data_generator = DataGenerator(args.train_data, args.input, batch_size=model.batch_size, min_categr_count=args.min_categr_count)   
    preprocess_time = time.time() - start_time
    y_pred = []
    y_true = []
    for batch_data in data_generator: 
        tmp_pred = model.predict(batch_data[0])['output_Sigmoid']
        y_pred.extend(tmp_pred)
        y_true.extend(batch_data[1].numpy().reshape(-1,1))
    y_pred = np.array(y_pred, np.float64)
    y_true = np.array(y_true, np.float64)
    val_logs = evaluate_metrics(y_true, y_pred)
        
    # save results
    with open(os.path.join(output_dir, txt_name), 'a') as f:
        f.write(args.bmodel+" logloss: {} - AUC: {} \n".format(val_logs["logloss"], val_logs["AUC"]))
    logging.info("result saved in {}".format(os.path.join(output_dir, txt_name)))
    
    # calculate speed  
    logging.info("------------------ Predict Time Info ----------------------")
    cn = data_generator.__len__()
    preprocess_time = preprocess_time / cn
    inference_time = model.inference_time / cn
    logging.info("preprocess_time(ms): {:.2f}".format(preprocess_time * 1000))
    logging.info("inference_time(ms): {:.2f}".format(inference_time * 1000))
          

def argsparser():
    parser = argparse.ArgumentParser(prog=__file__)
    parser.add_argument('--input', type=str, default='../data/Movielens1M/Movielens1M_x0/test.csv', help='path of input')
    parser.add_argument('--train_data', type=str, default='../data/Movielens1M/Movielens1M_x0/train.csv', help='path of train')
    parser.add_argument('--bmodel', type=str, default='../models/BM1684X/DeepFM_fp16_256b.bmodel', help='path of bmodel')
    parser.add_argument('--dev_id', type=int, default=0, help='dev id')
    parser.add_argument('--min_categr_count', type=int, default=10, help='min times of categrory count')
    args = parser.parse_args()
    return args

if __name__ == "__main__":
    args = argsparser()
    main(args)
    print("------------------ ALL is Well ----------------------")