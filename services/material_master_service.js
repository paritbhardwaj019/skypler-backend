const connectionPool = require("./db_service");

module.exports = {
  createMaterial: async (material_name) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const insertQuery =
          "INSERT INTO material_master (material_name) VALUES (?)";

        connection.query(insertQuery, [material_name], (err, results) => {
          connection.release();

          if (err) {
            reject(err);
            return;
          }

          const newMaterial = {
            id: results.insertId,
            material_name,
          };

          resolve(newMaterial);
        });
      });
    });
  },
  getAllMaterials: async () => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const getQuery = "SELECT * FROM material_master";

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
  getMaterialById: async (id) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const getQuery = "SELECT * FROM material_master WHERE id = ?";

        connection.query(getQuery, [id], (err, results) => {
          connection.release();

          if (err) {
            reject(err);
            return;
          }

          if (results.length === 0) {
            resolve(null);
            return;
          }

          const material = results[0];
          resolve(material);
        });
      });
    });
  },
  updateMaterial: async (id, material_name) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const updateQuery =
          "UPDATE material_master SET material_name = ? WHERE id = ?";

        connection.query(updateQuery, [material_name, id], (err, results) => {
          connection.release();

          if (err) {
            reject(err);
            return;
          }

          if (results.affectedRows === 0) {
            resolve(null);
            return;
          }

          const updatedMaterial = {
            id: Number(id),
            material_name,
          };

          resolve(updatedMaterial);
        });
      });
    });
  },
  deleteMaterial: async (id) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const deleteQuery = "DELETE FROM material_master WHERE id = ?";

        connection.query(deleteQuery, [id], (err, results) => {
          connection.release();

          if (err) {
            reject(err);
            return;
          }

          if (results.affectedRows === 0) {
            resolve(null);
            return;
          }

          const deletedMaterial = {
            id: Number(id),
          };

          resolve(deletedMaterial);
        });
      });
    });
  },
};
