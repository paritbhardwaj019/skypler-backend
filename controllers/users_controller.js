const userService = require("../services/user_service");

module.exports = {
  fetchAllProjectManagers: async (req, res) => {
    try {
      const projectManagers = await userService.getAllUserByAccountType(4);

      res.status(200).json({
        success: true,
        length: projectManagers.length,
        data: {
          projectManagers,
        },
      });
    } catch (error) {
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
};
