FROM alpine:latest

COPY chrony.conf /var/lib/chrony/chrony.conf

RUN apk add --no-cache chrony

RUN ln -s /var/lib/chrony/chrony.conf /etc/chrony.conf

EXPOSE 123/udp

VOLUME /var/lib/chrony

ENTRYPOINT [ "/usr/sbin/chronyd"]
CMD ["-d"]