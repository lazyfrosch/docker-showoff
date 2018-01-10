TAGS := 0.19 0.9
LATEST := 0.19
IMAGE := lazyfrosch/showoff

.PHONY: all push $(TAGS)

build: $(TAGS)
	docker tag $(IMAGE):$(LATEST) $(IMAGE):latest

$(TAGS):
	$(MAKE) -C $@

push:
	for tag in $(TAGS); do $(MAKE) -C $$tag push; done
	docker push $(IMAGE):latest

all: build push
