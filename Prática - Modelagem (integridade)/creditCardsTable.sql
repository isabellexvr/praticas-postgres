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
);

/* corrigido */

CREATE TABLE "creditCards" (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    "name" TEXT NOT NULL,
    "number" INTEGER NOT NULL UNIQUE,
    "securityCode" TEXT NOT NULL,
    "expirationMonth" INTEGER NOT NULL,
    "expirationYear" INTEGER NOT NULL,
    "password" TEXT NOT NULL,
    "limit" INTEGER,
);

/* pode querer saber quantos meses/anos faltam para expirar

nome pode ser customizado, então não precisa ser o fullname da outra tabela */