const express = require("express");
const router = express.Router();
const materialsController = require("../controllers/material_controller");

router.get("/:projectId", materialsController.getAllMaterials);
// Create a new material
router.post("/", materialsController.createMaterial);
// Update an existing material
router.put("/:materialId", materialsController.updateMaterial);
module.exports = router;
