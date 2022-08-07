DOCKER_IMAGE=difft
VERSIONS=0

include Makefile.docker

.PHONY: check-version
check-version:
	docker run --rm $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) --version|awk '{print $$2}'
