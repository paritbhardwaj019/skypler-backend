const materialsService = require("../services/material_service");

module.exports = {
  getAllMaterials: async (req, res) => {
    try {
      const { projectId } = req.params;

      const materials = await materialsService.getAllMaterials(projectId);
      res.json(materials);
    } catch (error) {
      res.status(500).json({ error: "Internal server error" });
    }
  },
};
