FROM ubuntu

MAINTAINER zihong.lv zihong.lv@hulu.com

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y gcc make g++ build-essential libc6-dev tcl

ADD ./redis-3.0.5.tar /tmp
WORKDIR /tmp/redis-3.0.5
RUN make && make test

RUN mkdir -p /redis-data
VOLUME ["/redis-data"]
EXPOSE 6379

ENTRYPOINT ["/tmp/redis-3.0.5/src/redis-server"]
CMD ["--dir", "/redis-data"]

