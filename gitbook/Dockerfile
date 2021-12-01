FROM node:10

RUN apt-get update && apt-get install -y calibre git vim wget

RUN npm install gitbook-cli svgexport --unsafe-perm=true --allow-root -g

RUN gitbook install

