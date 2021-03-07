From openwrt-rootfs:openwrt-19.07
MAINTAINER Jan Riechers <de@r-jan.de>

EXPOSE 80

RUN mkdir -pv /var/lock

RUN opkg update
RUN opkg install luci-app-ddns ddns-scripts_nsupdate ddns-scripts libustream-openssl ca-bundle

RUN /etc/init.d/dropbear disable
RUN /etc/init.d/dnsmasq disable
RUN /etc/init.d/done disable
RUN /etc/init.d/firewall disable
RUN /etc/init.d/gpio_switch disable
RUN /etc/init.d/led disable
RUN /etc/init.d/network disable
RUN /etc/init.d/odhcpd disable
RUN /etc/init.d/sysctl disable
RUN /etc/init.d/sysfixtime disable
RUN /etc/init.d/sysntpd disable
RUN /etc/init.d/urngd disable
COPY files/ddns /etc/init.d/ddns
RUN /etc/init.d/ddns enable
