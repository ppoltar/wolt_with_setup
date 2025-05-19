.PHONY: build test clean allure install

build:
	docker build -t my-test-container .

test:
	docker run --rm \
		-v $(PWD)/reports:/app/reports \
		-e IS_DOCKER=true \
		my-test-container

install: build test