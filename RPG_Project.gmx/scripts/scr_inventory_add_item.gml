/// scr_inventory_add_item
var xx = argument[0];
var yy = argument[1];
var add_item = argument[2];

// Check for out of range
if(xx != median(0,xx,obj_inventory.width-1) || yy != median(0,yy,obj_inventory.height-1)){
    show_debug_message("The x and y are outside of the range");
    exit;
}

// Get the item count
var item_count = obj_inventory.box[# xx, yy];

if (item_count == 0){
    // Add the item
    obj_inventory.box[# xx, yy] = add_item;
    
    // Add 1 to the count
    obj_inventory.count[#xx, yy]++;
    
    // Return back out
    return true;

}else if (item_count > 0 ){
    // There is already an item, add another one to the stack
    if(obj_inventory.box[# xx, yy] == add_item){
        // Add 1 to the count
        obj_inventory.count[#xx, yy]++;
        return true;
}else{
    return false;
}
}else{
    show_error("The item count is less than zero, or the stack has reached max", false);
    
}
