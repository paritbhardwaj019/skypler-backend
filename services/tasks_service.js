const connectionPool = require("./db_service");

module.exports = {
  createTask: (data) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) {
          reject(err);
          return;
        }

        const createQuery =
          "INSERT INTO tasks (task, assigned_to) VALUES (?,?)";

        connection.query(
          createQuery,
          [data.task, data.assigned_to],
          (err, results) => {
            if (err) {
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

        const updateQuery = "UPDATE tasks SET status = ? WHERE id = ?";

        connection.query(
          updateQuery,
          [data.status, data.id],
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
};
