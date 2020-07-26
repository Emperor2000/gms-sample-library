/// @description If hit by ai
hurtSprite = irandom_range(1,3);



if (hurtSprite == 1)
instance_create(self.x, self.y, obj_blood1);

if (hurtSprite == 2)
instance_create(self.x, self.y, obj_blood2);

if (hurtSprite == 3)
instance_create(self.x, self.y, obj_blood3);


global.hp -= 2;

