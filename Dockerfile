FROM registry.fedoraproject.org/fedora:latest


RUN dnf -y install \
	rpm-ostree \
	ostree \
	lorax \
	lorax-lmc-novirt \
	git \
	jq \
	createrepo_c \
	dnf-plugins-core \
	fish \
	micro \
	fastfetch \
	&& dnf clean all

RUN mkdir -p /compose /repo

WORKDIR /compose

VOLUME ["/repo"]
