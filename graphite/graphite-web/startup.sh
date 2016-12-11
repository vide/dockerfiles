#!/bin/sh

yes no | python /opt/graphite/webapp/graphite/manage.py syncdb
gunicorn --chdir /opt/graphite/webapp \
	-b 0.0.0.0:8080 \
	--access-logfile /dev/stdout \
	--error-logfile /dev/stderr \
	-w 3 \
	graphite_wsgi:application
