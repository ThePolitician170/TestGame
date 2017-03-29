//Check for enter, space, or "z" key pressed
return max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space), keyboard_check_pressed(ord("Z")),0);

