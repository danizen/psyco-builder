#!/bin/bash

POSTGRESQL_FILE=postgresql-${POSTGRESQL_VERSION}.tar.bz2
PSYCOPG2_FILE=psycopg2-${PSYCOPG2_VERSION}.tar.gz
PSYCOPG2_UNDER=${PSYCOPG2_VERSION/\./_}

echo "Downloading ${POSTGRESQL_FILE}"
curl -L -O https://ftp.postgresql.org/pub/source/v11.7/${POSTGRESQL_FILE}
tar xvf ${POSTGRESQL_FILE}

echo "Downloading ${PSYCOPG2_FILE}"
pip download --no-binary :all: psycopg2==${PSYCOPG2_VERSION}
tar xvf ${PSYCOPG2_FILE}
