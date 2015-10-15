FROM debian:wheezy
MAINTAINER Alterway <iac@alterway.fr>

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -q -y \
    libsqlite3-dev \
    ruby \
    ruby-dev \
    build-essential \
  && gem install --no-ri --no-rdoc mailcatcher -v 0.5.12  \
  && apt-get remove -y build-essential \
  && apt-get autoremove -y \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists

EXPOSE 1080 25

ENTRYPOINT ["mailcatcher", "--smtp-ip=0.0.0.0", "--smtp-port=25", "--http-ip=0.0.0.0", "--foreground"]