FROM ubuntu:16.04

RUN apt-get update

RUN apt-get -y install python-pip
RUN apt-get -y install python-dev

RUN pip install flask
RUN pip instsall numpy
