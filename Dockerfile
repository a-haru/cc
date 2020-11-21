FROM centos:centos7
RUN yum install -y gcc \
                   make \
                   git \
                   binutils \
                   libc6-dev \
                   glibc-static \
                   freeglut \
                   freeglut-devel \
                   net-tools

RUN localedef -v -c -i ja_JP -f UTF-8 ja_JP.UTF-8; echo "";

env LANG=ja_JP.UTF-8
RUN rm -f /etc/localtime
RUN ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

CMD date
