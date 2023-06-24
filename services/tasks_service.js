const connectionPool = require("./db_service");

module.exports = {
  createTask: (data) => {
    console.log(data);
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const createQuery =
          "INSERT INTO tasks (project_id,task, assigned_to,status) VALUES (?,?,?,?)";
        console.log(data.project_id, data.task, data.assigned_to, data.status);
        connection.query(
          createQuery,
          [data.project_id, data.task, data.assigned_to, data.status],
          (err, results) => {
            if (err) {
              console.log(err);
              reject(err);
              return;
            }
            console.log(results);

            resolve(results.insertId);
          }
        );
      });
    });
  },
  getTaskById: (id) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const getQuery = "SELECT * FROM tasks WHERE id = ?";

        connection.query(getQuery, [id], (err, results) => {
          if (err) {
            reject(err);
            return;
          }

          console.log(results);

          resolve(results[0]);
        });
      });
    });
  },
  updateTaskById: (data) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const updateQuery =
          "UPDATE tasks SET status = ?,assigned_to=? WHERE id = ?";

        connection.query(
          updateQuery,
          [data.status, data.assigned_to, data.id],
          (err, results) => {
            if (err) {
              reject(err);
              return;
            }

            console.log(results);

            resolve(results[0]);
          }
        );
      });
    });
  },
  getAllTasksByProjectId: (projectId) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const getQuery = "SELECT * FROM tasks WHERE Project_id = ?";

        connection.query(getQuery, [projectId], (err, results) => {
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
