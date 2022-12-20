CREATE TYPE phoneType AS ENUM ('landline', 'mobile');

CREATE TABLE customerPhones(
    "id" SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "number" INTEGER NOT NULL,
    "type" phoneType
);