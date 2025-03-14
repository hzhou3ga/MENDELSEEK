from sklearn import datasets
#from sklearn.neural_network import MLPClassifier
#from sklearn.neural_network import MLPRegressor
from sklearn.ensemble import GradientBoostingRegressor
import numpy as np
import pickle
from sklearn.externals import joblib
from scipy.sparse import csr_matrix

test_i,y0=datasets.load_svmlight_file("test_svmfea.txt")

clf=joblib.load('model/model_tree.pkl')
test_X=csr_matrix(test_i).toarray()

pred=clf.predict(test_X)
np.savetxt('pred/test_pred.txt',pred,delimiter='\t')
