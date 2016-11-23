FROM alpine:edge
MAINTAINER Jan Kohlhof <kohj@informatik.uni-marburg.de>
    
RUN apk add --update git php7 php7-curl php7-openssl php7-json php7-phar php7-pdo php7-dom php7-mbstring php7-zlib && \
    rm /var/cache/apk/* && \
    ln -s /usr/bin/php7 /usr/bin/php && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php --install-dir=/usr/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"

WORKDIR /project
COPY startup.sh /usr/local/bin
ENTRYPOINT ["/usr/local/bin/startup.sh"]
