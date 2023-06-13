const express = require("express");
const app = express();

// Middleware for parsing request body
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Routes
const authRoutes = require("./routes/auth_route");
const engineersRoutes = require("./routes/engineers_route");
app.use("/auth", authRoutes);
app.use("/engineers", engineersRoutes);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: "Internal Server Error" });
});

module.exports = app;
