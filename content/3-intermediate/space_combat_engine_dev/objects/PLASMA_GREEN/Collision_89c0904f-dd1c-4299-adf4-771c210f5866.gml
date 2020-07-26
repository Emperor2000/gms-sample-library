if (id.faction != other.faction) {
other.hp -= global.PLASMA_DMG;
instance_create_layer(x, y, "Projectiles2", o_green_laser_decal)
instance_destroy();	
}