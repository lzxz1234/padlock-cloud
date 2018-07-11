export PATH := $(GOPATH)/bin:$(PATH)

all: fmt build

fmt:
	go fmt ./...

build: 
	go build -o bin/padlock .
