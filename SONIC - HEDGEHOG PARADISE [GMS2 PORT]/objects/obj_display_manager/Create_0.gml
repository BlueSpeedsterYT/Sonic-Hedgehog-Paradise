/// @description Display properties

globalvar delta;
delta = 1;

ideal_width = 1280/3;
ideal_height = 240;

zoom = 3;
//max_zoom = 1;
//if(window_set_fullscreen(false))
//{
    display_width = 1280;
    display_height = 720;
//}
//else
//{
//    display_width = display_get_width();
//    display_height = display_get_height();
//}
room_speed = 60;

//aspect_ratio = display_width/display_height;

timer = 0;

debug_gui_check = DEV_MODE;

//inverse = false;

//capture
//screenshot = 0;

//ideal_width = round(ideal_height*aspect_ratio);
//ideal_height = round(ideal_width/aspect_ratio);

//Perfect Pixel Scaling
if(display_width mod ideal_width != 0)
{
  var d = /*display_width/ideal_width;*/ round(display_width/ideal_width);
  ideal_width = display_width/d;
}
if(display_height mod ideal_height != 0)
{
  var d = /*display_height/ideal_height;*/ round(display_height/ideal_height);
  ideal_height = display_height/d;
}

//checking odd width and height
if(ideal_width & 1)
    ideal_width += 1;
if(ideal_height & 1)
    ideal_height += 1;
 

  
//calculating zoom

//max_zoom = floor(display_width/ideal_width);



for(var i = 1; i <= room_last; i += 1)
{
    if room_exists(i)
    {
        if(room != (rm_menu || rm_splash || rm_demo_intro))
		{
			room_set_view(i,0,true,0,0,ideal_width,ideal_height,0,0,ideal_width,ideal_height,0,0,0,0,-1);
		}
		else
		{
			room_set_view(i,0,true,0,0,640,360,0,0,640,360,0,0,0,0,-1);
		}
		room_set_view_enabled(i,true);
    }
}

display_set_gui_size(display_width,display_height);
surface_resize(application_surface,display_width,display_height);

//if os_version == (os_linux || os_macosx || os_windows) // UNUSED, WEB VERSION VIEW IS TOO SMALL
    
    window_set_size(display_width,display_height);

alarm[0]=1;
room_goto(room_next(room));
zoom += 1;

fullscreen_check = false;
//window_set_fullscreen(true);

/* */
/*  */
