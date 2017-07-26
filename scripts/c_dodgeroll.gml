/// c_dodgeroll(dir)
dir =  argument0;

rollRelX = lengthdir_x(5, dir);
rollRelY = lengthdir_y(5, dir);

target.x += rollRelX * 15;
target.y += rollRelY * 15;

rolling = true;
control = false;
invincible = true;
sprite_index = s_charADodge;
image_speed = 0.25;
alarm_set(4, 10);                                       // iframes
alarm_set(3, 15);                                       // total roll
alarm_set(5, 20);                                       // recovery frames

c_stamina_damage(25);

return dir;
