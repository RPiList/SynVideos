1. 
mkdir /volume1/docker/pihole && \
mkdir /volume1/docker/pihole/etc-pihole && \
mkdir /volume1/docker/pihole/etc-dnsmasq.d && \
cd /volume1/docker/pihole

2. 
wget https://raw.githubusercontent.com/RPiList/SynVideos/main/Videos/DockerPihole/docker-compose.yml && \
docker-compose up -d

3.
chmod 1777 -R /volume1/docker/pihole
