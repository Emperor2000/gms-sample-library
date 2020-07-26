// playerController.js
// Import player model
Player = require('./playerModel');
// Handle index actions
var last_known_player_list = "";


exports.index = function (req, res) {
    Player.get(function (err, players) {
        last_known_player_list = players;
        console.log('received a request for Player leaderboard data');
        if (err) {
            console.log("An error has occured.");
        //    res.json({
          //      status: "error",
         //       message: err,
          //  });
        }
        console.log("success: preparing to send data");
        res.json({
        //    status: "success",
        //   message: "players retrieved successfully",
            data: players
        });
		console.log(players);
		console.log("data has been sent to client");
    });
};
// Handle create player actions
exports.new = function (req, res) {
    console.log('received a post request');
    var player = new Player();
    player.name = req.body.name ? req.body.name : player.name;
    player.score = req.body.score;
    console.log('retrieved variables from body:');
    console.log('name: ' + req.body.name);
    console.log('score: ' + req.body.score);
// save the player and check for errors
    player.save(function (err) {
        // if (err)
        //     res.json(err);
res.json({
            message: 'New player created!',
            data: last_known_player_list
        });
    });
    console.log("end post request")
};





// Handle view player info
exports.view = function (req, res) {
    Player.findById(req.params.player_id, function (err, player) {
        if (err)
            res.send(err);
        res.json({
            message: 'player details loading..',
            data: player
        });
    });
};
// Handle update player info
exports.update = function (req, res) {
Player.findById(req.params.player_id, function (err, player) {
        if (err)
            res.send(err);
player.name = req.body.name ? req.body.name : player.name;
        player.score = req.body.score;
// save the player and check for errors
        player.save(function (err) {
            if (err)
                res.json(err);
            res.json({
                message: 'player Info updated',
                data: player
            });
        });
    });
};
// Handle delete player
exports.delete = function (req, res) {
    Player.remove({
        _id: req.params.player_id
    }, function (err, player) {
        if (err)
            res.send(err);
res.json({
            status: "success",
            message: 'player deleted'
        });
    });
};