FROM ubuntu:14.04
MAINTAINER Krzysztof Suszynski <krzysztof.suszynski@wavesoftware.pl>
RUN apt-get update -q && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update -q && apt-get install -y nodejs maven openjdk-7-jdk xvfb git