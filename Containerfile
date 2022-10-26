FROM debian:11
RUN apt-get update \
    && apt-get -y install \
        init \
        systemd \
        apache2 \
    && rm -rf /var/lib/apt/lists/* \
    && systemctl enable apache2
COPY etc/systemd/system/console-getty.service.d/override.conf /etc/systemd/system/console-getty.service.d/override.conf
ENTRYPOINT [ "/sbin/init" ]
