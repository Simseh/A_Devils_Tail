var add_item = argument[0];

//Check for item in inventory
for (var yy = 0; yy < obj_inventory.height; yy++){
    for (var xx = 0; xx < obj_inventory.width; xx++){
        if(obj_inventory.box[# xx, yy] == add_item){
            obj_inventory.count[# xx, yy]++;
            return true;
        }
    }
}

//Check for an empty slot
for (var yy = 0; yy < obj_inventory.height; yy++){
    for (var xx = 0; xx < obj_inventory.width; xx++){
        if(obj_inventory.box[# xx, yy] == item.none){
            obj_inventory.box[# xx, yy] = add_item;
            obj_inventory.count[# xx, yy]++;
            return true;
        }
    }
}

show_debug_message("The inventory is full");
    return false;
