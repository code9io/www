DOCKER_RUN := docker run -u $(shell id -u `whoami`) \
	-w /app -v `pwd`:/app www.code9io

less_files := $(shell find less -name "*.less")

default: .built css/grayscale.css

css/grayscale.css: $(less_files)
	$(DOCKER_RUN) lessc less/grayscale.less $@

.built: Dockerfile
	docker build -t www.code9io .
	touch .built
