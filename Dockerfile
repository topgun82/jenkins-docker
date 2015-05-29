from jenkins

# Install git and maven
USER root
RUN \
  apt-get update && \
  apt-get -y dist-upgrade && \
  apt-get install -y git maven default-jdk
USER jenkins

# Add Git plugin
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt