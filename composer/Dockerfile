FROM alpine:latest
MAINTAINER Jan Kohlhof <kohj@informatik.uni-marburg.de>
    
RUN apk add --update git php5 php5-curl php5-openssl php5-json php5-phar php5-pdo php5-dom && rm /var/cache/apk/* && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	php -r "if (hash_file('SHA384', 'composer-setup.php') === 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php --install-dir=/usr/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"

WORKDIR /project
COPY startup.sh /usr/local/bin
ENTRYPOINT ["/usr/local/bin/startup.sh"]
