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

# swift

setup-swift:
	echo "setup swift"

build-swift:
	swift build

test-swift:
	swift test

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

# haskell

setup-haskell:
	./haskells.sh setup

build-haskell:
	./haskells.sh build

test-haskell:
	./haskells.sh test

.PHONY : default setup build test
