// Load environment variables from .env file
require("dotenv").config();

const PORT = 6090;
const DB_DETAILS = {
  connectionLimit: 10,
  host: "containers-us-west-66.railway.app",
  user: "root",
  password: "FbZLTj4C6jsFBmqymF9P",
  database: "railway",
};
module.exports = {
  PORT: PORT,
  DB_DETAILS: DB_DETAILS,
};
