-- *********************************************************************
-- DDL for the Apicurio Registry - Database: mssql
-- Upgrade Script from 100 to 101
-- *********************************************************************

UPDATE apicurio SET propValue = 101 WHERE propName = 'db_version';

CREATE TABLE outbox (id VARCHAR(128) NOT NULL, aggregatetype VARCHAR(255) NOT NULL, aggregateid VARCHAR(255) NOT NULL, type VARCHAR(255) NOT NULL, payload TEXT NOT NULL);
ALTER TABLE outbox ADD PRIMARY KEY (id);
