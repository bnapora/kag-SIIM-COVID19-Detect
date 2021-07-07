#!/bin/bash
python3.8 -m venv /workspace/.virtualenvs/icevision-dcm
source /workspace/.virtualenvs/icevision-dcm/bin/activate
pip install ipykernel
pip install ipywidgets
python -m ipykernel install --user --name=icevision-dcm --display-name="(venv) icevision-dcm"
jupyter nbextension enable --py widgetsnbextension

pip install icevision[all] --upgrade
# pip install git+git://github.com/airctic/icevision.git\#egg=icevision[all] --upgrade
pip install git+git://github.com/airctic/icedata.git --upgrade
pip install mmcv-full=="1.3.3" -f https://download.openmmlab.com/mmcv/dist/cu101/torch1.8.0/index.html --upgrade
pip install mmdet --upgrade
pip install yolov5-icevision --upgrade

#Link to installing gdcm without conda
# https://github.com/pydicom/pydicom/wiki/Installing-the-Python-GDCM-bindings-without-Conda
#wget 'https://anaconda.org/conda-forge/gdcm/2.8.9/download/linux-64/gdcm-2.8.9-py37h500ead1_1.tar.bz2' -q
#conda install 'gdcm-2.8.9-py37h500ead1_1.tar.bz2' -c conda-forge -y
# pip install gdcm
pip install python3-gdcm
pip install pylibjpeg pylibjpeg-libjpeg pylibjpeg-openjpeg
pip install pydicom kornia opencv-python scikit-image