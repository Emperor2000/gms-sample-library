/// @description Tooltip

if (canLoot == true) {


if (instance_exists(obj_log)) {

    draw_text(obj_log.x, obj_log.y, string_hash_to_newline("Interact: E"));
    
    }
}

if (canLoot == false) {
   
}








//draw_text(room_width/4, (room_height/4)*3, "Press E to loot cash register");
// draw_text(room_width/4, (room_height/4)*3, "Text should not be drawn");

