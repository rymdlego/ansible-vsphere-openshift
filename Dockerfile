FROM centos:7

WORKDIR /usr/src/ansible-openshift/
COPY requirements.txt .

RUN yum install -y epel-release unzip python3-pip
RUN yum install -y ansible
RUN pip3 install -r requirements.txt
