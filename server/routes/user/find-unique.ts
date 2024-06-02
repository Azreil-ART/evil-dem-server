import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default eventHandler(async (event) => {
  const body = await readBody(event);
  const user = await prisma.user.findUnique({
    where: {
      login: body.login,
    },
  });
  return user;
});
