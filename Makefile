TAGS := 0.9
LATEST := 0.9
IMAGE := lazyfrosch/showoff

.PHONY: all push $(TAGS)

build: $(TAGS)
	docker tag $(IMAGE):$(LATEST) $(IMAGE):latest

$(TAGS):
	$(MAKE) -C $@

push:
	for tag in $(TAGS); do $(MAKE) -C $$tag push; done

all: build push
