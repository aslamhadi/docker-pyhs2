FROM python:2-onbuild

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

RUN apt-get -y update

RUN apt-get -y install python-dev build-essential sasl2-bin libsasl2-2 libsasl2-dev libsasl2-modules

RUN pip install pyhs2

COPY . /usr/src/app