FROM ubuntu:latest
RUN apt-get -y update && \ 
 apt-get -y install golang && \
 go get github.com/gorsuch/haggar && \
 cd go/src/github.com/gorsuch/haggar && \
 go build
WORKDIR /go/src/github.com/gorsuch/haggar
CMD ["./haggar"]