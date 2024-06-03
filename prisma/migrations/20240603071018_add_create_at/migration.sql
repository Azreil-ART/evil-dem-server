/*
  Warnings:

  - Added the required column `createdAt` to the `Zayavka` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Zayavka" ADD COLUMN     "createdAt" TIMESTAMPTZ(6) NOT NULL;
