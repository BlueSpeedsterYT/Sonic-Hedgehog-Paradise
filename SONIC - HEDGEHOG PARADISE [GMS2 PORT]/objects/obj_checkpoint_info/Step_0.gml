if phase == 1 && __alpha < 1 && scale_x > 9 && scale_y < 3
{
    __alpha += 0.1
    scale_x -= 0.1 
    scale_y += 0.1
    if __alpha >= 1
    {
        phase = 2
        alarm[0] = 180    
    }
}

if phase == 3 && __alpha > 0  && scale_x < 9*3 && scale_y > 0 && scale_y_bar > 0
{
    __alpha -= 0.1
    scale_x += 0.1 
    scale_y -= 0.1
    scale_y_bar -= 0.1
    if __alpha <= 0
        instance_destroy()
} 

