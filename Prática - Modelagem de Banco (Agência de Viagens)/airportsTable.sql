CREATE TABLE airports(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "acronym" TEXT NOT NULL UNIQUE,
    "fullName" TEXT NOT NULL UNIQUE
);

/* corrigido */

CREATE TABLE airports(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "acronym" VARCHAR(8) NOT NULL UNIQUE,
    "fullName" TEXT NOT NULL UNIQUE
);