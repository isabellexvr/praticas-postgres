CREATE TABLE "studentClassFlow"(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "studentId" INTEGER NOT NULL REFERENCES students(id),
    "classId" INTEGER NOT NULL REFERENCES classes(id),
    "entryDate" DATE NOT NULL DEFAULT NOW(),
    "derpatureDate" DATE NOT NULL DEFAULT NULL
);