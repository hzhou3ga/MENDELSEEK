from sklearn import datasets
#from sklearn.neural_network import MLPClassifier
#from sklearn.neural_network import MLPRegressor
from sklearn.ensemble import GradientBoostingRegressor
import numpy as np
import pickle
from sklearn.externals import joblib

train_i,y0=datasets.load_svmlight_file("train_svmfea.txt")

clf=GradientBoostingRegressor(n_estimators=1000,max_depth=6,learning_rate=0.05)
#clf=GradientBoostingRegressor(max_depth=6,learning_rate=0.05)


clf.fit(train_i,y0)

joblib.dump(clf,'model/model_tree.pkl')
