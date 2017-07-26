///c_create_explosion(x, y)
var xx = argument0;
var yy = argument1;

repeat(5)
    instance_create(xx+random_range(-32,32), yy+random_range(-32,32), prt_explosion_piece);

part_particles_create(o_particles.pSystem, xx+random_range(-50,50), yy+random_range(-50,50), o_particles.explosion_center, 2);
