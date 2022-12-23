CREATE DATABASE "locadorDVDs";

CREATE DATABASE disks(
    id SERIAL NOT NULL PRIMARY KEY
    number TEXT NOT NULL UNIQUE,
    "barCode" TEXT NOT NULL UNIQUE,
    "movieId" INTEGER NOT NULL REFERENCES movies(id),
    "locationId" INTEGER NOT NULL REFERENCES location(id)
);

CREATE DATABASE actors(
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL,
    "countryOfOrigin" INTEGER NOT NULL REFERENCES countries(id),
    birthday DATE NOT NULL
);

CREATE DATABASE movies(
    id SERIAL NOT NULL PRIMARY KEY,
    title TEXT NOT NULL
    "categoryId" INTEGER NOT NULL REFERENCES categories(id)
);

CREATE DATABASE categories(
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE DATABASE locations(
    id SERIAL NOT NULL PRIMARY KEY,
    "dateOfLocation" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    "dateOfDeliver" TIMESTAMP WITHOUT TIME ZONE,
    "clientId" INTEGER NOT NULL REFERENCES clients(id)
);

CREATE DATABASE "movieActors"(
    id SERIAL NOT NULL PRIMARY KEY,
    "actorId" INTEGER NOT NULL REFERENCES actors(id),
    "movieId" INTEGER NOT NULL REFERENCES movies(id)
);

CREATE DATABASE countries(
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE DATABASE "satisfactionResearch"(
    id SERIAL NOT NULL PRIMARY KEY,
    "movieId" INTEGER NOT NULL REFERENCES movies(id),
    "movieAvaliation" SMALLINT NOT NULL,
    "attendanceAvaliation" SMALLINT NOT NULL
);

CREATE DATABASE clients(
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL,
    "diskId" INTEGER NOT NULL REFERENCES disks(id)
);

CREATE DATABASE "clientsTelephones"(
    id SERIAL NOT NULL PRIMARY KEY,
    "clientId" INTEGER NOT NULL REFERENCES clients(id),
    "telephoneId" INTEGER NOT NULL REFERENCES telephones(id)
);

CREATE DATABASE telephones(
    id SERIAL NOT NULL PRIMARY KEY,
    number VARCHAR(11) NOT NULL
);

CREATE DATABASE states(
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    "countryId" INTEGER NOT NULL REFERENCES countries(id)
);

CREATE DATABASE families(
    id SERIAL NOT NULL PRIMARY KEY,
    "familyName" TEXT NOT NULL UNIQUE,
    "clientId" INTEGER NOT NULL REFERENCES clients(id)

);

CREATE DATABASE addresses(
    id SERIAL NOT NULL PRIMARY KEY,
    street TEXT NOT NULL,
    number VARCHAR(10) NOT NULL,
    complement TEXT NOT NULL,
    neighborhood TEXT NOT NULL,
    cep VARCHAR(8) NOT NULL,
    "cityId" INTEGER NOT NULL REFERENCES cities(id)
);

CREATE DATABASE cities(
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    "stateId" INTEGER NOT NULL REFERENCES states(id)
);
