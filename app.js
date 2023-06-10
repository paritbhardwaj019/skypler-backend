const express = require("express");
const cors = require("cors");

// Middleware for parsing request body
const app = express();
app.use(express.json({ limit: "30mb", extended: true }));
app.use(express.urlencoded({ limit: "30mb", extended: true }));
app.use(cors());

// Routes
const authRoutes = require("./routes/auth_route");
const projectRoutes = require("./routes/projects_routes");
app.use("/auth", authRoutes);
app.use("/projects", projectRoutes);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: "Internal Server Error" });
});

module.exports = app;
