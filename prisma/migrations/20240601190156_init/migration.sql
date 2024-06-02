-- CreateTable
CREATE TABLE "Zayavka" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "equipment" TEXT NOT NULL,
    "clientId" INTEGER NOT NULL,
    "description" TEXT NOT NULL,
    "issueType" TEXT NOT NULL,
    "executor" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    CONSTRAINT "Zayavka_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "fullName" TEXT NOT NULL,
    "role" TEXT NOT NULL,
    "organization" TEXT NOT NULL,
    "login" TEXT NOT NULL,
    "password" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User_login_key" ON "User"("login");
