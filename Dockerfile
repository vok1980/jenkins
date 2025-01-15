FROM jenkins/jenkins:2.176.3

# A suite of plugins that lets you orchestrate automation, simple or complex.
RUN /usr/local/bin/install-plugins.sh 	workflow-aggregator:2.6

# Enhances Pipeline plugin to handle branches better by automatically grouping builds from different branches.
RUN /usr/local/bin/install-plugins.sh 	workflow-multibranch:2.21

# Pipeline: Stage View
RUN /usr/local/bin/install-plugins.sh 	pipeline-stage-view:2.11

# Small, miscellaneous, cross platform utility steps for Pipeline Plugin jobs
RUN /usr/local/bin/install-plugins.sh 	pipeline-utility-steps:2.2.0

# Blue Ocean
RUN /usr/local/bin/install-plugins.sh 	blueocean:1.16.0

# Git Pipeline for Blue Ocean
RUN /usr/local/bin/install-plugins.sh 	blueocean-git-pipeline:1.14.0

# Pipeline: GitHub Groovy Libraries
RUN /usr/local/bin/install-plugins.sh 	pipeline-github-lib:1.0

# Pipeline: Shared Groovy Libraries
RUN /usr/local/bin/install-plugins.sh 	workflow-cps-global-lib:2.13

# This plugin allows you to manage agents running on *nix machines over SSH.
RUN /usr/local/bin/install-plugins.sh 	jdk-tool:1.2 ssh-slaves:1.29.4

# This plugin allows use of Git as a build SCM, including repository browsers for several providers.
RUN /usr/local/bin/install-plugins.sh 	git:3.10.0

# This plugin keeps the actual job in the queue if at least one name of currently running jobs is matching with one of the given regular expressions.
RUN /usr/local/bin/install-plugins.sh 	build-blocker-plugin:1.7.3

# Enable timestamps within the "Build Environment" section of the build's configuration page.
RUN /usr/local/bin/install-plugins.sh 	timestamper:1.10

# This plugin makes it possible to publish the test results of an execution of a testing tool in Jenkins.
RUN /usr/local/bin/install-plugins.sh 	xunit:2.3.4

# This plugin allows you to configure every aspect of email notifications.
RUN /usr/local/bin/install-plugins.sh 	email-ext:2.64



# This plugin can be used to build cmake based projects within Jenkins.
RUN /usr/local/bin/install-plugins.sh 	cmakebuilder:2.6.1

# Docker Slaves # Use Containers to setup build agents, without any constraint on images you can use.
RUN /usr/local/bin/install-plugins.sh 	docker-slaves:1.0.7

# This plugin makes it possible to invoke a Gradle build script as the main build step.
RUN /usr/local/bin/install-plugins.sh 	gradle:1.32

# Jenkins pipeline steps which provides SSH facilities such as command execution or file transfer for continuous delivery.
RUN /usr/local/bin/install-plugins.sh 	ssh-steps:1.2.1

# This plugin is a build trigger that allows GitLab to trigger Jenkins builds when code is pushed or a merge request is created.
RUN /usr/local/bin/install-plugins.sh 	gitlab-plugin:1.5.11
