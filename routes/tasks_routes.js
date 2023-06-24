const express = require("express");
const {
  createTask,
  updateTask,
  getTasksByProjectId,
} = require("../controllers/tasks_controller");
const router = express.Router();

router.post("/", createTask);
router.patch("/", updateTask);
router.get("/:projectId", getTasksByProjectId);

module.exports = router;
