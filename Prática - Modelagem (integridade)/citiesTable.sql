CREATE TABLE cities(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(20) NOT NULL,
    "stateId" INTEGER NOT NULL REFERENCES "states"("id"),
);