FROM ubuntu:22.04

WORKDIR /root

# replace by aliyun source to speedup
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list

# install dependencies
RUN apt update
# c++ build option: gdb cmake wget git aptitude
RUN apt install -y build-essential
# boost libs [optional]
RUN apt install -y libboost-python-dev
# python
RUN apt install -y python3-dev python3-pip

CMD /bin/bash