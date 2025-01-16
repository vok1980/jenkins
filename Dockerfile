FROM jenkins/jenkins:2.479.3-lts-jdk17

COPY plugins.txt /tmp/plugins.txt
RUN jenkins-plugin-cli -f /tmp/plugins.txt
