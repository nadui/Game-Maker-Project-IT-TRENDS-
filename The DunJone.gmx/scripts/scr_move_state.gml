///src_move_state

scr_get_input();






//Get axis


var xaxis = (right - left);
var yaxis =(down - up);
// get directions

var dir = point_direction(0,0,xaxis,yaxis);
//get the length
if(xaxis == 0 and yaxis == 0){
    len = 0;


}else  { len = spd;}

//move

hspd =lengthdir_x(len,dir);

vspd = lengthdir_y(len,dir);


//move


phy_position_x +=hspd;
phy_position_y +=vspd;

// control the sprite

image_speed = sign(len) *.2;
if(len == 0) {image_index = 0;}
if(vspd > 0){ sprite_index = spr_down;}
else if(vspd <0) {sprite_index = spr_up;}
else if (hspd >0) {sprite_index = spr_right;}
else if (hspd < 0) {sprite_index = spr_left;}
