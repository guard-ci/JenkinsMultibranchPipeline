default: test

setup: 
	make setup-go
	make setup-swift
	make setup-haskell

build:
	make build-go
	make build-swift
	make build-haskell

test:
	make test-go
	make test-swift
	make test-haskell

clean:
	make clean-go
	make clean-swift
	make clean-haskell

# swift

setup-swift:
	swiftenv init -

build-swift:
	swift build

test-swift:
	swift test

clean-swift:
	rm -rf .build

# go

setup-go:
	go get github.com/stretchr/testify/assert

build-go:
	go build

test-go:
	go test -v ./...

fmt-go:
	go fmt ./...

lint-go:
	golint ./...

clean-go:
	echo "clean go"

# haskell

setup-haskell:
	./stack.sh setup

build-haskell:
	./stack.sh build

test-haskell:
	./stack.sh test

clean-haskell:
	echo "clean haskell"

.PHONY : default setup build test
