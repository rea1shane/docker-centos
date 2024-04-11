build:
	docker build -t rea1shane/centos:8 --no-cache .

run:
	docker run --name $(HOSTNAME) -d \
		--hostname $(HOSTNAME) \
		-p $(SSH_PORT):22 \
		--privileged=true \
		rea1shane/centos:8 \
		/usr/sbin/init