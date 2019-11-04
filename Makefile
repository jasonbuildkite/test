.PHONY: build buildlinux test

buildlinux:
	GO111MODULE=on GOARCH=amd64 CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -o bin/linux/testbk main.go

buildDarwin:
	GO111MODULE=on GOARCH=amd64 GOOS=darwin go build -ldflags="-w -s" -o bin/mac/local-mail main.go

test:
	go vet -vettool=$(which shadow)
	go test -v -count=1 -race $(go list ./...)

build: buildlinux buildDarwin
