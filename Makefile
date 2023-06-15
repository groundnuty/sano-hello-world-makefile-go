DOCKER_USERNAME ?= groundnuty
GHCR_USERNAME ?= groundnuty
APPLICATION_NAME ?= sano-hello-world-makefile-go

GIT_HASH ?= $(shell git log --format="%h" -n 1)

all: build push

build:
	docker build \
		--tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:${GIT_HASH} \
		--tag ghcr.io/${DOCKER_USERNAME}/${APPLICATION_NAME}:${GIT_HASH} \
		.

push: push-dockerhub push-ghcr

push-dockerhub:
	docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:${GIT_HASH}

push-ghcr:
	docker push ghcr.io/${GHCR_USERNAME}/${APPLICATION_NAME}:${GIT_HASH}
