-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userName" TEXT,
    "name" TEXT,
    "password" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "SightMark" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "distance" INTEGER,
    "sightHight" INTEGER,
    "arrowTypeId" INTEGER NOT NULL,
    "userId" INTEGER NOT NULL,
    CONSTRAINT "SightMark_arrowTypeId_fkey" FOREIGN KEY ("arrowTypeId") REFERENCES "ArrowType" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "SightMark_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "ArrowType" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "weight" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User_userName_key" ON "User"("userName");
