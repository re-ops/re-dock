#!/bin/bash
set -e
export PGPASSWORD=$PSQL_PASSWORD;
createdb --encoding=UTF8 --locale=C --template=template0 --owner=synapse_user synapse
