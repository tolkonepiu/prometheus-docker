# Prometheus Docker 
[![Docker stars](https://img.shields.io/docker/stars/tolkonepiu/prometheus-docker.svg)](https://hub.docker.com/r/tolkonepiu/prometheus-docker/) [![Docker pulls](https://img.shields.io/docker/pulls/tolkonepiu/prometheus-docker.svg)](https://hub.docker.com/r/tolkonepiu/prometheus-docker/)  
Docker image for [Prometheus](http://prometheus.freize.net/) (script based on [rt-n56u project](https://bitbucket.org/padavan/rt-n56u) for maintenance and upgrade of routers).

## How to use?

Start the container:  
```docker run -it --rm -v $(PWD):/home/docker/trx_archive/ tolkonepiu/prometheus-docker```
Wait for the boot menu, then follow the instructions from [here](http://prometheus.freize.net/).

##Firmware
After build, firmware can be found in the directory, where you started the container.

