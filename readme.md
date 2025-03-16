requires linux/unix OS

python package
sklearn

for example to install 
conda install -c anaconda scikit-learn
pip install  scikit-multilearn
pip install future --upgrade


list of gene and their interaction numbers:
hippie_string0.5_interactome_gn_intnum.lst

before test

modifying   scan_all_xgb.job : 

setenv PYTH to your python version that has scikit-learn installed.

then 
./scan_all_xgb.job

It will take some time  to finish.
Single node CPU: around 2 days. 
the output will be in directores "rand1" to "rand10"

get all predictions:
./scan_all_xgb_kn.job

check the output against

all_xgb_0.txt

Note taht one can not reproduce the exact number of each gene's raw score, because there is rand number generation involved. 
But, the correlation between different run should > 0.99

For unpaired t-test analysis:
./scan_tv.job 
output: 
path_tv_name.txt 
goproc_tv_name.txt 

check output against 
path_tv_name_0.txt  
goproc_tv_name_0.txt

