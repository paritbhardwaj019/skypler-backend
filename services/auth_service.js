const connectionPool = require("./db_service.js");

module.exports = {
  //get User by email
  findByEmail: async ({ email }) => {
    console.log(email);
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        console.log(err);
        if (err) throw err;

        const selectQuery = "SELECT * FROM users WHERE email = ?";
        console.log(email);

        connection.query(selectQuery, [email], (err, results) => {
          console.log(err);

          connection.release();
          if (err) {
            reject(err);
            return;
          }
          console.log("first");
          if (results.length === 0) {
            resolve(false); // email not found in table
          } else {
            resolve(results[0]); // return the first result
          }
        });
      });
    });
  },

  //signup:create User
  createUser: async ({
    name,
    email,
    hashedPassword,
    phone,
    roleId,
    profileImage,
  }) => {
    console.log("here in service");
    return new Promise((resolve, reject) => {
      connectionPool.getConnection((err, connection) => {
        console.log({
          name,
          email,
          hashedPassword,
          phone,
          roleId,
          profileImage,
        });
        if (err) throw err;
        const insertQuery =
          "INSERT INTO users (name, email,password, phone,roleId, profileImage) VALUES (?,? ,?,?, ?, ?)";

        connection.query(
          insertQuery,
          [name, email, hashedPassword, phone, roleId, profileImage],
          (err, results) => {
            connection.release();
            if (err) {
              reject(err);
              return;
            }
            resolve(results.insertId);
          }
        );
      });
    });
  },
};
