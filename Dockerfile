FROM ubuntu:14.04
MAINTAINER Phillip Whittlesea <pw.github@thega.me.uk>

RUN apt-get update && apt-get install -y\
  python-setuptools\
  python-dev\
  libyaml-dev\
  git
RUN easy_install pip
RUN pip install PyYAML

RUN git clone https://github.com/openstack-infra/jenkins-job-builder.git
WORKDIR jenkins-job-builder
RUN python setup.py install
RUN pip install pbr
