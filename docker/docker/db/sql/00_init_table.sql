BEGIN;

SET client_encoding='UTF8';

CREATE TABLE user_data (
    user_id integer primary key GENERATED ALWAYS AS IDENTITY,
    user_name text
);

CREATE TABLE acc_data (
    log_id integer primary key GENERATED ALWAYS AS IDENTITY,
    user_id integer NOT NULL,
    log_date date,
    log_time time,
    acc_x integer,
    acc_y integer,
    acc_z integer,
    gyr_x integer,
    gyr_y integer,
    gyr_z integer,
    FOREIGN KEY (user_id) REFERENCES user_data
);

COMMIT;
