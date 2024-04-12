.PHONY: build run test

build:
	docker build -f Dockerfile -t rea1shane/centos:7 ..

run:
	docker run -d \
		--name $(HOSTNAME) \
		--hostname $(HOSTNAME) \
		rea1shane/centos:7

test:
	@make run HOSTNAME=centos7
