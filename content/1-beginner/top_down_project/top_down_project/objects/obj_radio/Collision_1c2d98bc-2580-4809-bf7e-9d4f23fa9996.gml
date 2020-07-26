//Disable this variable if you want to clean up 
force += 10;


//bounceAngle = point_direction(other.x, other.y, self.x, self.y);
xAngle = self.x - other.x;
yAngle = self.y - other.y;
hit = true;

action_bounce(0, 0);
