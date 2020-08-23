FROM centos:centos7
RUN yum install -y gcc \
                   make \
                   git \
                   binutils \
                   libc6-dev \
                   glibc-static \
                   freeglut \
                   freeglut-devel

VOLUME ${PWD}:/host_file
