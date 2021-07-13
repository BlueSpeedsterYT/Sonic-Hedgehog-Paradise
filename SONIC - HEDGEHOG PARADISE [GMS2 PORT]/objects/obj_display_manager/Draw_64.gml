/// @description  Debug Infomation
    
if(DEV_MODE == true)
{
    if (debug_gui_check == true)
    {
        draw_set_color(c_white);
        draw_set_font(global.font_debug);
        
        if(instance_exists(obj_player) == true)
        {
        draw_set_align(fa_left, fa_top);
        draw_text(16,16,string_hash_to_newline(display_write_specs(display.screen)+"#"+
                        display_write_specs(display.window)+"#"+
                        display_write_specs(display.app_surface)+"#"+
                        display_write_specs(display.view)+"#"+
                        display_write_specs(display.gui)+"#"+
                        display_write_specs(display.frames)+"#"+
                        display_write_specs(display.true_frames)+"#"+
                        charact_write_specs(character._x)+"#"+
                        charact_write_specs(character._y)+"#"+
                        charact_write_specs(character.speed_x)+"#"+
                        charact_write_specs(character.speed_y)+"#"+
                        charact_write_specs(character.checkpoint_x)+"#"+
                        charact_write_specs(character.checkpoint_y)+"#"+
                        charact_write_specs(character.checkpoint_t)+"#"+
                        charact_write_specs(character.checkpoint_r)+"#"+
                        charact_write_specs(character.action)+"#"+
					//"SCREENSHOT COUNT: "+string(global.screen_count)+"#"+
                          music_write_specs(music.current_pos)+"#"+
                          music_write_specs(music.loop_sample_allow)+"#"+
                          music_write_specs(music.loop_sample_start)+"#"+
                          music_write_specs(music.loop_sample_end)+"#"+
                          music_write_specs(music.audio_sample_rate))
                        );
        }
        else
        {
        draw_set_align(fa_left, fa_top);
        draw_text(16,16,string_hash_to_newline(display_write_specs(display.screen)+"#"+
                        display_write_specs(display.window)+"#"+
                        display_write_specs(display.app_surface)+"#"+
                        display_write_specs(display.view)+"#"+
                        display_write_specs(display.gui)+"#"+
                        display_write_specs(display.frames)+"#"+
                        display_write_specs(display.true_frames)+"#"+
				//"SCREENSHOT COUNT: "+string(global.screen_count)+"#"+
                          music_write_specs(music.current_pos)+"#"+
                          music_write_specs(music.loop_sample_allow)+"#"+
                          music_write_specs(music.loop_sample_start)+"#"+
                          music_write_specs(music.loop_sample_end)+"#"+
                          music_write_specs(music.audio_sample_rate))
                        );
        }
    
        draw_set_align(fa_left, fa_bottom);
        draw_text(16,display_height-27, string_hash_to_newline("BUILD DATE:"+date_time_string(GM_build_date)+"#GAME VERSION:"+string(GM_version)+"#GAMEMAKER STUDIO RUNTIME VERSION:"+string(GM_runtime_version)));
    
        draw_set_align(fa_right, fa_bottom);
        draw_text(display_width-16,display_height-16, string_hash_to_newline(GAME_TITLE+"#"+GAME_VER));
        
        draw_set_align(-1, -1);
    }
}

