require('dotenv').config();
const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  const currentDateTime = new Date().toJSON();
  res.json({ currentDateTime });
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
