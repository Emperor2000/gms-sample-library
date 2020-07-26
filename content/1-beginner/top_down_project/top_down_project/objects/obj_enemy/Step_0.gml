/// @description Follow

if (instance_exists(obj_player)){
var dis = point_distance(x,y,obj_player.x,obj_player.y);
}
if instance_exists(obj_grenade)
{
    var dis2 = point_distance(x,y,obj_grenade.x,obj_grenade.y);
    if dis2 <= aggroRange
    {
        if global.blowing = 1
        {
            hp -= 100;
        }
    }
}
    
if state = "Static"
{
    if (dis <= aggroRange) 
    {
        state = "Follow";
    }
    else
    {
        if alarm[0]= -1
        {
            alarm[0] = 2 * room_speed;
        }
    }
}

if state = "Follow"
{
    if !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,1)
    {
        alerted = true;
    }

    if (alerted = true) && (dis <= aggroRange)
    {
        mp_potential_step(obj_player.x,obj_player.y,enemySpeed,true);
        sprite_index = spr_enemy_attack;
        image_speed = 0.50;
        image_angle = point_direction(x,y,obj_player.x,obj_player.y);
    }
    else
    {
        state = "Static";
        alerted = false;
        sprite_index = spr_enemy;
    }
}

///Collision and death
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




//Death on low hp
if (hp <= 0) {

//Spawn decal
//define decal
decal = irandom_range(1, 3);

//blood 1
if (decal == 1) {
instance_create(self.x, self.y, obj_blood1);
}
//blood 2
if (decal == 2) {
instance_create(self.x, self.y, obj_blood2);
}
//blood 3
if (decal == 3) {
instance_create(self.x, self.y, obj_blood3);
}

//Destroy instance

    {
        instance_destroy();
        global.pscore += 10
    }
}

