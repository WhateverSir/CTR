import pandas as pd
import numpy as np

train = pd.read_csv("F:/CTR/data/Movielens1M/train-ratings", sep='::', engine="python", names=["userID", "gender", "age", "job", "zipcode", "itemID", "rating", "timestamp"])
test = pd.read_csv("F:/CTR/data/Movielens1M/test-ratings", sep='::', engine="python", names=["userID", "gender", "age", "job", "zipcode", "itemID", "rating", "timestamp"])
train["rating"] = train["rating"].map(lambda x: 1 if x == 2 else 0)
test["rating"] = test["rating"].map(lambda x: 1 if x == 2 else 0)

train.to_csv("train.csv", index=False)
test.to_csv("test.csv", index=False)




