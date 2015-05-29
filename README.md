# jenkins-docker
Jenkins Docker image that adds Git, Maven, default-jdk and the Jenkins Git SCM plugin.

## Run

This:
 * runs a container;
 * maps the host port 8080 to the container port 8080;
 * sets an "always" restart policy;
 * names the image jenkins; and
 * maps the host folder /home/ubuntu/jenkins into the image as the Jenkins home folder.

    docker run -d -p 8080:8080 --restart=always --name jenkins -v /home/ubuntu/jenkins:/var/jenkins_home jenkins

## Setup

To set up JAVA_HOME and MAVEN_HOME:
 * Manage Jenkins
 * Configure System
 * Add JDK, untick “install automatically”, JAVA_HOME: /usr/lib/jvm/default-java
 * (Keep Git default)
 * Add Maven, untick “install automatically”, MAVEN_HOME: /usr/share/maven

And start adding your jobs.

---

David