FROM python:3

RUN mkdir /usr/app
RUN git clone https://github.com/Windfarer/IPProxyTool.git /usr/app
WORKDIR /usr/app
COPY * ./
RUN pip install -i https://pypi.douban.com/simple/ scrapy
RUN pip install -i https://pypi.douban.com/simple/ -r requirements.txt

EXPOSE 8000

CMD python ipproxytool.py
