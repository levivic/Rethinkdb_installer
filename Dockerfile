FROM s390x/ubuntu:16.04

COPY *.sh *.bin *.patch /RthDB/

RUN cd /RthDB && ./RethinkDB_Buiding.sh
