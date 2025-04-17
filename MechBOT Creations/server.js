/* BACKEND EXAMPLE: Node.js (Express) */
// server.js
const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const path = require('path');

app.use(bodyParser.json());
app.use(express.static('public'));

// Example Login route
app.post('/login', (req, res) => {
  const { email, password } = req.body;
  // Add OAuth2 with Google/Apple login logic here
  res.send("Login successful");
});

// Careers submission
app.post('/apply', (req, res) => {
  const formData = req.body; // Store in SQL DB
  res.send("Application Received");
});

app.listen(3000, () => console.log('Server running on http://localhost:3000'));

