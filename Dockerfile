FROM ubuntu:bionic

RUN apt-get update && \
    apt-get -uy upgrade && \
    apt-get -y install ca-certificates wget && \
    update-ca-certificates

RUN echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_18.04/ /' | tee /etc/apt/sources.list.d/isv:ownCloud:desktop.list
RUN wget -nv https://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_18.04/Release.key -O "/etc/apt/trusted.gpg.d/isv:ownCloud:desktop.asc"
RUN apt-get update && \
    apt-get -y install owncloud-client