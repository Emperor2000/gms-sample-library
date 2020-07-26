/// @description button functionality - onclick
#region clickable button functionality  - ADD YOUR BUTTON DEFINITIONS IN THIS REGION.
if (hover == true && lmb == true ) {		//If hover is true and lmb is true the player clicked the button.
//------------------
//Different buttons:
//------------------
    //Campaign
    if (id.mtext = "Campaign") {		//Each mtext leads to a different room.
        room_goto(r_interior_test);
    }
    
    
    //Endless mode
    if (id.mtext = "Endless") {
        room_goto(r_main);
    }
    
    if (id.mtext = "Survival") {
        room_goto(r_test);
    }
    
    if (id.mtext = "Testing") {
        room_goto(r_city_west);
    }
}
#endregion
