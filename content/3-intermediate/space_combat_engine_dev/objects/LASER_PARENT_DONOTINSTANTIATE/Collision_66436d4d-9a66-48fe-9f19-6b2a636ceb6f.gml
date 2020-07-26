/// @description Insert description here
// You can write your code in this editor
if (instance_exists(other)) {
	if (id.faction != other.faction) {
	instance_destroy(other);
	instance_destroy(id);
	}
}