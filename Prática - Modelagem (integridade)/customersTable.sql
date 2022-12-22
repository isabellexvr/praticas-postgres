CREATE TABLE customers(
    "id" SERIAL PRIMARY KEY,
    "fullName" VARCHAR(50) NOT NULL,
    "cpf" VARCHAR(14) NOT NULL,
    "email" VARCHAR(40) NOT NULL,
    "password" VARCHAR(12) NOT NULL
);

/* // corrigido: */

CREATE TABLE customers(
    id SERIAL NOT NULL PRIMARY KEY,
    "fullName" TEXT NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    email TEXT NOT NULL,
    password TEXT NOT NULL
);

/* //password text pq será criptografado */