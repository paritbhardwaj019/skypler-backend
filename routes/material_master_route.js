const express = require("express");
const router = express.Router();
const materialController = require("../controllers/material_master_controller");

// Create a new material
router.post("/post", materialController.createMaterial);

// Get all materials
router.get("/get", materialController.getAllMaterials);

// Get a material by ID
router.get("/:id", materialController.getMaterialById);

// Update a material
router.put("/:id", materialController.updateMaterial);

// Delete a material
router.delete("/:id", materialController.deleteMaterial);

module.exports = router;
