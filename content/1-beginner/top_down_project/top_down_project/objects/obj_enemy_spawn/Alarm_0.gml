var xx = random(room_width);        //Random x spawn pos for enemy
var yy = random(room_height);       //Random y spawn pos for enemy

if (place_free(xx,yy))              //Check if position is not occupied.
{
    instance_create(xx,yy,ai_zombie); //Create an instance of the enemy.
}

alarm[0] = spawnRate;               //Alarm for spawning, increase spawnrate each step
alarm[1] = room_speed*10;			//increase the amount of spawning enemies by adding a spawner every 10 seconds.

