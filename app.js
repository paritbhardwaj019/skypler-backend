const express = require("express");
const cors = require("cors");
const app = express();

// Middleware for parsing request body
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.json({ limit: "30mb", extended: true }));
app.use(express.urlencoded({ limit: "30mb", extended: true }));
app.use(cors());

// Routes
const projectRoutes = require("./routes/projects_routes");
const authRoutes = require("./routes/auth_route");
const engineersRoutes = require("./routes/engineers_route");
const usersRoutes = require("./routes/users_route");
app.use("/auth", authRoutes);
app.use("/engineers", engineersRoutes);
app.use("/project-managers", usersRoutes);
app.use("/projects", projectRoutes);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: "Internal Server Error" });
});

module.exports = app;
