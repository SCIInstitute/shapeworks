wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-MacOSX-x86_64.sh
conda create --yes --name shapeworks-foundation python=3.5
conda activate shapeworks
conda install --yes -c anaconda cmake
conda install --yes -c anaconda geotiff
conda install --yes -c anaconda libxrandr-devel-cos6-x86_64
conda install --yes -c conda-forge xorg-libx11
conda install --yes -c anaconda libxinerama-devel-cos6-x86_64
conda install --yes -c anaconda libxcursor-devel-cos6-x86_64
conda install --yes -c anaconda libxi-devel-cos6-x86_64
conda install --yes numpy
conda install --yes matplotlib
conda install --yes colorama
