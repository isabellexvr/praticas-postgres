CREATE TABLE states(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(20) NOT NULL
);

/* //corrigido */

CREATE TABLE states(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE
);
