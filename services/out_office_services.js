const connectionPool = require("./db_service");

module.exports = {
  getAllOutOfficeEntries: async () => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const getQuery = "SELECT * FROM out_office";

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
