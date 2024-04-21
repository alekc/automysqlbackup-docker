FROM alpine

RUN mkdir -p /etc/automysqlbackup/

RUN apk add --no-cache mariadb-client
WORKDIR /app
COPY automysqlbackup /app
COPY automysqlbackup.conf /etc/automysqlbackup/automysqlbackup.conf