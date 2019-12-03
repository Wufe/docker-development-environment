FROM node:12.12
LABEL maintainer="simone.bembi@gmail.com"

USER root


RUN apt-get update && \
    apt-get install -y zsh gcc && \
    sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended && \
    yarn global add typescript && \
    yarn global add parcel && \
    mkdir -p /opt/go && \
	wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz -O go.tar.gz && \
	tar -xvf go.tar.gz && \
	mv go /usr/local

ENV GOROOT="/usr/local/go"
ENV GOPATH="${HOME}/go"
ENV PATH="${GOPATH}/bin:${GOROOT}/bin:${PATH}"

RUN /usr/local/go/bin/go version && \
	/usr/local/go/bin/go env && \
	rm -rf /opt/go
    
RUN /usr/local/go/bin/go get github.com/canthefason/go-watcher && \
    /usr/local/go/bin/go install github.com/canthefason/go-watcher/cmd/watcher

SHELL ["/bin/zsh", "-c"]

ENTRYPOINT []
CMD tail -f /dev/null