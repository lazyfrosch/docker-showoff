BASEIMAGE := $(shell grep FROM Dockerfile | cut -d\  -f2-)
IMAGE := lazyfrosch/showoff
TAG := $(shell basename `pwd`)
DOCKERBUILD := docker build --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` --build-arg VCS_REF=`git rev-parse HEAD`

build:
	docker pull $(BASEIMAGE)
	$(DOCKERBUILD) --rm -t $(IMAGE):$(TAG) .

push:
	docker push $(IMAGE):$(TAG)
