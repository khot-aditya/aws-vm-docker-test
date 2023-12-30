// Install required packages:
// npm init -y
// npm install express

// Import necessary modules
const express = require('express');
const app = express();
const port = 3000; // You can change this port

// Define a simple route
app.get('/api', (req, res) => {
  res.json({ message: 'Hello, this is your API!' });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
