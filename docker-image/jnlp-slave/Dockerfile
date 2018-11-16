FROM jenkinsci/jnlp-slave
MAINTAINER Bijoy Thomas <bijoythomask@gmail.com>

ARG VCS_REF
ARG BUILD_DATE

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
		g++ \
		gcc \
		libc6-dev \
		make \
        jq \
	&& rm -rf /var/lib/apt/lists/*

RUN wget -O /usr/bin/docker --no-check-certificate https://get.docker.com/builds/Linux/x86_64/docker-1.10.3
RUN chmod a+x /usr/bin/docker

ENV HELM_VERSION v2.0.0-rc.1

RUN curl -fsSL https://storage.googleapis.com/kubernetes-helm/helm-$HELM_VERSION-linux-amd64.tar.gz -o helm.tar.gz \
	&& tar -C /usr/local/ -xzf helm.tar.gz \
	&& cp /usr/local/linux-amd64/helm /usr/local/bin/


