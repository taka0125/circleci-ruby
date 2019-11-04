FROM circleci/ruby:2.6.3

RUN set -x && \
    sudo apt-get install -y libldap2-dev libsasl2-dev

RUN set -x && \
    gem update bundler
