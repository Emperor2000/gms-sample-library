/// @description Insert description here
// You can write your code in this editor
if (id.faction != other.faction) {
other.hp -= global.LASER_DMG;
instance_create_layer(x, y, "Projectiles2", o_blue_laser_decal)
instance_destroy();	
}