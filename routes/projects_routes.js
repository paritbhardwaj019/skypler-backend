const express = require("express");
const projectController = require("../controllers/projects_controller");

const router = express.Router();

router.post("/create", projectController.addProject);
router.put("/update/:projectId", projectController.updateProjectById);
router.get("/get", projectController.getAllProjects);
router.get("/stats", projectController.getBarChartData);

module.exports = router;
