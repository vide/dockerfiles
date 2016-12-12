#!/bin/sh

if [ ! -z "$RELAY_HOSTS" ]; then
	sed -i "s#^DESTINATIONS =.*#DESTINATIONS = $RELAY_HOSTS#" /opt/graphite/conf/carbon.conf
	sed -i "s#^destinations =.*#destinations = $RELAY_HOSTS#" /opt/graphite/conf/relay-rules.conf
fi

if [ ! -z "$REPLICATION_FACTOR" ]; then
	sed -i "s#^REPLICATION_FACTOR =.*#REPLICATION_FACTOR = $REPLICATION_FACTOR#" /opt/graphite/conf/carbon.conf
fi

rm -f /opt/graphite/storage/carbon-relay-a.pid
/opt/graphite/bin/carbon-relay.py --nodaemon start
