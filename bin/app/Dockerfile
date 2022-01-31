FROM ubuntu:18.04
RUN apt update && apt upgrade -y
COPY ./Container /Binaries/
ADD ./libs/* /usr/local/lib/
ADD ./libstd/* /usr/lib/x86_64-linux-gnu/
COPY mylibs.conf /etc/ld.so.conf.d/
WORKDIR /Binaries
RUN ldconfig 
CMD ./Container -a $DB_ADD -u '$DB_USER' -p $DB_PASS -d $DB 
