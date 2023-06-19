const connectionPool = require("./db_service.js");

module.exports = {
  addProject: ({ projectData }) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const insertQuery = "INSERT INTO projects SET ?";
        console.log(insertQuery, projectData);
        connection.query(insertQuery, projectData, (err, results) => {
          connection.release();

          if (err) {
            reject(err);
            return;
          }

          resolve(results.insertId);
        });
      });
    });
  },

  updateProjectById: ({ projectId, projectData }) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const updateQuery = "UPDATE projects SET ? WHERE project_id = ?";

        connection.query(
          updateQuery,
          [projectData, projectId],
          (err, results) => {
            connection.release();

            if (err) {
              reject(err);
              return;
            }

            resolve(results.affectedRows);
          }
        );
      });
    });
  },

  getAllProjects: () => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const selectQuery = "SELECT * FROM projects";
        connection.query(selectQuery, (err, results) => {
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

  getProjectStatsByType: () => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const getQuery =
          "SELECT project_type, COUNT(*) as count FROM projects GROUP BY project_type ";

        connection.query(getQuery, (err, results) => {
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
