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
const profileRoutes = require("./routes/profile_routes");
const usersRoutes = require("./routes/users_route");
const materialRoute = require("./routes/material_route");
const materialMasterRoute = require("./routes/material_master_route");
const outOfficeRoute = require("./routes/out_office_route");
const expensesRoute = require("./routes/expenses_route");
const taskRoute = require("./routes/tasks_routes");
app.use("/auth", authRoutes);
app.use("/engineers", engineersRoutes);
app.use("/project-managers", usersRoutes);
app.use("/projects", projectRoutes);
app.use("/profile", profileRoutes);
app.use("/expenses", expensesRoute);
app.use("/materials", materialRoute);
app.use("/out-office", outOfficeRoute);
app.use("/material-master", materialMasterRoute);
app.use("/tasks", taskRoute);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: "Internal Server Error" });
});

module.exports = app;
