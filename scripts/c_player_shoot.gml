///c_player_shoot()

var shooting = -1;
var s;  // new shot

for (var i = 0; i < array_length_1d(shotTimer); i++)
{
    shotTimer[i]--;
    
    if shotTimer[i] <= 0
        shooting = i;
    else
        shooting = -1;
    
    switch shooting
    {
    case -1:                                // not shooting
        break;
    
    case 0:                                 // Shot A
        shotTimer[0] = shotDelay[0];
        switch shotNum[0]
        {
        case 1:
            instance_create(x +random_range(-weaponSway, weaponSway), y, o_playerShotA);
            break;
            
        case 2:
            s = instance_create(x-2 +random_range(-weaponSway, weaponSway), y, o_playerShotA);
            s.drift = -1/3;
            s = instance_create(x+2 +random_range(-weaponSway, weaponSway), y, o_playerShotA);
            s.drift = 1/3;
            break;
            
        case 3:
            s = instance_create(x-5 +random_range(-weaponSway, weaponSway), y, o_playerShotA);
            s.drift = -2/3;
            instance_create(x +random_range(-weaponSway, weaponSway), y, o_playerShotA);
            s = instance_create(x+5 +random_range(-weaponSway, weaponSway), y, o_playerShotA);
            s.drift = 2/3;
            break;
        }
        break;
        
    case 1:                             // Shot B
        shotTimer[1] = shotDelay[1];
        if shotNum[1] == 4
        {
            s = instance_create(x-3, y, o_playerShotB);
            s.drift = -3/4;
            s = instance_create(x-1, y, o_playerShotB);
            s.drift = -1/4;
            s = instance_create(x+1, y, o_playerShotB);
            s.drift = 1/4;
            s = instance_create(x+3, y, o_playerShotB);
            s.drift = 3/4;
        }
        else instance_create(x, y, o_playerShotB);
        break;
        
    case 2:                             // Shot C
        shotTimer[2] = shotDelay[2];
        instance_create(x-10 +random_range(-weaponSway, weaponSway), y, o_playerShotC);
        instance_create(x+10 +random_range(-weaponSway, weaponSway), y, o_playerShotC);
        break;
        
    case 3:                             // Shot D
        shotTimer[3] = shotDelay[3];
        switch shotNum[3]
        {
        case 2:
            s = instance_create(x, y, o_playerShotD);
            s.direction = 110;
            s = instance_create(x, y, o_playerShotD);
            s.direction = 70;
            break;
            
        case 6:
            s = instance_create(x, y, o_playerShotD);
            s.direction = 140;
            s = instance_create(x, y, o_playerShotD);
            s.direction = 120;
            s = instance_create(x, y, o_playerShotD);
            s.direction = 100;
            s = instance_create(x, y, o_playerShotD);
            s.direction = 80;
            s = instance_create(x, y, o_playerShotD);
            s.direction = 60;
            s = instance_create(x, y, o_playerShotD);
            s.direction = 40;
            break;            
        }
        break;
    }
}
