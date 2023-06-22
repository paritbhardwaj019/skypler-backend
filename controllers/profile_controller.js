const profileService = require("../services/profile_service");
const cloudinary = require("cloudinary").v2;
const fs = require("fs");

async function updateProfile(req, res) {
  try {
    const userID = req.headers["authorization"].toString().split(" ")[1];
    const { secure_url } = await cloudinary.uploader.upload(req.file.path);
    fs.unlinkSync(req.file.path);

    const data = {
      name: req.body.name,
      profileImage: secure_url,
      roleId: req.body.roleId,
    };

    const user = await profileService.updateProfile(data, userID);

    res.status(200).json({
      message: "Profile Updated",
      data: {
        user,
      },
    });
  } catch (error) {
    res.status(500).json({ message: "Internal Server Error", success: false });
  }
}

module.exports = { updateProfile };
