const express = require('express');
const path = require('path');
const app = express();
const port = 3000;

// Serve static files
app.use(express.static(path.join(__dirname, 'Homepages')));
app.use(express.static(path.join(__dirname, 'Landingpage')));
app.use(express.static(path.join(__dirname, 'menspage')));
app.use(express.static(path.join(__dirname, 'womensData')));
app.use(express.static(path.join(__dirname, 'wishlist')));
app.use(express.static(path.join(__dirname, 'payment')));
app.use(express.static(path.join(__dirname, 'profile')));
app.use(express.static(path.join(__dirname, 'Home Living Products')));

// Serve homepage
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'Homepages', 'index.html'));
});

// Other routes can be added similarly
// Example:
// app.get('/mens', (req, res) => {
//   res.sendFile(path.join(__dirname, 'menspage', 'index.html'));
// });

app.listen(port, () => {
  console.log(`Myntra Clone app listening at http://localhost:${port}`);
});
