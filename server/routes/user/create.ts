import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default eventHandler(async (event) => {
  const body = await readBody(event);
  console.log(body);
  const user = await prisma.user.create({
    data: JSON.parse(body),
  });
  return user;
});
