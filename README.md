# DDNS Docker container based on OpenWRT
This image provides support for DDNS.
 - exposed ports: http

## run
 `docker run -d --rm --name oddns -v /opt/ddns/ddns:/etc/config/ddns oddns`
