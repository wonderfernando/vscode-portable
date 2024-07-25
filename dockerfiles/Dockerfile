FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y \
    curl \
    wget \
    gnupg \
    software-properties-common \
    ca-certificates \
    apt-transport-https \
    xauth \
    x11-apps \
    libx11-dev \
    libxkbfile-dev \
    libsecret-1-dev \
    sudo \
    git

RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/code stable main"

RUN apt-get install -y code

RUN apt-get install -y xauth x11-apps

WORKDIR /home

CMD ["code","--no-sandbox", "--user-data-dir=/home/user/vscode-data"]


ENV DISPLAY=:0
