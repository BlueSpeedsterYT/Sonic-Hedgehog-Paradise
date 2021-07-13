/// @description music_write_specs(audio enum)
/// @param audio enum
function music_write_specs() {
	enum music{current_pos, loop_sample_allow, loop_sample_start, loop_sample_end, audio_sample_rate};
	var str="";
	switch(argument[0])
	{
	  case music.current_pos:
	    str="Current Track Pos: "+string(audio_sound_get_track_position(ctr_audio.bgm_handle)*ctr_audio.bgm_sample_rate);
	  break;
	  case music.loop_sample_allow:
	    str="Music Looping: "+string_change_if(ctr_audio.bgm_sample_loop, true, "Allowed.", false, "Disabled.");
	  break;
	  case music.loop_sample_start:
	    str="Loop Start: "+string(ctr_audio.bgm_sample_start);
	  break;
	  case music.loop_sample_end:
	    str="Loop End: "+string(ctr_audio.bgm_sample_end);
	  break;
	  case music.audio_sample_rate:
	    str="Sample Rate: "+string(ctr_audio.bgm_sample_rate);
	  break;
	}
	return str;



}
