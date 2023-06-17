const outOfficeService = require("../services/out_office_services");

module.exports = {
  fetchAllOutOfficeEntries: async (req, res) => {
    try {
      const entries = await outOfficeService.getAllOutOfficeEntries();

      res.status(200).json({
        success: true,
        length: entries.length,
        data: {
          entries,
        },
      });
    } catch (error) {
      console.error(error);
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
};
