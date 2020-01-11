CREATE TABLE users (
    id serial,
    username VARCHAR(64) NOT NULL UNIQUE,
    email VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(64) NOT NULL
);