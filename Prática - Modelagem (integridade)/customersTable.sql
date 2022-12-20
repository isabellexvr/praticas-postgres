CREATE TABLE customers(
    "id" SERIAL PRIMARY KEY,
    "fullName" VARCHAR(50) NOT NULL,
    "cpf" VARCHAR(14) NOT NULL,
    "email" VARCHAR(40) NOT NULL,
    "password" VARCHAR(12) NOT NULL
);