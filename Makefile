build:
	docker build -t rea1shane/centos:8 .

run:
	docker run -d \
		--name $(HOSTNAME) \
		--hostname $(HOSTNAME) \
		rea1shane/centos:8