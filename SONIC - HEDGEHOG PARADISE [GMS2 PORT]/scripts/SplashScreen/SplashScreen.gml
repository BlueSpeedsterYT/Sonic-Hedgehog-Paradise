// Auto-generated stubs for each available event.

function splash_fade_to()
{
	if(global.DemoShowcase)
		room_fade_to("REGULAR_BLACK", rm_tests);
	else
		room_fade_to("REGULAR_BLACK", rm_menu);
}

function sega_splash_sound_play_script()
{
	if(current_month == 6 && current_day == 23)
	{
		audio_stop_sound(snd_SEGA_splash);
		audio_play_sound(snd_SEGA_splash, 1, false);
	}
	else
	{
		audio_stop_sound(snd_SEGA_splash);
		audio_play_sound(snd_SEGA_splash, 1, false);
	}
}
