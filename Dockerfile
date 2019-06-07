FROM jenkins/jenkins:lts

RUN /usr/local/bin/install-plugins.sh 	docker-slaves
RUN /usr/local/bin/install-plugins.sh 	git
RUN /usr/local/bin/install-plugins.sh 	email-ext
RUN /usr/local/bin/install-plugins.sh 	xunit
RUN /usr/local/bin/install-plugins.sh 	pipeline-stage-view
RUN /usr/local/bin/install-plugins.sh 	timestamper
RUN /usr/local/bin/install-plugins.sh 	pipeline-utility-steps
RUN /usr/local/bin/install-plugins.sh 	workflow-aggregator
