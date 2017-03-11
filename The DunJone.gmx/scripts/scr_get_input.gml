///scr_get_input
 right = keyboard_check(ord('D'));
 left = keyboard_check(ord('Q'))
 up = keyboard_check(ord('Z'));
 down = keyboard_check(ord('S'));
 
 
 //get axis
 
 xaxis = (right -left);
 yaxis = (down - up);
 
 //check for gamepad input
 if(gamepad_is_connected(0)){
 gamepad_set_axis_deadzone(0,.35);
 xaxis =(gamepad_axis_value(0,gp_axislh));
 yaxis=(gamepad_axis_value(0,gp_axislv) );
 
 }
