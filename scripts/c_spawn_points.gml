///c_spawn_points(x,y,value)
var spawnx = argument0;
var spawny = argument1;
var value = argument2;
var c;
var distance = log2(value) + 4;

while (value > 0)
{
    if (value >= 20)
    {
        c = instance_create(spawnx, spawny, o_cubeB);
        value -= 20;
    }
    else
    {
        c = instance_create(spawnx, spawny, o_cubeA);
        value --;
    }
    
    c.direction = irandom(360);
    c.speed = max( 2, random(distance) );
}

return value;
