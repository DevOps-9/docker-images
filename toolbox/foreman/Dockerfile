FROM deviantony/sandbox:ubuntu

RUN echo "deb http://deb.theforeman.org/ "$(lsb_release -sc)" stable" | tee /etc/apt/sources.list.d/foreman.list \
  && wget -q http://deb.theforeman.org/foreman.asc -O- | apt-key add - \
  && apt-get update \
  && apt-get install -y ruby-dev ruby-hammer-cli ruby-hammer-cli-foreman rake make

COPY config/foreman.yml /etc/hammer/cli.modules.d/foreman.yml

RUN cd /tmp \
  && git clone https://github.com/theforeman/hammer-cli-foreman-ssh.git \
  && cd hammer-cli-foreman-ssh \
  && gem install bundler \
  && bundle install \
  && rake install

COPY config/foreman_ssh.yml /etc/hammer/cli.modules.d/foreman_ssh.yml
