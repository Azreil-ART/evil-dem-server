import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default eventHandler(async (event) => {
  let result = {
    status: false,
    data: {},
  };
  try {
    result.data = await prisma.user.findMany();

    result.status = true;
  } catch (error) {
    result.data = error;
  }
  return result;
});
