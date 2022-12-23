CREATE TABLE "students" (
	"id" serial NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL,
	"cpf" varchar(11) NOT NULL UNIQUE,
	"email" TEXT NOT NULL UNIQUE
);

CREATE TABLE "classes" (
	"id" serial NOT NULL PRIMARY KEY,
	"code" TEXT NOT NULL
);

CREATE TABLE "grades" (
	"id" serial NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL
);

CREATE TABLE "modules" (
	"id" serial NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL
);

CREATE TABLE "projects" (
	"id" serial NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL,
	"moduleId" integer NOT NULL REFERENCES "modules"("id")
);

CREATE TABLE "classesStudents" (
	"id" serial NOT NULL PRIMARY KEY,
	"studentId" integer NOT NULL REFERENCES "students"("id"),
	"classId" integer NOT NULL REFERENCES "classes"("id"),
	"startDate" DATE NOT NULL,
	"endDate" DATE
);

CREATE TABLE "projectsStudents" (
	"id" serial NOT NULL PRIMARY KEY,
	"studentId" integer NOT NULL REFERENCES "students"("id"),
	"projectId" integer NOT NULL REFERENCES "projects"("id"),
	"date" DATE NOT NULL,
	"gradeId" integer NOT NULL REFERENCES "grades"("id")
);