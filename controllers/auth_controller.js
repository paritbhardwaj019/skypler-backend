//custom modules
const authService = require("../services/auth_service");

//modules import
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

module.exports = {
  //user signup
  signup: async (req, res, next) => {
    try {
      const { name, email, password, phone, roleId } = req.body;
      //check if email exists in users

      const oldUser = await authService.findByEmail({ email });
      console.log(oldUser);
      if (oldUser)
        return res
          .status(400)
          .json({ success: false, message: "User already exists" });

      //password
      const hashedPassword = await bcrypt.hash(password, 12);
      console.log("hashedPAssword", hashedPassword);
      // Call the service to create a new user
      const newUser = await authService.createUser({
        name,
        email,
        hashedPassword,
        phone,
        roleId,
      });

      res.status(201).json({ data: { userId: newUser }, success: true });
    } catch (error) {
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },

  //user signin
  signin: async (req, res, next) => {
    try {
      const { email, password } = req.body;

      // Check if email exists in user_table
      const user = await authService.findByEmail({ email });

      if (!user) {
        return res.status(401).json({
          success: false,
          message: "Invalid email or you are a new user",
        });
      }

      // Compare hashed password with password entered by the user
      const isMatch = await bcrypt.compare(password, user.password);

      if (!isMatch) {
        return res
          .status(401)
          .json({ success: false, message: "Password is incorrect." });
      }

      // Generate JWT token
      // const token = jwt.sign(
      //   { id: user.id, email: user.email },
      //   process.env.JWT_SECRET,
      //   { expiresIn: "1h" }
      // );

      res.status(200).json({ data: user, success: true });
    } catch (error) {
      if (error == "") console.log("Error: ", error.sqlMessage);
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
};
