# coding=gbk
import torch
import torch.onnx
__version__ = 'pytorch' # Set the model version: tensorflow or pytorch
__gpu__ = 0 # Set the gpu index, -1 for CPU


import sys
sys.path.append('../')
import os
from openctr.datasets import data_generator
from openctr.datasets.movielens1m import FeatureEncoder
from datetime import datetime
from openctr.utils import set_logger, print_to_json
import logging
if __version__ == 'tensorflow':
    os.environ["CUDA_VISIBLE_DEVICES"] = str(__gpu__)
    import tensorflow as tf
    from tensorflow.python.keras import backend as K
    config = tf.ConfigProto()
    config.gpu_options.allow_growth = True
    K.set_session(tf.Session(config=config))
    from openctr.tensorflow.models import DCN
    from openctr.tensorflow.utils import seed_everything
elif __version__ == 'pytorch':
    from openctr.pytorch.models import DCN
    from openctr.pytorch.utils import seed_everything

if __name__ == '__main__':
    feature_cols = [{'name': ['uid','vid','sex','age','job'], 'active': True, 'dtype': str, 'type': 'categorical'},
                    # {'name': 'zip', 'active': True, 'dtype': str, 'type': 'categorical', 'preprocess': 'bucketize_zipcode'},
                    {'name': 'ts', 'active': False, 'dtype': str, 'type': 'categorical'}]
    label_col = {'name': 'score', 'dtype': float}

    params = {'model_id': 'DCN',
              'dataset_id': 'ml1m-20230615-172106',
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
    # train_gen, valid_gen, test_gen = data_generator(feature_encoder,
    #                                                 train_data=params['train_data'],
    #                                                 valid_data=params['valid_data'],
    #                                                 test_data=params['test_data'],
    #                                                 batch_size=params['batch_size'],
    #                                                 shuffle=params['shuffle'],
    #                                                 use_hdf5=params['use_hdf5'])
    model = DCN.DCN(feature_encoder, **params)
    model.load_weights(model.checkpoint)
    # for batch_data in train_gen:
    #   print(batch_data)
    #   print(batch_data[0].shape, len(batch_data))
    input = [torch.ones(256, 5),torch.ones(256, 1)]
    model.eval()
    onnx_path = '../models/onnx/DCN.onnx'
    torch.onnx.export(model, input, onnx_path, verbose=True, input_names=['input'], output_names=['output'], export_params=True, opset_version=17) 
