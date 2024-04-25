sudo echo "install str2str"

wget https://github.com/nasy960/install_script_amlab/releases/download/v2024.0/RTKLIB_2.4.3_b34.zip

unzip RTKLIB_2.4.3_b34.zip

cd RTKLIB_2.4.3_b34

cd app/consapp/str2str/gcc

make

sudo make install

cd ../../../../..

rm -rf RTKLIB_2.4.3_b34

rm RTKLIB_2.4.3_b34.zip
