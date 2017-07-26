///c_upgrade_weapon();

with o_ship
{
    weaponLvl ++;

    switch weaponLvl
    {
    case 1:
        shotDelay[0] = 4;
        break;
    case 2:
        shotNum[0] = 2;
        break;
    case 3:
        shotNum[0] = 3;
        break;
    case 4:
        shotTimer[1] = 0;
        shotDelay[1] = 3;
        shotNum[1] = 1;
        break;
    case 5:
        shotNum[1] = 4;
        break;
    case 6:
        shotTimer[2] = 0;
        shotDelay[2] = 15;
        shotNum[2] = 1;
        break;
    case 7:
        shotDelay[2] = 8;
        break;
    case 8:
        shotTimer[3] = 0;
        shotDelay[3] = 60;
        shotNum[3] = 2;
        break;
    case 9:
        shotNum[3] = 6;
        break;
    }
}
