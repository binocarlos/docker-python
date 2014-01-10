FROM ubuntu:12.04

# Update package repository
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# install python and pip
RUN curl -O http://python-distribute.org/distribute_setup.py
RUN python distribute_setup.py
RUN curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
RUN python get-pip.py