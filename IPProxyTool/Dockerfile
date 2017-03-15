FROM python:2.7

RUN mkdir /usr/app
RUN git clone https://github.com/awolfly9/IPProxyTool.git /usr/app
WORKDIR /usr/app
COPY * ./
RUN pip install -r requirements.txt


ENV DATABASE_HOST localhost
ENV DATABASE_PORT 3306
ENV DATABASE_USER root
ENV DATABASE_PASS 123456

ENV DATABASE_DB_NAME ipproxy
ENV DATABASE_TABLE_NAME free_ipproxy
ENV DATABASE_HTTPBIN_TABLE_NAME httpbin

EXPOSE 8000

RUN chmod +x run.sh

CMD ./run.sh