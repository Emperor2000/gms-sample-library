/// @description zombie behaviour
#region detect player and grenade basic functionality
if (instance_exists(obj_player)){
var dis = point_distance(x,y,obj_player.x,obj_player.y);
}
if instance_exists(obj_grenade) {
    var dis2 = point_distance(x,y,obj_grenade.x,obj_grenade.y);		//get distance to grenade.
    if (dis2 <= aggroRange) {	    //check if within range of grenade.
        if global.blowing = 1		//check if grenade is exploding.
        {
            hp -= 100;				//remove 100 hp.
        }
    }
}
#endregion

#region static state
if (state == "Static") {
    if (dis <= aggroRange) {			//if point_distance to player is within aggro range of enemy.
        state = "Follow";				//update state, ai now follows the player.
    }
    else {
        if (alarm[0]== -1) {			//if alarm is inactive.
            alarm[0] = 2 * room_speed;	//alarm is 2 seconds. (magic number, 2 is amount of seconds.)
        }
    }
}
#endregion

#region follow state
if (state == "Follow") {
    if (!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,1)) { //check if ai can view the player.
        alerted = true; //ai spotted the player.
    }

    if (alerted == true) && (dis <= aggroRange)		//ai is alerted and player is within firing range.
    {
        mp_potential_step(obj_player.x,obj_player.y,enemySpeed,true); //move avoiding obstacles.
      //  sprite_index = spr_zombie_run; , if you have a run sprite you can set it here.
        image_speed = 0.50; //update run speed.
        image_angle = point_direction(x,y,obj_player.x,obj_player.y); //image angle
    }
    else { //update state
        state = "Static"; //change state to static.
        alerted = false; //enemy is no longer alerted.
        //sprite_index = spr_enemy;
    }
}
#endregion

#region collision checking
script_execute(scr_animate);
//Collisions
if hspeed!=0
if !place_free(x+hspeed,y)
{
    if hspeed>0 move_contact_solid(0,hspeed)
    if hspeed<0 move_contact_solid(180, -hspeed)
    hspeed=0
}

if vspeed!=0
if !place_free(x+hspeed,y+vspeed)
{
    if vspeed>0 move_contact_solid(270,vspeed)
    if vspeed<0 move_contact_solid(90, -vspeed)
    vspeed=0
}
#endregion

#region ai death when out of hp.
if (hp <= 0) {

//Spawn decal
//define decal
decal = irandom_range(1, 3); //get a random blood decal.


//blood 1
if (decal == 1) { //change blood decal based on decal variable value
instance_create(self.x, self.y, obj_blood1); 
}
//blood 2
if (decal == 2) { //change blood decal based on decal variable value
instance_create(self.x, self.y, obj_blood2);
}
//blood 3
if (decal == 3) { //change blood decal based on decal variable value
instance_create(self.x, self.y, obj_blood3);
}
    {
        instance_create(self.x, self.y, ai_zombie_corpse); //if you want to add a corpse you can do it here.
        instance_destroy();
        global.pscore += 10 //update player's score.
    }
}
#endregion
