# jenkins-docker
Jenkins Docker image that adds installation of Git, Maven, Docker, default-jdk and Node.js, plus the Jenkins Git SCM and Docker build step plugins.

## Run

```
docker run -d \
  -p 8080:8080 \
  --restart=always --name jenkins \
  -v /home/ubuntu/jenkins:/var/jenkins_home \
  jenkins
```

 * runs a container;
 * maps the host port 8080 to the container port 8080;
 * sets an "always" restart policy;
 * maps the host folder /home/ubuntu/jenkins into the container as the Jenkins home folder; and
 * names the image jenkins.

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
