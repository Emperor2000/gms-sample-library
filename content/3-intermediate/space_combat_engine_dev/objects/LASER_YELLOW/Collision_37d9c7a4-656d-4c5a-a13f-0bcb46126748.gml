if (id.faction != other.faction) {
other.hp -= global.LASER_DMG;
instance_create_layer(x, y, "Projectiles2", o_yellow_laser_decal)
instance_destroy();	
}