if (instance_number(obj_enemy_spawn) < 10) {
instance_create(self.x, self.y, obj_enemy_spawn); //spawner amount increases exponentially, USE WITH CAUTION!!
} else {
//safety build in to prevent crashes.	
}
