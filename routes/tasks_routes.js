const express = require("express");
const { createTask, updateTask } = require("../controllers/tasks_controller");
const router = express.Router();

router.post("/", createTask);
router.patch("/", updateTask);

module.exports = router;
