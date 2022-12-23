CREATE TABLE companies(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "acronym" TEXT NOT NULL UNIQUE,
    "fullName" TEXT NOT NULL UNIQUE
);

/* corrigido */

CREATE TABLE companies(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "acronym" VARCHAR(3) NOT NULL UNIQUE,
    "fullName" TEXT NOT NULL
);