CREATE TABLE products(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(30) NOT NULL,
    "price" INTEGER NOT NULL,
    "photoId" INTEGER NOT NULL REFERENCES "photos"("id"),
    "principalPhotoId" INTEGER NOT NULL REFERENCES "photos"("id"),
    "categoryId" INTEGER NOT NULL REFERENCES "categories"("id"),
    "sizeId" INTEGER NOT NULL REFERENCES "sizes"("id"),
);