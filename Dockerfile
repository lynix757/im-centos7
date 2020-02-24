FROM centos:7
MAINTAINER Pornsak Nuamnoi <pornsak.backup@gmail.com>

RUN yum -y update && yum clean all
# Install EPEL Repo
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
 && rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum -y install ntp
