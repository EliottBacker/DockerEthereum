FROM ubuntu:xenial

MAINTAINER Eliott BACKER "eliott.backer@gmail.com"

# no question/dialog is asked during apt-get install
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && \
    apt-get -y -qq upgrade
    
RUN apt-get -y -qq install software-properties-common && \
    add-apt-repository ppa:ethereum/ethereum && \
    apt-get -qq update && \
    apt-get -y -qq install ethereum
    
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 8545
EXPOSE 30303
