const connectionPool = require("./db_service");

module.exports = {
  //verify admin
  updateVerificationStatus: async ({ adminId }) => {
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        if (err) throw err;

        const updateQuery =
          "UPDATE admins_table SET verificationStatus = 'verified' WHERE adminId = ?";
        connection.query(updateQuery, [adminId], (err, results) => {
          connection.release();
          if (err) {
            reject(err);
            return;
          }

          if (results.affectedRows === 0) {
            resolve(false); // admin not found
          } else {
            resolve(true); // admin verification status updated successfully
          }
        });
      });
    });
  },
};
