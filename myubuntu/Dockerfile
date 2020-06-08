FROM ubuntu:16.04

VOLUME ["/code"]

ENV NODE_PATH=/usr/local/node
ENV GOROOT=/usr/local/go 
ENV SOA_TOOL=/code/soa_tools
ENV GOXMLIB=/code/xmlib 
ENV KOALA=/code/koala 
ENV PFPATH=/code/service
ENV GOPATH=/code/gocode
ENV PATH=$GOROOT/bin:$SOA_TOOL:$NODE_PATH/bin:$PATH 

COPY go1.12.17.linux-amd64.tar.gz node-v14.2.0-linux-x64.tar.gz glide /root/

RUN cd /root && tar zxf go1.12.17.linux-amd64.tar.gz -C /usr/local \
    && apt update && apt install -y git && apt install -y vim \
    && apt install -y inetutils-ping && apt install -y telnet \
    && apt install -y tzdata && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone \
    && apt install -y python && apt install make && apt install -y g++ \ 
    && apt install -y curl \ 
    # && export GOROOT="/usr/local/go" && export GOPATH="/usr/local/go" && export PATH="$GOROOT/bin:$PATH" && curl "https://glide.sh/get" | sh 
    && mv glide /usr/local/go/bin/ \
    && tar zxf node-v14.2.0-linux-x64.tar.gz && mv node-v14.2.0-linux-x64 /usr/local/node && /usr/local/node/bin/npm install -g yarn

WORKDIR /code


# ENTRYPOINT /bin/bash
