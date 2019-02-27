MY_VAR := $(shell echo whatever)
test:
	@echo MY_VAR IS $(MY_VAR)
build:
	docker build . -t nginx-helloworld:latest
tag:
	docker tag nginx-helloworld:latest mijack/nginx-helloworld:latest
publish:
	docker login && docker push mijack/nginx-helloworld:latest
