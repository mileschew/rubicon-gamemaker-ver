///c_create_hit_explosion(x, y, angle)
var xx = argument0 + random_range(-10, 10);
var yy = argument1 + random_range(-10, 10);
var ang = argument2;

part_particles_create(o_particles.pSystem, xx, yy, o_particles.shot_hit, 1);

repeat(irandom(3))
    instance_create(x,y,prt_spark);
