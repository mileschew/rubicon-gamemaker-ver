/// c_init_game()

// Set game resolution
global.gameHeight = 1024;
global.gameWidth = 576;
global.zoom = 0.8;
surface_resize(application_surface, global.gameWidth, global.gameHeight);
display_reset(0, true);

global.paused = false;
global.engaged = false;

random_set_seed(1);

gamepad_set_axis_deadzone(0, 0.2);

// Game Enums
enum st_enemy
{
    IDLE
,   SPAWNING
,   SPAWNING2
,   TAUNT
,   ATTACK1
,   CHASING
,   DRIFTING
,   DODGING
,   DEATH
};
