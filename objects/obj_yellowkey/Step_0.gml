if (growl_timer > 0) {
    growl_timer--;
    // fade in/out based on timer
    image_alpha = min(1, growl_timer / 30); 
} else {
    growl_active = false;
    image_alpha = 0;
}