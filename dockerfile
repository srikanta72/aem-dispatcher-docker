FROM aemcloud/dispatcher:4.3.2
COPY ./src/conf.d /etc/httpd/conf.d
COPY ./src/conf.dispatcher.d /etc/httpd/conf.dispatcher.d