FROM minimum/openfalcon-golang

MAINTAINER minimum@cepave.com

ENV WORKDIR=$GOPATH/bin/ CONFIGFILE=cfg.json

# Install Packages
RUN \
  apt-get update && \
  apt-get install -y git gcc && \
  mkdir -p $GOPATH/src/github.com

# Build Owl API
RUN \
  git clone https://github.com/donh/open-falcon-api.git $GOPATH/src/github.com/owl-api && \
  cd $GOPATH/src/github.com/owl-api && \
  go get ./... && \
  go build .

WORKDIR $WORKDIR

#VOLUME $WORKDIR
COPY $CONFIGFILE ./

# Start
CMD ["./owl-api"]

