CREATE TABLE photos(
    "id" SERIAL PRIMARY KEY,
    "productId" INTEGER NOT NULL REFERENCES "products"("id"),
    "photoUrl" TEXT NOT NULL,
    "label" TEXT NOT NULL DEFAULT "ordinary",
);

//para label, trocar para "principal", se for a foto principal