///c_spawn_powerup(x,y, dropRates)
var spawnx = argument0;
var spawny = argument1;
var dR = argument2;

var p;
var r = irandom(99) + 1;

if r < dR[0]                                    // Health
    p = o_fullHealth;
    
else if r < dR[0] + dR[1]                       // Increase max Health
    p = o_maxHealthUp;

else if r < dR[0] + dR[1] + dR[2]               // Trigger overdrive
    p = o_overdrive;
    
else if r < dR[0] + dR[1] + dR[2] + dR[3]       // Weapon upgrade
    p = o_upgrade;
    
else p = 0;

if p != 0
    instance_create(spawnx, spawny, p);
