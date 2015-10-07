// y_to_gy(y)
var yy = argument[0];
if(yy < obj_inventory.y) return -1;
return (yy - obj_inventory.y) div obj_inventory.box_size;
