CREATE TABLE users(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(10) NOT NULL,
    "email" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
);