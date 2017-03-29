//arg0 - 1 or -1

var zoom = 16*argument0;
var zoomHeight = 9*argument0;

//Get the offset
_mouse_x = (mouse_x-view_xview[0])/view_wview[0];
_mouse_y = (mouse_y-view_yview[0])/view_hview[0];

//Scale view and mouse
view_wview[0] += zoom;
view_hview[0] += zoomHeight;

mouseScale = view_wview[0]/room_width;

with(oCursor) {
    image_xscale = other.mouseScale;
    image_yscale = image_xscale;
}

//Adjust view position based on mouse position
view_xview[0]=mouse_x-view_wview[0]*_mouse_x;
view_yview[0]=mouse_y-view_hview[0]*_mouse_y;







