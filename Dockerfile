FROM ubuntu:14.04
MAINTAINER Krzysztof Suszynski <krzysztof.suszynski@wavesoftware.pl>
RUN apt-get update -q && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update -q && apt-get install -y \
  nodejs \
  maven \
  openjdk-7-jdk \
  xvfb \
  git \
  libxss1 \
  libappindicator1 \
  libindicator7 \
&& rm -rf /var/lib/apt/lists/*
RUN curl -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb || apt-get install -f