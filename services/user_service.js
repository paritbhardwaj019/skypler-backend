const connectionPool = require("./db_service");

module.exports = {
  getAllUserByAccountType: async (roleId) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const getQuery = "SELECT * FROM users WHERE roleId = ?";

        connection.query(getQuery, [roleId], (err, results) => {
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
