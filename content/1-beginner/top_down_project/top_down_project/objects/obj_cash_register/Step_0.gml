if (instance_exists(obj_player)) {
    if (point_distance(self.x, self.y, obj_player.x, obj_player.y) < 25) {
    canLoot = true;
    //draw = true;
    } else {
    canLoot = false;
    }
}

///Loot register
if (keyboard_check(ord("E")) && canLoot == true && cooldown == false) {
    //Change player money
    //global.money += cashValue
    alarm[0] = 2000;
    
    canLoot = false;
    
}

