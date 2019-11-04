FROM golang:1.13 AS build

WORKDIR /usr/app
COPY . /usr/app

