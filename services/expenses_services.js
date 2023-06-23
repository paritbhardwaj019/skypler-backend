const connectionPool = require("./db_service");

module.exports = {
  getExpensesByProjectId: async (projectId) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const getQuery = "SELECT * FROM expenses WHERE project_id = ?";

        connection.query(getQuery, [projectId], (err, results) => {
          connection.release();

          if (err) {
            reject(err);
            return;
          }

          resolve(results);
        });
      });
    });
  },
  getAllExpense: async () => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const getQuery = "SELECT * FROM expenses";

        connection.query(getQuery, (err, results) => {
          connection.release();

          if (err) {
            reject(err);
            return;
          }

          resolve(results);
        });
      });
    });
  },
};
