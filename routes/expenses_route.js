const express = require("express");
const router = express.Router();
const expensesController = require("../controllers/expenses_controller");

router.get("/", expensesController.fetchExpensesByProjectId);

module.exports = router;
