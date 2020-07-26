/// @description Draw this specific button
if (self.mtext == "") {
    self.mtext = "Unavailable";
}
if (hover == false) {
draw_set_color(c_white);
draw_text(self.x, self.y, string_hash_to_newline(id.mtext));
draw_rectangle((self.x)-25, self.y-20, ((self.x)+125), self.y+40, c_white);
}


if (hover == true) {
draw_set_color(c_blue);
draw_text(self.x, self.y, string_hash_to_newline(id.mtext));
draw_rectangle((self.x)-25, self.y-20, ((self.x)+125), self.y+40, c_blue);
draw_set_color(c_white);

}


//----------------------------------------
//DEBUGGING
//----------------------------------------
//draw_text(self.x-200, self.y, hover);
//draw_text(self.x-400, self.y, lmb);

