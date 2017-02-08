git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
git clone https://github.com/ibmruntimes/v8z
cd v8z
git checkout 3.28-s390
make dependencies
make s390x -j4
make s390x -j4 library=shared
cp -vR include/* /usr/include/
chmod 644 /usr/include/libplatform/libplatform.h
chmod 644  /usr/include/v8*h
cp -v out/s390x.release/lib.target/lib*.so /usr/local/lib/
chmod -f 755 /usr/local/lib/libv8.so
cp -v out/s390x.release/obj.target/tools/gyp/lib*.a /usr/local/lib/
cp -v out/s390x.release/obj.target/third_party/icu/lib*.a /usr/local/lib/
chmod -f 755 /usr/local/lib/libicu*.so
chmod -f 644 /usr/local/lib/libv8*.a
