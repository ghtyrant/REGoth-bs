set -e

rm -rf build
mkdir build
cd build

wget https://dilborceisv8p.cloudfront.net/bsf_2019.06.07_win64.zip
unzip bsf_2019.06.07_linux64.zip -d bsf

cmake -Dbsf_INSTALL_DIR=bsf -DCMAKE_BUILD_TYPE=RelWithDebInfo -DREGOTH_USE_SYSTEM_BSF=On ../..
cmake --build . --config RelWithDebInfo --parallel
