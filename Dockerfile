FROM debian:12-slim

RUN mkdir -p /etc/automysqlbackup/

RUN apt-get update  \
    && apt-get install -y mariadb-client pigz xz-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY automysqlbackup /app
COPY automysqlbackup.conf /etc/automysqlbackup/automysqlbackup.conf

ENTRYPOINT ["./automysqlbackup"]