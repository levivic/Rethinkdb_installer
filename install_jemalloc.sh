git clone https://github.com/jemalloc/jemalloc.git
cd jemalloc
git checkout 4.4.0
./autogen.sh
make
make install_bin install_include install_lib
