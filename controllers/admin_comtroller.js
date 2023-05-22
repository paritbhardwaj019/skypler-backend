//custom modules
const adminService = require("../services/admin_service");

//modules import
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

module.exports = {
  //verify admin
  updateadminVerification: async (req, res, next) => {
    try {
      const adminId = req.params.adminId;

      // Update admin's isVerified field to 1
      const result = await adminService.updateVerificationStatus({
        adminId,
      });

      if (result) {
        return res.status(200).json({
          message: "admin verification status updated successfully",
        });
      } else {
        return res.status(404).json({ message: "admin not found" });
      }
    } catch (error) {
      console.log("Error: ", error.message);
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
};
