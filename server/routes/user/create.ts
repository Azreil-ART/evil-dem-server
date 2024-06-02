export default eventHandler(async (event) => {
  const body = await readBody(event);
  return "Start by editing sda<code>server/routes/index.ts</code>.";
});
