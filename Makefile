cnf ?= Makefile.env
include $(cnf)

build:
	docker build -f Dockerfile -t $(IMG_NAME):$(IMG_TAG) .	

all: build
