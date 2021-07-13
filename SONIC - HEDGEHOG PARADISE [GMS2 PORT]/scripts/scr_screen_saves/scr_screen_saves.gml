/// @description  scr_screen_saves()
function scr_screen_saves() {

	ini_open(working_directory+"General_Game_Data.ini")
	{
	    ini_write_real("Screenshots", "Number", global.screen_count);           
	}
	ini_close();




}
