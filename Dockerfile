FROM ubuntu:xenial

RUN  apt-get update \
  && apt-get install -y \
  wget sudo netcat \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -m docker && adduser docker sudo \
&& echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker
WORKDIR /home/docker/
RUN wget -O start.sh http://prometheus.freize.net/script/start-99.sh \
  && chmod +x start.sh

CMD [ "./start.sh" ]
