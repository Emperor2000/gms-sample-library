x = xprevious;
y = yprevious;
if (x == obj_solid.x or y == obj_solid.y) { //Manual collision checking, is not required here, but included as an alternative.
    instance_destroy();
}

