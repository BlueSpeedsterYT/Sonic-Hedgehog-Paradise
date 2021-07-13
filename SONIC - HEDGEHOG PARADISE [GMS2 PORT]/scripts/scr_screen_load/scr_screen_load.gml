/// @description  scr_screen_load()
function scr_screen_load() {

	if(file_exists(working_directory+"General_Game_Data.ini"))
	{
	    ini_open(working_directory+"General_Game_Data.ini")
	    {
	        global.screen_count = ini_read_real("Screenshots", "Number", global.screen_count);           
	    }
	    ini_close();
	}



}
