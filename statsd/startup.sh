#!/bin/sh

if [ -z "$GRAPHITE_HOST" ]; then
	GRAPHITE_HOST="localhost"
fi

sed -i "s/#GRAPHITE_HOST#/\"$GRAPHITE_HOST\"/" /statsd/config.js

if [ -z "$GRAPHITE_PORT" ]; then
	GRAPHITE_PORT=2003
fi

sed -i "s/#GRAPHITE_PORT#/$GRAPHITE_PORT/" /statsd/config.js

if [ -z "$DEBUG" ]; then
	DEBUG="false"
fi

sed -i "s/#DEBUG#/$DEBUG/" /statsd/config.js

if [ -z "$DUMP_MESSAGES" ]; then
	DUMP_MESSAGES="false"
fi

sed -i "s/#DUMP_MESSAGES#/$DUMP_MESSAGES/" /statsd/config.js

node /statsd/stats.js /statsd/config.js
