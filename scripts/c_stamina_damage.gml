/// c_stamina_damage(damage)
var damage = argument0;

global.stamina = max( global.stamina - damage, 0 );

// delay before stamina regens again
stamDelay = true;
if global.stamina > 0
    alarm_set(2, 60);
else
    alarm_set(2, 120);

return global.stamina;
