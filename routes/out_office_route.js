const express = require("express");
const router = express.Router();
const outOfficeController = require("../controllers/out_office_controller");

router.get("/", outOfficeController.fetchAllOutOfficeEntries);

module.exports = router;
