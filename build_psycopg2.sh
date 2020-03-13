#!/bin/bash

POSTGRESQL_DIR=`pwd`/postgresql-${POSTGRESQL_VERSION}
PSYCOPG2_DIR=psycopg2-${PSYCOPG2_VERSION}
cd ${PSYCOPG2_DIR}


echo $POSTGRESQL_DIR

sed -i \
 -e "s/^static_libpq.*/static_libpq = 1/" \
 -e "s,^pg_config.*,pg_config = $POSTGRESQL_DIR/bin/pg_config," \
 -e "s/^libraries.*/libraries = ssl crypto/" \
 setup.cfg

python setup.py bdist_wheel

