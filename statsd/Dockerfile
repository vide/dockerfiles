FROM    node:7-alpine
MAINTAINER Jan Kohlhof <kohj@informatik.uni-marburg.de>

RUN apk add --update ca-certificates wget && \
    update-ca-certificates && \
    wget https://github.com/etsy/statsd/archive/master.zip && \
    unzip master.zip && \
    rm master.zip && \
    mv /statsd-master /statsd

ADD ./config.js /statsd/config.js

EXPOSE 8125/udp

ENTRYPOINT ["node", "/statsd/stats.js", "/statsd/config.js"]
