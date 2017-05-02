FROM alpine

RUN apk update && apk add squid

# configuration at /etc/squid/squid.conf

EXPOSE 3128

CMD ["squid", "-NCd1"]
