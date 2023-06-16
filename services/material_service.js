const connectionPool = require("./db_service");

module.exports = {
  getAllMaterials: async (project_id) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const getQuery = "SELECT * FROM materials WHERE project_id = ?";

        connection.query(getQuery, [project_id], (err, results) => {
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
