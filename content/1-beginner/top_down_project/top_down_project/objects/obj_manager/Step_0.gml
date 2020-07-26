/// @description Check button click
#region buttons
if (hover == true && lmb == true ) {
	
//------------------
//Different buttons:
//------------------

    //Campaign
    if (id.mtext = "Campaign") {
        room_goto(r_interior_test);
    }
    
    
    //Endless mode
    if (id.mtext = "Endless") {
        room_goto(r_main);
    }
    
    if (id.mtext = "survival") {
        room_goto(r_test);
    }
    
    if (id.mtext = "Testing") {
        room_goto(r_city_west);
    }
	
	//add your buttons here using the format described in the other buttons.

}
#endregion
