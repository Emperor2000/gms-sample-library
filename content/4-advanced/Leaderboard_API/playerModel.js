// playerModel.js
var mongoose = require('mongoose');
// Setup schema
var playerSchema = mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    score: {
        type: Number,
        required: true
    },
    create_date: {
        type: Date,
        default: Date.now
    }
});
// Export player model
var Player = module.exports = mongoose.model('player', playerSchema);
module.exports.get = function (callback, limit) {
    Player.find(callback).limit(limit);
}