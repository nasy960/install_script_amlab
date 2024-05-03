sudo echo "install geographiclib"

wget https://github.com/nasy960/install_script_amlab/releases/download/v2024.0/GeographicLib-2.3.tar.gz

tar -xzvf GeographicLib-2.3.tar.gz

cd GeographicLib-2.3

mkdir build

cd build

cmake ..

make

make test

sudo make install

cd ../..

rm -rf GeographicLib-2.3

rm GeographicLib-2.3.tar.gz
