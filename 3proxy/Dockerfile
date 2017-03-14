FROM ubuntu:14.04
MAINTAINER windfarer

RUN apt-get update && apt-get install -y build-essential libevent-dev libssl-dev

ADD https://github.com/z3APA3A/3proxy/archive/3proxy-0.8.7.tar.gz /src/
RUN cd /src && tar zxvf 3proxy-0.8.7.tar.gz
WORKDIR /src/3proxy-3proxy-0.8.7

RUN make -f Makefile.Linux
RUN make -f Makefile.Linux install

ADD 3proxy.cfg /etc/3proxy/3proxy.cfg

EXPOSE 9091

CMD ["3proxy", "/etc/3proxy/3proxy.cfg"]
