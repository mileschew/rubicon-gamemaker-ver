///c_spawnNextWave()

wave ++;
waveTimer = wave * 3;

if wave mod 10 == 0
    bossWave = true;
else 
    bossWave = false;

if !bossWave
{
    credits = wave;
    while (credits)
    {        
        var spawnx = irandom_range(30, room_width - 30);
        var spawny = irandom_range(30, room_width - 50);
        if credits >= 8 && !irandom(2)
        {
            instance_create(spawnx, spawny, o_enemyTemp);
            credits -= 8;
        }
        else if credits >= 5 && irandom(1)
        {
            instance_create(spawnx, spawny, o_e_D);
            credits -= 5;
        }
        else if credits >= 5
        {
            instance_create(spawnx, spawny, o_e_drone);   
            credits -= 5;
        }
        else if (credits >= 3 && irandom(1))
        {
            instance_create(spawnx, spawny, o_e_C);   
            credits -= 3;
        }
        else
        {
            instance_create(spawnx, spawny, o_e_pod);
            credits--;
        }   
    }
}
else                                                        // boss wave
{
    instance_create(room_width /2, 0, o_bossA);
}

return 0;
