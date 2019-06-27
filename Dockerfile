FROM alpine:latest

COPY chrony.conf /var/lib/chrony/chrony.conf

RUN ln -s /var/lib/chrony/chrony.conf /etc/chrony/chrony.conf

RUN apk add --no-cache chrony

EXPOSE 123/udp

VOLUME /var/lib/chrony

ENTRYPOINT [ "/usr/sbin/chronyd"]
CMD ["-d", "-f", "/etc/chrony/chrony.conf"]