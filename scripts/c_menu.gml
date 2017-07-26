///c_menu()
switch pos
{
case 0:                 // Start
    room_goto_next();
    break;
    
case 1:                 // Continue
    break;
    
case 2:                 // Options
    break;
    
case 3:                 // Quit
    game_end();
    break;
}
