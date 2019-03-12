FROM centos

RUN yum update -y \
    && yum groupinstall -y "development tools" \
    && yum install -y https://centos7.iuscommunity.org/ius-release.rpm  \
    && yum update -y \
    && yum install -y python-devel python36u python36u-pip \
    && ln -fs /usr/bin/python3.6 /usr/bin/python \
    && ln -fs /usr/bin/pip3.6 /usr/bin/pip \
    && pip install --upgrade pip \ 
    && pip install mock pytest tox \
    && rm -rfv /var/cache/yum \
    && rm -rfv ~/.cache/pip
    
