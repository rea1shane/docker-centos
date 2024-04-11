build:
	docker build -t rea1shane/centos:8 .

run:
	docker run --name $(HOSTNAME) -d \
		--hostname $(HOSTNAME) \
		--privileged=true \
		rea1shane/centos:8 \
		/usr/sbin/init