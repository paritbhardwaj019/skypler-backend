// Load environment variables from .env file
require("dotenv").config();

const PORT = process.env.PORT || 3000;
const DB_DETAILS = {
  connectionLimit: 10,
  host: process.env.MYSQL_DB_HOSTNAME,
  user: process.env.MYSQL_DB_USERNAME,
  password: process.env.MYSQL_DB_PASSWORD,
  database: process.env.MYSQL_DB_SCHEMA,
};

module.exports = {
  PORT: PORT,
  DB_DETAILS: DB_DETAILS,
};
