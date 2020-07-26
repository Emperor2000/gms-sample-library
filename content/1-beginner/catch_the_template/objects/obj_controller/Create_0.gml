/// @description Insert description here
// You can write your code in this editor
highscore = 0;

ini_open("game.ini");
highscore = ini_read_real("variables", "score", -10);
ini_close();