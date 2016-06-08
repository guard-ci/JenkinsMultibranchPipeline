setup: setup_haskell

# go
setup_go:
	go get github.com/stretchr/testify/assert

build_go:
	go build

test_go:
	go test -v ./...

fmt_go:
	go fmt ./...

lint_go:
	golint ./...

# haskell
setup_haskell:
	stack setup

build_haskell:
	stack build

test_haskell:
	stack test

# swift

build_swift:
	swift build

test_swift:
	swift test
