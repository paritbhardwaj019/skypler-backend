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
            if (err) {
              reject(err);
              return;
            }
            connection.query(
              "SELECT * FROM users WHERE id = ?",
              userID,
              (err, results) => {
                if (err) {
                  reject(err);
                  return;
                }

                if (results.length === 0) {
                  res.status(404).json({ error: "User not found" });
                  return;
                }

                const updatedUser = results[0];
                resolve(updatedUser);
              }
            );
          }
        );
      });
    });
  },
};
