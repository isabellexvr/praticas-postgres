CREATE TYPE "gradeType" AS ENUM ('Abaixo das expectativas', 'Dentro das Expectativas', 'Acima das Expectativas');

CREATE TABLE "studentProjectFlow"(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "studentId" INTEGER NOT NULL REFERENCES students(id),
    "projectId" INTEGER NOT NULL REFERENCES projects(id),
    "studentDeliveryDate" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "grade" "gradeType" NOT NULL
);