const express = require("express");
const router = express.Router();
const materialsController = require("../controllers/material_controller");

router.get("/materials/:project_id", materialsController.getAllMaterials);

module.exports = router;
