const express = require("express");
const app = express();

// Middleware for parsing request body
app.use(express.json());

// Routes
const authRoutes = require("./routes/auth_route");
app.use("/auth", authRoutes);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: "Internal Server Error" });
});

module.exports = app;
