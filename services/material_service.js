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
  updateMaterial: async (materialId, materialData) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const updateQuery =
          "UPDATE materials SET project_id = ?, material_type = ?, supplier = ?, quantity = ?, unit = ?, unit_price = ?, total_price = ?, stock_available = ?, current_stock = ?, notes = ? WHERE material_id = ?";

        const {
          project_id,
          material_type,
          supplier,
          quantity,
          unit,
          unit_price,
          total_price,
          stock_available,
          current_stock,
          notes,
        } = materialData;

        connection.query(
          updateQuery,
          [
            project_id,
            material_type,
            supplier,
            quantity,
            unit,
            unit_price,
            total_price,
            stock_available,
            current_stock,
            notes,
            materialId,
          ],
          (err, results) => {
            connection.release();

            if (err) {
              reject(err);
              return;
            }

            resolve(results);
          }
        );
      });
    });
  },
  createMaterial: async (materialData) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const insertQuery =
          "INSERT INTO materials (project_id, material_type, supplier, quantity, unit, unit_price, total_price, stock_available, current_stock, notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        const {
          project_id,
          material_type,
          supplier,
          quantity,
          unit,
          unit_price,
          total_price,
          stock_available,
          current_stock,
          notes,
        } = materialData;

        connection.query(
          insertQuery,
          [
            project_id,
            material_type,
            supplier,
            quantity,
            unit,
            unit_price,
            total_price,
            stock_available,
            current_stock,
            notes,
          ],
          (err, results) => {
            connection.release();

            if (err) {
              console.log(err);
              reject(err);
              return;
            }

            resolve(results);
          }
        );
      });
    });
  },
};
