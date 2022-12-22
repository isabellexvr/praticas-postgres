CREATE TYPE transactionType AS ENUM ('deposit', 'withdraw');

CREATE TABLE transactions(
    "id" SERIAL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    "amount" INTEGER NOT NULL,
    "type" transactionType,
    "time" TIMESTAMP NOT NULL DEFAULT CURRENT_DATE,
    "description" TEXT NOT NULL,
    "cancelled" BOOLEAN NOT NULL DEFAULT FALSE
)

/* corrigido */

CREATE TABLE transactions(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    "amount" INTEGER NOT NULL,
    "type" transactionType,
    "time" TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    "description" TEXT NOT NULL,
    "cancelled" BOOLEAN NOT NULL DEFAULT FALSE
)