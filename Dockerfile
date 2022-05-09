FROM golang:latest
COPY . /go/src/
RUN cd /go/src/haggar 
WORKDIR /go/src/haggar
CMD ["./haggar"]