#!/bin/sh
set -e
GRAPHITE_DIR=/opt/graphite/webapp/graphite

# setup default sqlite DB
yes no | python $GRAPHITE_DIR/manage.py syncdb

# just do it
python $GRAPHITE_DIR/manage.py createsuperuser --noinput --username=admin --email=admin@local.host 2> /dev/null || true

sh /opt/graphite/bin/build-index.sh

# avoid inserting the "default_profile" from multiple workers on first startup (instead insert once before from a single
# process).
PYTHONPATH=/opt/graphite/webapp DJANGO_SETTINGS_MODULE=graphite.settings python -c 'import graphite.util'


# set appserver
gunicorn --chdir /opt/graphite/webapp \
	-b 0.0.0.0:8080 \
	--access-logfile /dev/stdout \
	--error-logfile /dev/stderr \
	-w 3 \
	graphite_wsgi:application
