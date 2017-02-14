#!/bin/sh

[ -z "$STATSD_GRAPHITE_HOST" ] && STATSD_GRAPHITE_HOST="localhost"
[ -z "$STATSD_GRAPHITE_PROTOCOL" ] && STATSD_GRAPHITE_PROTOCOL="text"
[ -z "$STATSD_GRAPHITE_PORT" ] && STATSD_GRAPHITE_PORT=2003
[ -z "$STATSD_GRAPHITE_PICKLE_PORT" ] && STATSD_GRAPHITE_PICKLE_PORT=2004
[ -z "$STATSD_FLUSH_INTERVAL" ] && STATSD_FLUSH_INTERVAL="10000"
[ -z "$STATSD_DEBUG" ] && STATSD_DEBUG="false"
[ -z "$STATSD_DUMP_MESSAGES" ] && STATSD_DUMP_MESSAGES="false"

sed -i "s/#STATSD_GRAPHITE_HOST#/$STATSD_GRAPHITE_HOST/" /statsd/config.js
sed -i "s/#STATSD_GRAPHITE_PROTOCOL#/$STATSD_GRAPHITE_PROTOCOL/" /statsd/config.js
sed -i "s/#STATSD_GRAPHITE_PORT#/$STATSD_GRAPHITE_PORT/" /statsd/config.js
sed -i "s/#STATSD_GRAPHITE_PICKLE_PORT#/$STATSD_GRAPHITE_PICKLE_PORT/" /statsd/config.js
sed -i "s/#STATSD_GRAPHITE_GLOBAL_PREFIX#/$STATSD_GRAPHITE_GLOBAL_PREFIX/" /statsd/config.js
sed -i "s/#STATSD_FLUSH_INTERVAL#/$STATSD_FLUSH_INTERVAL/" /statsd/config.js
sed -i "s/#STATSD_PERCENT_THRESHOLD#/$STATSD_PERCENT_THRESHOLD/" /statsd/config.js
sed -i "s/#STATSD_DEBUG#/$STATSD_DEBUG/" /statsd/config.js
sed -i "s/#STATSD_DUMP_MESSAGES#/$STATSD_DUMP_MESSAGES/" /statsd/config.js

cat /statsd/config.js

node /statsd/stats.js /statsd/config.js
