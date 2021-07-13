// Screen gamma
if (alpha > 0) {
alpha-=0.1;
}
else {
    if(instance_exists(ctr_level))
    {
        global.add_time = 1;
    }
    instance_destroy();
}

