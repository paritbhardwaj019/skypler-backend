const engineerService = require("../services/engineer_service");

module.exports = {
  fetchAllEngineer: async (req, res) => {
    try {
      const engineers = await engineerService.getAllUserByAccountType(3);

      res.status(200).json({
        success: true,
        length: engineers.length,
        data: {
          engineers,
        },
      });
    } catch (error) {
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
};
