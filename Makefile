DEFAULT_GOAL := build 
.PHONY: help build test 

build: ## Build CRLF Binary 
	@go build

test: ## Test CLRF Injection 
	@git clone https://github.com/tkmru/nginx-http-splitting-sample.git && cd nginx-http-splitting-sample && sudo podman build -t nginx:http-splitting . && sudo podman run --name crlf-test -d -p 127.0.0.1:3000:80 nginx:http-splitting && echo 'http://localhost:3000/v1/test.json' > domains.txt && go run ../main.go scan -d domains.txt -p ../payloads.txt

clean: ## Remove Test Libraries
	@rm -rf nginx-http-splitting-sample && sudo podman rm -f crlf-test
all: build test clean 

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
