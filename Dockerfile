FROM quay.io/centos7/s2i-core-centos7

USER root

RUN yum install -y nc && \
    yum install -y bind-utils && \
    yum install -y iputils && \
    yum install -y net-tools && \
    yum -y clean all --enablerepo='*'
    
USER 1001

CMD ping localhost
