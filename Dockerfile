FROM ubuntu:16.04
MAINTAINER Pavel Popov <popoffpavel@yandex.ru>

RUN  apt-get update \
  && apt-get install -y \
  wget sudo netcat ca-certificates build-essential \
  gawk texinfo pkg-config gettext automake \
  libtool bison flex zlib1g-dev libgmp3-dev \
  libmpfr-dev libmpc-dev git zip \
  sshpass mc curl python expect bc telnet \
  openssh-client tftpd-hpa libid3tag0-dev \
  gperf libltdl-dev  autopoint cpio module-init-tools \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -m docker && adduser docker sudo \
&& echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker
WORKDIR /home/docker/
RUN wget -O start.sh http://prometheus.freize.net/script/start-99.sh
RUN chmod +x start.sh

CMD [ "./start.sh" ]
