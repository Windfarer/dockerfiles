FROM ubuntu:latest

RUN apt-get update && apt-get -y install wget build-essential zlib1g-dev libpcre3 libpcre3-dev unzip

ENV PS_NGX_EXTRA_FLAGS="--with-cc=/opt/rh/devtoolset-2/root/usr/bin/gcc"

RUN NPS_VERSION=1.12.34.2  \
 && cd  \
 && wget https://github.com/pagespeed/ngx_pagespeed/archive/v${NPS_VERSION}-beta.zip  \
 && unzip v${NPS_VERSION}-beta.zip  \
 && cd ngx_pagespeed-${NPS_VERSION}-beta/  \
 && psol_url=https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz  \
 && [ -e scripts/format_binary_url.sh ] && psol_url=$(scripts/format_binary_url.sh PSOL_BINARY_URL)  \
 && wget ${psol_url}  \
 && tar -xzvf $(basename ${psol_url})  # extracts to psol/

 RUN NGINX_VERSION=1.11.10  \
 && cd  \
 && wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz  \
 && tar -xvzf nginx-${NGINX_VERSION}.tar.gz  \
 && cd nginx-${NGINX_VERSION}/  \
 && ./configure --add-module=$HOME/ngx_pagespeed-${NPS_VERSION}-beta ${PS_NGX_EXTRA_FLAGS}  \
 && make  \
 && sudo make install
