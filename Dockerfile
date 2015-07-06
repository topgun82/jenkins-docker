from jenkins

USER root

# Install git, maven, default-jdk
RUN apt-get update && apt-get install -y \
  git \
  maven \
  default-jdk

# Install Docker (to be used as a client only)
RUN wget -qO- https://get.docker.com/ | sh
RUN usermod -aG docker jenkins

USER jenkins

# Add Git plugin
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
