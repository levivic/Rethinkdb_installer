FROM s390x/ubuntu:16.04

COPY *.sh *.hpp *.patch /RthDB/

EXPOSE 29015 28015 8080

RUN cd /RthDB && ./RethinkDB_Buiding.sh

#CMD ["rethinkdb","--bind","all"]
