var express = require("express");
var app = express();
var mongoose = require('mongoose');
var bodyParser = require('body-parser');










// Import routes
let apiRoutes = require("./api-routes");
// Configure bodyparser to handle post requests
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());
// Connect to Mongoose and set connection variable
mongoose.connect('mongodb://localhost/sampleDB', { useNewUrlParser: true});
var db = mongoose.connection;

// Added check for DB connection
if(!db)
    console.log("Error connecting db")
else
    console.log("Db connected successfully")



// Setup server port
var port = process.env.PORT || 5001;

// Send message for default URL
app.get('/', (req, res) => res.send('Sample API'));

// Use Api routes in the App
app.use('/api', apiRoutes);
// Launch app to listen to specified port
app.listen(port, function () {
    console.log("Running sample api on port " + port);
});