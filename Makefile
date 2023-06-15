DOCKER_USERNAME ?= groundnuty
APPLICATION_NAME ?= sano-hello-world-makefile-go

build:
	docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME} .

push:
	docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}