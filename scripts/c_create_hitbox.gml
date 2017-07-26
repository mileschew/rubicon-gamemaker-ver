/// c_create_hitbox(x, y, width, height, damage, knockback, direction, life)
var xx = argument0;
var yy = argument1;
var width = argument2;
var height = argument3;
var dam = argument4;
var knock = argument5;
var dir = argument6;
var life = argument7;

var box = instance_create(xx, yy, o_hitbox);
with box {
    image_xscale = width/16;
    image_yscale = height/16;
    damage = dam;
    knockback = knock;
    direction = dir;
    lifespan = life;
}

return box;
