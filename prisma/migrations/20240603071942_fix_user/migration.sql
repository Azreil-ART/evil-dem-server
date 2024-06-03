-- DropForeignKey
ALTER TABLE "Zayavka" DROP CONSTRAINT "Zayavka_executorId_fkey";

-- AlterTable
ALTER TABLE "Zayavka" ALTER COLUMN "executorId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Zayavka" ADD CONSTRAINT "Zayavka_executorId_fkey" FOREIGN KEY ("executorId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
