import torch
from torch import nn
from .base_model import BaseModel
from ..layers import EmbeddingLayer, DNN_Layer


class DNN(BaseModel):
    def __init__(self, feature_encoder, model_id='DNN', gpu=-1, task='classification', 
                 learning_rate=1e-3, embedding_initializer="torch.nn.init.normal_(std=1e-4)", 
                 embedding_dim=10, hidden_units=[64, 64, 64], hidden_activations='ReLU', 
                 dropout_rates=0, batch_norm=False, **kwargs):
        super(DNN, self).__init__(feature_encoder, model_id=model_id, gpu=gpu, **kwargs)
        self.embedding_layer = EmbeddingLayer(feature_encoder, embedding_dim)
        self.dnn = DNN_Layer(input_dim=embedding_dim * feature_encoder.num_fields,
                             output_dim=1, hidden_units=hidden_units,
                             hidden_activations=hidden_activations,
                             final_activation=self.get_final_activation(task),
                             dropout_rates=dropout_rates, batch_norm=batch_norm)
        self.compile(kwargs['optimizer'], loss=kwargs['loss'], lr=learning_rate)
        self.init_weights(embedding_initializer=embedding_initializer)
            
    def forward(self, inputs):
        """
        Inputs: [X,y]
        """
        X, y = self.inputs_to_device(inputs)
        embedding_vectors = self.embedding_layer(X)
        embedding_tensor = torch.cat(embedding_vectors, dim=1)
        y_pred = self.dnn(embedding_tensor)
        # loss = self.loss_with_reg(y_pred, y)
        # return_dict = {'loss': loss, 'y_pred': y_pred}
        return y_pred#return_dict
