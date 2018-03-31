HOST_PORT=8080
IMAGE=jenkins/jenkins:lts
CONTAINER=jenkins_demo
VOLUME=jenkins_home

init: container_rm volume_rm
	docker run --name "$(CONTAINER)" -p $(HOST_PORT):8080 -p 50000:50000 \
	-v $(VOLUME):/var/jenkins_home $(IMAGE)

start:
	docker start $(CONTAINER)

stop:
	docker stop $(CONTAINER)

clean: container_rm volume_rm image_rm

container_rm:
	-docker container rm -f $$(docker ps -a -q --filter "name=$(CONTAINER)")

volume_rm:
	-docker volume rm $(VOLUME)

image_rm:
	-docker image rm -f jenkins/jenkins:lts

