var xx = argument[0];
var yy = argument[1];

// Check for out of range
if(xx != median(0, xx, obj_inventory.width-1) || yy != median(0,yy,obj_inventory.height-1)){
    show_debug_message("The x and y are outside of the range");
    exit;
}

// Get the item count
var item_count = obj_inventory.box[# xx, yy];

// Make sure we have items
if(item_count > 0){

    obj_inventory.count[# xx, yy]--;
    
    var remove_item = obj_inventory.box[# xx, yy];
    
    if(item_count == 1){
        obj_inventory.box[# xx, yy] = item.none;
    }
    return remove_item;
    
}else if(item_count == 0){
    show_debug_message("There was not an item at that location");
    return item.none;
}else{
    show_error("The item count is less than zero", false);
}
