FROM alpine

RUN apk update && apk add squid
RUN chmod +x docker-entrypoint.sh

# configuration at /etc/squid/squid.conf

EXPOSE 3128

CMD ["squid", "-NCd1"]
