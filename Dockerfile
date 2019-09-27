FROM circleci/ruby:2.6.3

RUN echo "fs.inotify.max_user_watches=204800" | sudo tee -a /etc/sysctl.conf

RUN set -x && \
    sudo apt-get update && \
    sudo apt-get install -y libldap2-dev libsasl2-dev

RUN set -x && \
    gem update bundler
