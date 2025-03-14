requires linux/unix OS


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
the output will be in directores "rand1" to "rand10"
check the output against

all_xgb_0.txt


For unpaired t-test analysis:
./scan_tv.job 
output: 
path_tv_name.txt 
goproc_tv_name.txt 

check output against 
path_tv_name_0.txt  
goproc_tv_name_0.txt

