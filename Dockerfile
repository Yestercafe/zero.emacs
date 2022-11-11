FROM ubuntu:latest
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt update
RUN apt upgrade -y
RUN apt install -y git emacs

RUN git clone --depth 1 https://github.com/Yescafe/.emacs.d ~/.emacs.d

ENV TERM xterm-256color
WORKDIR /root

