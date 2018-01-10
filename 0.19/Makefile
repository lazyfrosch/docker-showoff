BASEIMAGE := $(shell grep FROM Dockerfile | cut -d\  -f2-)
IMAGE := lazyfrosch/showoff
TAG := $(shell basename `pwd`)

build:
	docker pull $(BASEIMAGE)
	docker build --rm -t $(IMAGE):$(TAG) .

push:
	docker push $(IMAGE):$(TAG)
