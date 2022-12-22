CREATE TABLE bankAccount(
    "id" SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "accountNumber" INTEGER UNIQUE NOT NULL,
    "agency" SMALLINT NOT NULL,
    "openDate" DATE NOT NULL,
    "closeDate" DATE NOT NULL DEFAULT NULL
);

/* corrigido */

CREATE TABLE "bankAccount"(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "customerId" INTEGER NOT NULL UNIQUE REFERENCES "customers"("id"),
    "accountNumber" TEXT UNIQUE NOT NULL,
    "agency" TEXT NOT NULL,
    "openDate" DATE NOT NULL DEFAULT NOW(),
    "closeDate" DATE NOT NULL DEFAULT 'not endend'
);