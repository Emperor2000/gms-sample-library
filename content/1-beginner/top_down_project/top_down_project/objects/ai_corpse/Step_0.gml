/// @description Init behaviour

#region detect the player
if (instance_exists(obj_player)) {
    if (distance_to_point(obj_player.x, obj_player.y) < aggroRange) {
    spotted = true;	//player has been spotted, change boolean spotted to true.
    image_angle = point_direction(x, y, obj_player.x, obj_player.y);     
    }
    
}
#endregion

#region Attack the player
if (canFire == true) {
if (point_distance(self.x, self.y, obj_player.x, obj_player.y) < aggroRange) {
        instance_create(self.x, self.y, obj_bullet_ai);		//Spawn a bullet
        
        walkingSpeed *=2;									//When attacking the walking speed is doubled.
        alarm[2] = cooldown;
        
        sprite_index = spr_player_firing;					//sprite index is updated.
        image_index = 0;									//set correct image index.
        image_speed = 1;									//set image speed.
        
        canFire = false;									//disable firing.
        }
     walkingSpeed = oldWalkingSpeed;						//reset walking speed.
    }
#endregion


#region ai movement
if (move == true) {
    move_towards_point(obj_player.x, obj_player.y, walkingSpeed/3);	//move towards the palyer slowly if move is enabled.
    alarm[1] = chooseTime;
}

if (point_distance(self.x, self.y, obj_player.x, obj_player.y) > aggroRange) {
    walkingSpeed = 0; //update walking speed if too far away, out of range.
} 
if (point_distance(self.x, self.y, obj_player.x, obj_player.y) <= aggroRange) {
    walkingSpeed = 3; //update walking speed.
}
if (point_distance(self.x, self.y, obj_player.x, obj_player.y) < aggroRange/4) {
    walkingSpeed = 0; //update walking speed if too close.
}


if (spotted == true && point_distance(self.x, self.y, obj_player.x, obj_player.y) <= aggroRange &&  point_distance(self.x, self.y, obj_player.x, obj_player.y) > aggroRange/3) {
    move_towards_point(obj_player.x, obj_player.y, walkingSpeed);
}
#endregion


#region unstuck mechanics
if (stuck >= 50) {
    unstuck = false;
    if (unstuck == false) {
    if (instance_exists(pathfind)) {
    if (point_distance(self.x, self.y, pathfind.x, pathfind.y) > 50) {
    move_towards_point(pathfind.x, pathfind.y, walkingSpeed);
    }
    alarm[4] = 30;
        } else {
        unstuck = true;
        }
    }
}
#endregion


#region when out of hp, destroy the instance 
if (hp <=0) {
deathSprite = irandom_range(1,3);

if (deathSprite == 1)
instance_create(self.x, self.y, obj_blood1);

if (deathSprite == 2)
instance_create(self.x, self.y, obj_blood2);

if (deathSprite == 3)
instance_create(self.x, self.y, obj_blood3);


instance_destroy();
}
#endregion