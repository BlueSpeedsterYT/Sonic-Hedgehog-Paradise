/// @description anim_set(AnimationIndex, AnimationSprite, AnimationSpeed, AnimationStart, AnimationEnd, AnimationLoop, AnimationLoopTimer, AnimationNext, AnimationNextFrame)
/// @param AnimationIndex
/// @param AnimationSprite
/// @param AnimationSpeed
/// @param AnimationStart
/// @param AnimationEnd
/// @param AnimationLoop
/// @param AnimationLoopTimer
/// @param AnimationNext
/// @param AnimationNextFrame
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function anim_set(Animation_Index, Animation_Sprite, Animation_Speed, Animation_Start, Animation_End, Animation_Loop, Animation_Loop_Timer, Animation_Next, Animation_Next_Frame){
	Animation_Index = argument0;
	Animation_Sprite = argument1;
	Animation_Speed  = argument2;
	Animation_Start = argument3;
	Animation_End = argument4;
	Animation_Loop  = argument5;
	Animation_Loop_Timer = argument6;
	Animation_Next = argument7;
	Animation_Next_Frame = argument8;
	if(AnimationIndex = Animation_Index)
    {
       AnimationSprite      = Animation_Sprite;
       AnimationSpeed      = Animation_Speed;
	   AnimationStart	   = Animation_Start;
       AnimationEnd        = Animation_End;
       AnimationLoop       = Animation_Loop;
       AnimationLoopTimer = Animation_Loop_Timer;
       AnimationNext       = Animation_Next;
       AnimationNextFrame = Animation_Next_Frame;       
    }
}