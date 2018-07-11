FROM golang:1.10

COPY . /go/src/github.com/maklesoft/padlock-cloud

RUN cd /go/src/github.com/maklesoft/padlock-cloud \
 && make \
 && mv bin/padlock /padlock \
 && mv conf/config.yml /config.yml

WORKDIR /

EXPOSE 8081

ENTRYPOINT ["/padlock", "--config", "config.yml", "runserver"]
