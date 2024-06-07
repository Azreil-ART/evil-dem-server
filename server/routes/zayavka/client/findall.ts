import { PrismaClient, Zayavka } from "@prisma/client";

const prisma = new PrismaClient();

export default eventHandler(async (event) => {
  let result = {
    status: false,
    data: {},
  };
  result.data = await prisma.zayavka.findMany();
  result.status = true;

  return result;
});
