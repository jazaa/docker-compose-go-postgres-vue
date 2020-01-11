#!/bin/sh
set -e

psql -e -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-END
	\timing
	CREATE USER go_dba WITH PASSWORD 'go';
	CREATE DATABASE go_db OWNER go_dba;
	GRANT ALL PRIVILEGES ON DATABASE go_db TO go_dba;
	CREATE EXTENSION tablefunc;
END

export PGUSER=go_dba
export PGPASSWORD=go_pass
psql -d go_db < migrations.sql