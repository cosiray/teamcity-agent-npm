FROM jetbrains/teamcity-agent:latest

USER root
ARG BUILD_DATE

MAINTAINER lizhien<cosiray@sina.com>
LABEL maintainer="lizhien<cosiray@sina.com>"
LABEL org.label-schema.build-date=$BUILD_DATE

RUN apt-get update && \
	curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
	apt-get install -y nodejs man && \
	apt-get clean all && \
	npm install yarn -g
	
USER root
