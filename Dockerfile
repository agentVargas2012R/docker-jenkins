FROM jenkins/jenkins:lts
USER root
RUN touch /etc/sudoers
RUN echo "jenkins ALL = NOPASSWD : /usr/bin/apt-get, /usr/bin/aptitude, /usr/bin/npm, /usr/bin/aws" > /etc/sudoers
RUN apt-get update && apt-get install -y curl
RUN apt-get install -y python3 python3-pip zip unzip
RUN pip3 install awscli aws-sam-cli
RUN apt-get install -y npm
RUN apt-get install nodejs -y
RUN npm i -g typescript
RUN chown -R jenkins:jenkins "/usr/share/nodejs"
RUN chown -R jenkins:jenkins "/opt"
