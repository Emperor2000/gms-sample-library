/// @description Draw this specific button
if (self.mtext == "") {
    self.mtext = "Undefined"; //text is altered to undefined if mtext is not defined.
}

#region button appearance when NOT hovered over.
if (hover == false) {		
draw_set_color(c_white);
draw_text(self.x, self.y, string_hash_to_newline(id.mtext));			//Draw text on new line
draw_rectangle((self.x)-25, self.y-20, ((self.x)+125), self.y+40, c_white);
}
#endregion

#region button appearance when hovered over.
if (hover == true) {
draw_set_color(c_blue);
draw_text(self.x, self.y, string_hash_to_newline(id.mtext));
draw_rectangle((self.x)-25, self.y-20, ((self.x)+125), self.y+40, c_blue);
draw_set_color(c_white);

}
#endregion




//----------------------------------------
//DEBUGGING - IF YOU HAVE PROBLEMS WITH CLICKING BUTTONS ENABLE THESE LINES FOR DEBUGGING THE HOVER AND LMB VARIABLES
//----------------------------------------
//draw_text(self.x-200, self.y, hover);
//draw_text(self.x-400, self.y, lmb);

