PROJECT_NAME := proxy
LOCAL_IMAGE_NAME := $(PROJECT_NAME):latest

docker:
	docker build -t $(LOCAL_IMAGE_NAME) .

save:
	docker save -o $(PROJECT_NAME).docker $(LOCAL_IMAGE_NAME)

load:
	docker load -i $(PROJECT_NAME).docker
