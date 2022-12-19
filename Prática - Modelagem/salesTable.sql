CREATE TABLE sales(
    "id" SERIAL PRIMARY KEY,
    "userId" INTEGER NOT NULL REFERENCES "users"("id"),
    "productIdINTEGER" INTEGER NOT NULL REFERENCES "products"("id"),
    "state" TEXT NOT NULL DEFAULT "criada",
    "dateOfSaling" TIMESTAMP NOT NULL DEFAULT NOW(),
    "deliveryAddress" TEXT NOT NULL
);