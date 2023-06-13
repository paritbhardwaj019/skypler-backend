const express = require("express");
const router = express.Router();
const authController = require("../controllers/auth_controller");
const { upload } = require("../multerStorage");

// Route for creating a new user
router.post("/signup", upload.single("profileImage"), authController.signup);
router.post("/signin", authController.signin);

module.exports = router;
