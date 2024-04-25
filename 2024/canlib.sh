sudo echo "install canlib"

wget https://github.com/nasy960/install_script_amlab/releases/download/v2024.0/kvlibsdk.tar.gz

wget https://github.com/nasy960/install_script_amlab/releases/download/v2024.0/linuxcan.tar.gz

wget https://github.com/nasy960/install_script_amlab/releases/download/v2024.0/pycanlib.zip

unzip pycanlib.zip

tar -xzvf linuxcan.tar.gz

tar -xzvf kvlibsdk.tar.gz


cd pycanlib

pip3 install canlib-1.23.804-py3-none-any.whl

cd ..


cd linuxcan

sudo apt-get install build-essential

sudo apt-get install linux-headers-`uname -r`

make

sudo make install

cd canlib

make

sudo make install

cd ../common

make

sudo ./installscript.sh

cd ..

make KV_Debug_ON=1

cd ..


cd kvlibsdk

make

make check

sudo make install

cd ..


pip3 install cantools


rm pycanlib.zip linuxcan.tar.gz kvlibsdk.tar.gz

rm -rf pycanlib linuxcan kvlibsdk