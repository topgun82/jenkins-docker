from jenkins

# Install git, maven, default-jdk and Docker
USER root
RUN \
  apt-get update && \
  apt-get -y dist-upgrade && \
  apt-get install -y git maven default-jdk
RUN wget -qO- https://get.docker.com/ | sh
RUN usermod -aG docker jenkins
RUN systemctl enable docker
USER jenkins

# Add Git plugin
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt