CREATE TABLE classes(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "code" TEXT NOT NULL UNIQUE
);