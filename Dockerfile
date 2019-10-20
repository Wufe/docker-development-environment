FROM node:12.12
MAINTAINER Simone Bembi <simone.bembi@gmail.com>

RUN apt-get update && \
    apt-get install -y zsh && \
    sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended && \
    yarn global add typescript && \
    yarn global add parcel

CMD tail -f /dev/null