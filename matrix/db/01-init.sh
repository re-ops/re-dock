#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
createdb --encoding=UTF8 --locale=C --template=template0 --owner=synapse_user synapse
