const express = require("express");
const router = express.Router();
const engineersController = require("../controllers/engineers_controller");

router.get("/", engineersController.fetchAllEngineer);

module.exports = router;
