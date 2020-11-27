FROM jetbrains/teamcity-agent:latest

USER root
MAINTAINER lizhien<cosiray@sina.com>

RUN apt-get update && \
	curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
	apt-get install -y nodejs man && \
	apt-get clean all && \
	npm install yarn -g
	
USER buildagent
