const connectionPool = require("./db_service");

module.exports = {
  updateProfile: async (data, userID) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;
        const updateQuery =
          "UPDATE users SET name = ?, roleId = ?, profileImage = ? WHERE id = ?";
        connection.query(
          updateQuery,
          [data.name, data.roleId, data.profileImage, userID],
          (err, results) => {
            connection.release();
            if (err) {
              reject(err);
              return;
            }
          }
        );
      });
    });
  },
};
