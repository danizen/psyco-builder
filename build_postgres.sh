#!/bin/bash -ex

POSTGRESQL_DIR=postgresql-${POSTGRESQL_VERSION}

echo "Building ${POSTGRESQL_DIR}"
cd ${POSTGREQSL_DIR}
./configure --prefix `pwd` --without-readline --without-zlib --with-openssl
make
make install
ls
