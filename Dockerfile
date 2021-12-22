FROM centos:7

ARG CORRETTO_URL="https://corretto.aws/downloads/latest/amazon-corretto-8-x64-linux-jdk.rpm"

ARG ARTIFACTORY_URL=""
ENV ARTIFACTORY_URL=${ARTIFACTORY_URL}

ENV LANG en_US.utf8

RUN yum makecache fast
RUN yum -y update && \
    yum -y install \
    epel-release \
    git \
    make \
    maven \
    slf4j \
    unzip \
    zip \
    ${CORRETTO_URL} && \
    yum clean all

RUN mkdir -pv /root/.m2

COPY resources/configure-maven /usr/local/bin/configure-maven
