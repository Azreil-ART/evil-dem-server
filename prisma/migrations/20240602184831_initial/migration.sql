-- CreateTable
CREATE TABLE "Zayavka" (
    "id" SERIAL NOT NULL,
    "equipment" TEXT NOT NULL,
    "clientId" INTEGER NOT NULL,
    "description" TEXT NOT NULL,
    "issueType" TEXT NOT NULL,
    "executor" TEXT NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "Zayavka_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "fullName" TEXT NOT NULL,
    "role" TEXT NOT NULL,
    "organization" TEXT NOT NULL,
    "login" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_login_key" ON "User"("login");

-- AddForeignKey
ALTER TABLE "Zayavka" ADD CONSTRAINT "Zayavka_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
