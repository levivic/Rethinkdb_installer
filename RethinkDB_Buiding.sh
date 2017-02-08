dir=$PWD
echo "PATH=\$PATH:/root/ibm/node/bin/:$dir/depot_tools/" >> ~/.bashrc
echo "LD_LIBRARY_PATH=/usr/local/lib" >> ~/.bashrc

apt-get -y update
apt-get install -y git libssl-dev build-essential protobuf-compiler python libprotobuf-dev libcurl4-openssl-dev libboost-all-dev libncurses5-dev wget m4 autoconf openjdk-8-jdk

./install_jemalloc.sh
./install_node.sh
./install_rethinkdb.sh
./install_v8.sh

sed -i '8s/#include "include/v8-platform.h"/#include "v8-platform.h"/' /usr/include/libplatform/libplatform.h
mkdir rethinkdb/external/v8_3.30.33.16/
cp -RL ./v8z/* ./rethinkdb/external/v8_3.30.33.16/

source ~/.bashrc

cd rethinkdb
./configure
make -j 4 THREADED_COROUTINES=1
make install -j 4 THREADED_COROUTINES=1
