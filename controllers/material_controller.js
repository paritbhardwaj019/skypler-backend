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
  updateMaterial: async (req, res) => {
    try {
      const { materialId } = req.params;
      const {
        project_id,
        material_type,
        supplier,
        quantity,
        unit,
        unit_price,
        total_price,
        stock_available,
        current_stock,
        notes,
      } = req.body;

      // Call the materials service to update the material
      const material = await materialsService.updateMaterial(materialId, {
        project_id,
        material_type,
        supplier,
        quantity,
        unit,
        unit_price,
        total_price,
        stock_available,
        current_stock,
        notes,
      });

      res.json(material);
    } catch (error) {
      res.status(500).json({ error: "Internal server error" });
    }
  },
  createMaterial: async (req, res) => {
    try {
      const {
        project_id,
        material_type,
        supplier,
        quantity,
        unit,
        unit_price,
        total_price,
        stock_available,
        current_stock,
        notes,
      } = req.body;
      console.log(req.body);
      // Call the materials service to create a new material
      const material = await materialsService.createMaterial({
        project_id,
        material_type,
        supplier,
        quantity,
        unit,
        unit_price,
        total_price,
        stock_available,
        current_stock,
        notes,
      });

      res.json(material);
    } catch (error) {
      res.status(500).json({ error: "Internal server error" });
    }
  },
};
