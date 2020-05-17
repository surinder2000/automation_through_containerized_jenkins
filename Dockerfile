FROM centos:latest

RUN yum install net-tools -y

RUN yum install sudo -y

RUN yum install git -y

RUN yum install python3 -y

RUN yum install java-11-openjdk -y

RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

RUN cd /etc/yum.repos.d/ ; curl -O https://pkg.jenkins.io/redhat-stable/jenkins.repo

RUN yum install jenkins -y

RUN echo -e "jenkins		ALL=(ALL) 	NOPASSWD: ALL" >> /etc/sudoers

RUN yum install /usr/sbin/service -y

CMD sudo service jenkins start -DFOREGROUND && /bin/bash




