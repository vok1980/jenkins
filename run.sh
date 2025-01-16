#!/bin/sh

TAG=jenkins.test:latest
docker build --tag=${TAG} .
docker run --rm --name jenkinsci -v jenkins_test_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 ${TAG}
