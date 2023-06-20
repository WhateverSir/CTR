from torch import nn
from ..utils import set_activation
import torch

class DNN_Layer(nn.Module):
    def __init__(self, input_dim, output_dim=1, hidden_units=[], hidden_activations='ReLU',
                 final_activation=None, dropout_rates=[], batch_norm=False, use_bias=True):
        super(DNN_Layer, self).__init__()
        dense_layers = []
        if not isinstance(dropout_rates, list):
            dropout_rates = [dropout_rates] * len(hidden_units)
        if not isinstance(hidden_activations, list):
            hidden_activations = [hidden_activations] * len(hidden_units)
        hidden_activations = [set_activation(x) for x in hidden_activations]
        hidden_units = [input_dim] + hidden_units
        for idx in range(len(hidden_units) - 1):
            dense_layers.append(nn.Linear(hidden_units[idx], hidden_units[idx + 1], bias=use_bias))
            if batch_norm:
                dense_layers.append(nn.BatchNorm(hidden_units[idx + 1]))
            if hidden_activations[idx]:
                dense_layers.append(getattr(nn, hidden_activations[idx])())
            if dropout_rates[idx] > 0:
                dense_layers.append(nn.Dropout(p=dropout_rates[idx]))
        if output_dim is not None:
            dense_layers.append(nn.Linear(hidden_units[-1], output_dim, bias=use_bias))
        if final_activation is not None:
            dense_layers.append(getattr(nn, final_activation)())
        self.dnn = nn.Sequential(*dense_layers) # * used to unpack list
    
    def forward(self, inputs):
        return self.dnn(inputs)
        
class DCN_Layer(nn.Module):
    def __init__(self, input_dim, layer_num=1):
        super(DCN_Layer, self).__init__()
        self.layer_num = layer_num
        self.w = torch.nn.ModuleList([
            torch.nn.Linear(input_dim, 1, bias=False) for _ in range(layer_num)
        ])
        self.b = torch.nn.ParameterList([
            torch.nn.Parameter(torch.zeros((input_dim,))) for _ in range(layer_num)
        ])
    
    def forward(self, inputs):
        x0 = inputs
        x = inputs
        for i in range(self.layer_num):
            xw = self.w[i](x)
            x = x0 * xw + self.b[i] + x
        return x

      
class ScaledDotProductAttention(nn.Module):
    ''' Scaled Dot-Product Attention '''

    def __init__(self, temperature, attn_dropout=0.1):
        super(ScaledDotProductAttention, self).__init__()
        self.temperature = temperature
        self.dropout = nn.Dropout(attn_dropout)
        self.softmax = nn.Softmax(dim=2)

    def forward(self, q, k, v, mask=None):

        attn = torch.bmm(q, k.transpose(1, 2))
        attn = attn / self.temperature
        attn = self.softmax(attn)
        attn = self.dropout(attn)
        output = torch.bmm(attn, v)

        return output, attn        