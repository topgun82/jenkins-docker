from jenkins

USER root

# Install git, maven, default-jdk
RUN apt-get update && apt-get install -y \
  git \
  maven \
  default-jdk

# Install Docker
RUN wget -qO- https://get.docker.com/ | sh
RUN usermod -aG docker jenkins
RUN systemctl enable docker
RUN service docker start

USER jenkins

# Add Git plugin
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
