VERSION=0.0.1

build:
	docker build -t takumakume/owncloud-client:$(VERSION) .

push:
	docker push takumakume/owncloud-client:$(VERSION)
