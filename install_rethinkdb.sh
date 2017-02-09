git clone https://github.com/rethinkdb/rethinkdb.git
cd rethinkdb
git checkout v2.3.5
cp ../s390x.patch .
git apply s390x.patch
