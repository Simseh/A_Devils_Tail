// Create amulet item
amulet = ds_map_create();
ds_map_add(amulet,'damage',1);
ds_map_add(amulet,'type','neck');

// Create horns item
horns = ds_map_create();
ds_map_add(horns,'damage',2);
ds_map_add(horns,'type','head');

// Create the item db
global.items = ds_map_create();
ds_map_add(global.items,'obj_amulet',amulet);
ds_map_add(global.items,'obj_horns',horns);
