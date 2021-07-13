/// @description  draw_zone_timer(x, y)
/// @param x
/// @param  y
function draw_zone_timer(argument0, argument1) {

	 // Begin drawing the text.
    
	    draw_text(argument0, argument1, string_hash_to_newline(string(floor(global.game_time/60000))+":"+string_place_number(floor(global.game_time/1000) mod 60, 2, 0)+":"+string_place_number(floor(global.game_time/ 10) mod 100, 2, 0)))



}
