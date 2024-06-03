/*
  Warnings:

  - You are about to drop the column `executor` on the `Zayavka` table. All the data in the column will be lost.
  - Added the required column `executorId` to the `Zayavka` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Zayavka" DROP COLUMN "executor",
ADD COLUMN     "executorId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Zayavka" ADD CONSTRAINT "Zayavka_executorId_fkey" FOREIGN KEY ("executorId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
