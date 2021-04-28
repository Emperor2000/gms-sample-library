/// instance_find_enemy(object)
//
//  Returns the nearest instance of an object whose local
//  variable "team" has a different value than the calling
//  instance, or noone if no instance is found.
//
//      object      object to look for (or all), real
//RETRIEVED FROM:
/// GMLscripts.com/license
{
    var ds,selected;
    ds = ds_priority_create();
    ds_priority_add(ds,noone,100000000);
    with (argument0) {
        if (faction != other.faction) {
            ds_priority_add(ds,id,point_distance(x,y,other.x,other.y));
        }
    }
    selected = ds_priority_find_min(ds);
    ds_priority_destroy(ds);
    return selected;
}