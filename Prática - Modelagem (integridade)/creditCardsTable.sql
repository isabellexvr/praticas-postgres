CREATE TABLE creditCards (
    "id" SERIAL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    "name" VARCHAR(20) NOT NULL,
    "number" INTEGER NOT NULL,
    "securityCode" VARCHAR(8) NOT NULL,
    "expirationMonth" SMALLINT NOT NULL,
    "expirationYear" SMALLINT NOT NULL,
    "password" VARCHAR(12) NOT NULL,
    "limit" INTEGER NOT NULL,
)