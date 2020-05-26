BEGIN;

SET client_encoding = 'UTF8';

CREATE DATABASE datapool;

CREATE TABLE acc_data (
    id serial NOT NULL,
    user integer NOT NULL,
    logdate date,
    logtime time,
    acc_x integer,
    acc_y integer,
    acc_z integer,
    gyr_x integer,
    gyr_y integer,
    gyr_z integer,
    PRIMARY KEY(id),
    UNIQUE(id)
);

COMMIT;