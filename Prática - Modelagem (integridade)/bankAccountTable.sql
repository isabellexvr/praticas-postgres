CREATE TABLE bankAccount(
    "id" SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "accountNumber" INTEGER UNIQUE NOT NULL,
    "agency" SMALLINT NOT NULL,
    "openDate" DATE NOT NULL,
    "closeDate" DATE NOT NULL DEFAULT NULL
);