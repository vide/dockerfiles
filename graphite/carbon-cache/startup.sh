#!/bin/sh
# remove stale pidfiles
rm -f /opt/graphite/storage/carbon-cache-a.pid
/opt/graphite/bin/carbon-cache.py --nodaemon start
