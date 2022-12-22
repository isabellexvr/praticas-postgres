CREATE TABLE cities(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(20) NOT NULL,
    "stateId" INTEGER NOT NULL REFERENCES "states"("id"),
);

/* //corrigido */

CREATE TABLE cities(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "stateId" INTEGER NOT NULL REFERENCES states(id),
);

/*
back-end impede de entrar nome zuado de cidade


 */