FROM ubuntu:latest

RUN apt-get update && apt-get -y install wget build-essential zlib1g-dev libpcre3 libpcre3-dev unzip

ENV NGINX_VERSION=1.11.10
ENV NPS_VERSION=1.12.34.2

RUN wget https://github.com/pagespeed/ngx_pagespeed/archive/v${NPS_VERSION}-beta.zip  \
    && unzip v${NPS_VERSION}-beta.zip  \
    && cd ngx_pagespeed-${NPS_VERSION}-beta/  \
    && psol_url=https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz  \
    && [ -e scripts/format_binary_url.sh ]  \
    && psol_url=$(scripts/format_binary_url.sh PSOL_BINARY_URL)  \
    && wget ${psol_url}  \
    && tar -xzvf $(basename ${psol_url})  \
    && cd ..  \
    && wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz  \
    && tar -xvzf nginx-${NGINX_VERSION}.tar.gz  \
    && cd nginx-${NGINX_VERSION}/  \
    && ./configure --add-module=/ngx_pagespeed-${NPS_VERSION}-beta ${PS_NGX_EXTRA_FLAGS}  \
    && make  \
    && make install

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
