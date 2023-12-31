const expensesService = require("../services/expenses_services");

module.exports = {
  fetchExpensesByProjectId: async (req, res) => {
    try {
      const projectId = req.query.project_id;
      console.log(projectId);
      const expenses = await expensesService.getExpensesByProjectId(projectId);

      res.status(200).json({
        success: true,
        length: expenses.length,
        data: {
          expenses,
        },
      });
    } catch (error) {
      console.error(error);
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
  fetchAllExpenses: async (req, res) => {
    try {
      const expenses = await expensesService.getAllExpense();

      res.status(200).json({
        success: true,
        length: expenses.length,
        data: {
          expenses,
        },
      });
    } catch (error) {
      console.error(error);
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
};
