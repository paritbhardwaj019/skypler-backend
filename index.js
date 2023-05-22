const app = require("./app");
const config = require("./config/config");
const PORT = config.PORT;

// Start the server and listen on the defined port
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
