FROM alpine:3.10.2

RUN apk add --no-cache tftp-hpa

EXPOSE 69/udp

VOLUME /var/tftpboot

CMD /usr/sbin/in.tftpd --foreground --secure /var/tftpboot --verbose
