const express = require("express");
const router = express.Router();
const { upload } = require("../multerStorage");
const { updateProfile } = require("../controllers/profile_controller");

router.put("/update", upload.single("profileImage"), updateProfile);

module.exports = router;
