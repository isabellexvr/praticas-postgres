CREATE TABLE customerAddresses(
    "id" SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "costumers"("id"),
    "street" VARCHAR(30) NOT NULL,
    "number" INTEGER NOT NULL,
    "complement" TEXT NOT NULL,
    "postalCode" INTEGER NOT NULL,
    "cityId" INTEGER NOT NULL REFERENCES "CITIES"("id"),
);

/* //corrigido */

CREATE TABLE "customerAddresses"(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "costumers"("id"),
    "street" TEXT NOT NULL,
    "number" TEXT NOT NULL,
    "complement" TEXT NOT NULL DEFAULT 'complement off',
    "postalCode" TEXT NOT NULL,
    "cityId" INTEGER NOT NULL REFERENCES "CITIES"("id"),
);