FROM jenkins/jenkins:lts

# Docker Slaves # Use Containers to setup build agents, without any constraint on images you can use.
RUN /usr/local/bin/install-plugins.sh 	docker-slaves

# This plugin allows use of Git as a build SCM, including repository browsers for several providers.
RUN /usr/local/bin/install-plugins.sh 	git

# This plugin allows you to configure every aspect of email notifications.
RUN /usr/local/bin/install-plugins.sh 	email-ext

# This plugin makes it possible to publish the test results of an execution of a testing tool in Jenkins.
RUN /usr/local/bin/install-plugins.sh 	xunit

# Pipeline: Stage View
RUN /usr/local/bin/install-plugins.sh 	pipeline-stage-view

# Enable timestamps within the "Build Environment" section of the build's configuration page.
RUN /usr/local/bin/install-plugins.sh 	timestamper

# Small, miscellaneous, cross platform utility steps for Pipeline Plugin jobs
RUN /usr/local/bin/install-plugins.sh 	pipeline-utility-steps

# A suite of plugins that lets you orchestrate automation, simple or complex.
RUN /usr/local/bin/install-plugins.sh 	workflow-aggregator

# Jenkins pipeline steps which provides SSH facilities such as command execution or file transfer for continuous delivery.
RUN /usr/local/bin/install-plugins.sh 	ssh-steps

# Blue Ocean
RUN /usr/local/bin/install-plugins.sh 	blueocean

# Git Pipeline for Blue Ocean
RUN /usr/local/bin/install-plugins.sh 	blueocean-git-pipeline

# This plugin makes it possible to invoke a Gradle build script as the main build step.
RUN /usr/local/bin/install-plugins.sh 	gradle

# Pipeline: GitHub Groovy Libraries
RUN /usr/local/bin/install-plugins.sh 	pipeline-github-lib

# Pipeline: Shared Groovy Libraries
RUN /usr/local/bin/install-plugins.sh 	workflow-cps-global-lib

# This plugin allows you to manage agents running on *nix machines over SSH.
RUN /usr/local/bin/install-plugins.sh 	jdk-tool ssh-slaves
