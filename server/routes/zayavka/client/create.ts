import { PrismaClient, Zayavka } from "@prisma/client";

const prisma = new PrismaClient();

export default eventHandler(async (event) => {
  const body: Zayavka = await readBody(event);
  const zayavkaObj = {
    equipment: body.equipment,
    clientId: body.clientId,
    description: body.description,
    issueType: body.issueType,
    status: 'В ожидании',
    createdAt: new Date()
  };

  let result = {
    status: false,
    data: {},
  };
  try {
    result.data = await prisma.zayavka.create({
      data: zayavkaObj,
    });
    result.status = true;
  } catch (error) {
    console.error("Error creating zayavka: ", error);
    result.data = error;
  }
  return result;
});
