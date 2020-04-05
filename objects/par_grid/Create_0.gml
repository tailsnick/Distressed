/// @description AI Gride Create
//Create the grid for AI
cell_height = 16;
cell_width = 16;

hcells = 1.58 * room_height div cell_height;
wcells = 1.58 * room_width div cell_width;

global.grid = mp_grid_create(0, 0, hcells, wcells, cell_width, cell_height);

// Add walls
mp_grid_add_instances(global.grid, par_wall,true);