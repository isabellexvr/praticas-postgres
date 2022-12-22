CREATE TYPE "phoneType" AS ENUM ('landline', 'mobile');

CREATE TABLE customerPhones(
    "id" SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "number" INTEGER NOT NULL,
    "type" phoneType
);


/* //usar number type somente quando precisar fazer contas com ele, então number não precisa ser integer */

CREATE TABLE "customerPhones"(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES customers(id),
    "number" TEXT NOT NULL,
    "type" phoneType NOT NULL
);

/* //criação de um tipo -> criou-se o tipo phoneType
//ENUM(1,3); ENUM(true,false) */