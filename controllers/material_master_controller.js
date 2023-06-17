const materialService = require("../services/material_master_service");

module.exports = {
  createMaterial: async (req, res) => {
    try {
      const { material_name } = req.body;
      const newMaterial = await materialService.createMaterial(material_name);

      res.status(201).json({
        success: true,
        data: newMaterial,
      });
    } catch (error) {
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
  getAllMaterials: async (req, res) => {
    try {
      const materials = await materialService.getAllMaterials();

      res.status(200).json({
        success: true,
        length: materials.length,
        data: {
          materials,
        },
      });
    } catch (error) {
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
  getMaterialById: async (req, res) => {
    try {
      const { id } = req.params;
      const material = await materialService.getMaterialById(id);

      if (!material) {
        res.status(404).json({
          success: false,
          message: "Material not found",
        });
        return;
      }

      res.status(200).json({
        success: true,
        data: material,
      });
    } catch (error) {
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
  updateMaterial: async (req, res) => {
    try {
      const { id } = req.params;
      const { material_name } = req.body;

      const updatedMaterial = await materialService.updateMaterial(
        id,
        material_name
      );

      if (!updatedMaterial) {
        res.status(404).json({
          success: false,
          message: "Material not found",
        });
        return;
      }

      res.status(200).json({
        success: true,
        data: updatedMaterial,
      });
    } catch (error) {
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
  deleteMaterial: async (req, res) => {
    try {
      const { id } = req.params;
      const deletedMaterial = await materialService.deleteMaterial(id);

      if (!deletedMaterial) {
        res.status(404).json({
          success: false,
          message: "Material not found",
        });
        return;
      }

      res.status(200).json({
        success: true,
        data: deletedMaterial,
      });
    } catch (error) {
      res
        .status(500)
        .json({ message: "Internal Server Error", success: false });
    }
  },
};
