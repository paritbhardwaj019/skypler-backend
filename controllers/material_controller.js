const materialsService = require("../services/material_service");

module.exports = {
  getAllMaterials: async (req, res) => {
    try {
      const { project_id } = req.params;
      const materials = await materialsService.getAllMaterials(project_id);
      res.json(materials);
    } catch (error) {
      res.status(500).json({ error: "Internal server error" });
    }
  },
};
