/// @description  Variables.

 // Init. flag:
    initialized     = false;      // Checks if the player has been initialized.
    
 // Player Index:
    player_index    = global.character_index;
    
 // Horizontal movement:
    x_speed         = 0;        // The current horizontal speed.
    x_speed_top     = 6;        // Horizontal top speed while on flat ground.
    x_speed_max     = 16;       // Fastest the player can move.
    g_speed         = 0;        // Stores the ground speed.
    x_acceleration  = 0.046875; // Horizontal acceleration on ground.
    x_deceleration  = 0.5;      // Horizontal deceleration on ground.
    x_slope_factor  = 0.125;    // Rate at which the player slows down on slopes.
    x_air_accel     = 0.09375;  // Acceleration value in the air.
    x_temp_accel    = 0;        // Stores temporal acceleration value. 
    x_temp_decel    = 0;        // Stores temporal deceleration value.
    x_temp_friction = 0;        // Stores temporal friction value.
    x_limit         = false;    // Limits the horizontal speed.
    x_allow         = 1;        // Allows horizontal movement.

 // Vertical movement:
    y_speed         = 0;        // The current vertical speed.
    y_speed_max     = 16;       // Fastest the player can fall.
    y_acceleration  = 0.21875;  // Force of gravity applied to the player.
    y_accel_common  = 0.21875;  // Store original gravity value in case we change it ingame.
    y_conversion    = 1;        // Speed conversion when landing.
    y_limit         = true;     // Limits the vertical speed.
    y_allow         = 1;        // Allows vertical movement.

 // Samples.
    x_sample        = 13;       // Pixel limit to divide horizontal movement.
    y_sample        = 13;       // Pixel limit to divide vertical movement.
          
 // Terrain:
    ground          = 0;        // Checks if the player has/is grounded.
    angle           = 0;        // Returns the angle of the player.
    angle_round     = 0;        // Returns the angle of the player, rounded.
    angle_relative  = 0;        // Returns the angle, relative to gravity values.
    angle_hold      = 0;        // Used to smoothen angle values.
    collision_layer = 0;        // Returns the layers the player is on.
    floor_mode      = 0;        // Returns the floor mode.
    x_beforepush    = 0;        // X Position before player was pushed (not used)      
    y_beforepush    = 0;        // Y Position before player was pushed (not used)
    platform_mode   = true;
    platform_check  = 0;        // Checks if the player has landed on platforms.
    platform_frames = 30;       // Used to reset the platform check.
   
 // States:
    jump_strength     = -6.5    // Players jump strength.
    jump_release      = -4;     // Minimum strength the player can jump.
    jump_completed    = false;  // Checks if the player has completed his jump.
    jump_lock         = 0;      // Is the jump locked? (Means the direction cannot be altered while jumping)
    
    spindash_strength = 0;      // Current strength of the spindash.
    spindash_pitch    = 0;      // Used to change the spindash sound pitch.
    
    roll_deceleration = 0.125;     // Rolling deceleration.
    roll_friction     = 0.0234375  // Friction while rolling.
    roll_decel_up     = 0.078125;  // Deceleration while rolling up slopes.
    roll_decel_down   = 0.3125;    // Deceleration while rolling down slopes.
    
    skid_direction    = 0;         // Direction you're skiddin towards.
    
    grab_timer        = 0;         // Grab timer, prevents us from grabbing onto something as soon as we try to let go.
    grab_type         = 0;         // Grab type, see the grab scripts for more.
    grab_distance     = 0;         // How far we can travel.
    grab_moving       = 0;         // Checks if we're moving-
    grab_id           = 0;
    grab_x            = 0;
    grab_y            = 0;
    
    push_timer        = 0;         // Used to trigger pushing state.
    push_timer_max    = 3;
    
    hom_use           = false;     // Used to see whether or not to use the Homing state
    w_jump_use        = false;     // Used to see whether or not to use the Double Jump state
    
    death_timer       = -5;       // See death script in the step event.

  // Flags:
    state           = 1;        // Players current state.
    input_alarm     = 0;        // Input alarm. (Used for slopes9
    input_alarm_dir = 0;        // Which direction we're locking.
	input_lock		= false;    // Locks input.
    input_lock_l    = 0;        // Locks left input.
    input_lock_r    = 0;        // Locks right input.
    input_lock_s    = 0;        // locks input after using a horizontal spring.
    launch_lock     = 0;        // Disables horizontal input.
    lock_timer      = 0;        // How long input is locked. Used on springs.
    tunnel_lock     = 0;        // Locks the player when inside a tunnel.
    timer_up        = 0;        // Timer for looking up.
    timer_down      = 0;        // Timer for crouching.
    allow_look      = 1;        // Allow crouching/looking up.
    physic_mode     = 0;
    speedshoe       = 0;
    
  // Done initializing.
    initialized = true;



/// Inputs keys.
 
    input_up               = false;
    input_down             = false;
    input_right            = false;
    input_left             = false;
    input_a                = false;
    input_b                = false;
    input_x                = false;
    input_y                = false;
    
    input_up_pressed       = false;
    input_down_pressed     = false;
    input_right_pressed    = false;
    input_left_pressed     = false;
    input_a_pressed        = false;
    input_b_pressed        = false;    
    input_x_pressed        = false;
    input_y_pressed        = false;  
    
    input_up_released      = false;
    input_down_released    = false;
    input_right_released   = false;
    input_left_released    = false;
    input_a_released       = false;
    input_b_released       = false;    
    input_x_released       = false;
    input_y_released       = false;    
    
    input_alarm = false;

/// Animation System.

    AnimationIndex = "IDLE";
	AnimationPrevious = "";
	AnimationFlag = "START";
	AnimationFrame = 0;
	AnimationSprite = spr_sonic_idle;
	AnimationSpeed = 0;
	AnimationStart = 0;
	AnimationEnd = 0;
	AnimationLoop = 0;
	AnimationLoopTimer = 0;
	AnimationNext = 0;
	AnimationNextFrame = 0;
	AnimationDirection = 1;
	AnimationBlend = c_white;
    AnimationAlpha = 1;
    AnimationTimer = 0; 

/// Checkpoint/Camera Spawn.

 if(global.checkpoint_x != -1)
 {
    global.game_time = global.checkpoint_t;
    global.playRings = global.checkpoint_r;
    x                = global.checkpoint_x;
    y                = global.checkpoint_y;
 }

 camera_object = instance_create(x, y, obj_camera);
 
 camera_object.x = x;
 camera_object.y = y;


