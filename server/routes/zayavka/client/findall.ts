import { PrismaClient, Zayavka } from "@prisma/client";

const prisma = new PrismaClient();

export default eventHandler(async (event) => {
  const body = await readBody(event);
  if (!body?.id) {
    return {
      status: true,
      data: {},
    };
  }
  let result = {
    status: false,
    data: {},
  };
  result.data = await prisma.zayavka.findMany({
    where: {
      clientId: body.id,
    },
  });
  result.status = true;

  return result;
});
