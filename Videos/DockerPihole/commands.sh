#!/bin/bash
mkdir /volume1/docker/pihole && \
mkdir /volume1/docker/pihole/etc-pihole && \
chmod 777 -R /volume1/docker/pihole/etc-pihole && \
mkdir /volume1/docker/pihole/etc-dnsmasq.d && \
chmod 777 -R /volume1/docker/pihole/etc-dnsmasq.d && \
cd /volume1/docker/pihole && \
wget https://raw.githubusercontent.com/RPiList/SynVideos/main/Videos/DockerPihole/docker-compose.yml && \
docker-compose up -d

