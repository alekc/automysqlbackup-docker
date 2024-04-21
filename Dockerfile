FROM alpine

RUN mkdir -p /etc/automysqlbackup/

WORKDIR /app
COPY automysqlbackup /app
COPY automysqlbackup.conf /etc/automysqlbackup/automysqlbackup.conf