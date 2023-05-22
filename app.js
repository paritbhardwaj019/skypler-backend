const express = require("express");
const app = express();

// Middleware for parsing request body
app.use(express.json());

// Routes
const adminRoutes = require("./routes/admin_routes");
const adminRoutes = require("./routes/admin_routes");

app.use("/admin", adminRoutes);
app.use("/email", mailRoutes);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: "Internal Server Error" });
});

module.exports = app;
