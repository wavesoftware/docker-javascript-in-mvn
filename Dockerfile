FROM docker.io/library/maven:3.9-eclipse-temurin-8
RUN apt-get update -q && apt-get install -y \
    curl \
    xvfb \
    patch \
    nodejs 
RUN curl -LO https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb || apt-get install -f -y
RUN rm -rf /var/lib/apt/lists/*
