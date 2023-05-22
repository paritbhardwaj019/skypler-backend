const express = require("express");
const router = express.Router();
const adminController = require("../controllers/admin_comtroller");

// Route for verifying admin by ID
router.put(
  "/admin-verification/:adminId",
  adminController.updateadminVerification
);

module.exports = router;
