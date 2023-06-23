const express = require("express");
const router = express.Router();
const expensesController = require("../controllers/expenses_controller");

router.get("/", expensesController.fetchExpensesByProjectId);
router.get("/all", expensesController.fetchAllExpenses);

module.exports = router;
