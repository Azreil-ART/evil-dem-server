import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default eventHandler(async (event) => {
  const body = await readBody(event);
  console.log(body);
  const user_obj = body;
  let result = {
    status: false,
    data: {},
  };
  try {
    result.data = await prisma.user.create({
      data: user_obj,
    });
    result.status = true;
  } catch (error) {
    result.data = error;
  }
  return result;
});
