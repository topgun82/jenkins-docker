from jenkins

USER root

# Node.js
# The tar and bzip2 packages are required for Phantom.js installation in npm: https://github.com/Medium/phantomjs/issues/326
RUN apt-get install -y curl tar bzip2
# We need to use a later version of Node than is currently available in the Ubuntu package manager (2015-06-17)
RUN curl -sL https://deb.nodesource.com/setup | bash -

# Install git, maven, default-jdk
RUN \
  apt-get clean && \
  apt-get update && \
  apt-get install -y \
    git \
    maven \
    default-jdk \
    nodejs

# Install Docker (to be used as a client only)
RUN wget -qO- https://get.docker.com/ | sh
RUN usermod -aG docker jenkins

USER jenkins

# Add Git plugin
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
