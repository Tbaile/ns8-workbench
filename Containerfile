FROM debian:11
RUN apt-get update \
    && apt-get -y install \
        init \
        systemd \
    && rm -rf /var/lib/apt/lists/*
COPY etc/systemd/system/console-getty.service.d/override.conf /etc/systemd/system/console-getty.service.d/override.conf
ENTRYPOINT [ "/sbin/init" ]
