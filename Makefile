all: build tag push

NAME=sonarqube
VERSION=8.9.5-community
REGISTRY="quay.io/rcarrata"
TOOL="podman"

build:
		@go version
			@${TOOL} build -t localhost/${NAME}:${VERSION} .

tag:
		@${TOOL} tag localhost/${NAME}:${VERSION} ${REGISTRY}/${NAME}:${VERSION}

push:
		@${TOOL} push ${REGISTRY}/${NAME}:${VERSION}
