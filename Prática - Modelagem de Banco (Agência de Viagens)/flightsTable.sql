CREATE TABLE flights(
    "id" SERIAL NOT NULL PRIMARY KEY,
    "acronym" TEXT NOT NULL,
    "derpatureTime" TIMESTAMP WITH TIME ZONE NOT NULL,
    "arrivalTime" TIMESTAMP WITH TIME ZONE NOT NULL,
    "companyId" INTEGER NOT NULL REFERENCES companies(id),
    "derpatureAirport" INTEGER NOT NULL REFERENCES airports(id),
    "arrivalAirport" INTEGER NOT NULL REFERENCES airports(id)
);