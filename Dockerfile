FROM alpine:3.10.2

RUN apk add --no-cache tftp-hpa

EXPOSE 69/udp

VOLUME /var/tftpboot

ENTRYPOINT ["in.tftpd"]

CMD ["--foreground", "--secure", "/var/tftpboot"]
