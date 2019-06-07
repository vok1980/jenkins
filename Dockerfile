FROM jenkins/jenkins:lts

RUN /usr/local/bin/install-plugins.sh \
	docker-slaves \
	git \
	email-ext \
	xunit \
	pipeline-stage-view \
	timestamper \
	pipeline-utility-steps \
	workflow-aggregator \
