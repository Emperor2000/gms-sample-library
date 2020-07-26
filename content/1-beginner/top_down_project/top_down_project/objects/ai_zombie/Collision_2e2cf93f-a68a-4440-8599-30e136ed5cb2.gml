x = xprevious;
y = yprevious;
if (x == obj_wall.x or y == obj_wall.y) { //Manual collision checking, is not required here, but included as an alternative.
    instance_destroy();
}

