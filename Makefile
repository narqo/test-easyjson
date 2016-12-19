GO ?= go

PATH := $(PWD)/bin:$(PATH)
SHELL := /bin/bash

PKG := github.com/narqo/test-easyjson

all:

generate: bin/easyjson
	$(GO) generate -x $(PKG)/person

bin/easyjson:
	$(GO) build -i -o $(@) github.com/mailru/easyjson/easyjson

.PHONY: all generate
