FROM alpine

RUN mkdir -p /etc/automysqlbackup/

RUN apk add --no-cache mariadb-client pigz xz
WORKDIR /app
COPY automysqlbackup /app
COPY automysqlbackup.conf /etc/automysqlbackup/automysqlbackup.conf

ENTRYPOINT ["./automysqlbackup"]