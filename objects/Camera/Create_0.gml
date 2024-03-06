/// @description Set up 3D things

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();

instance_create_depth(0, 0, 0, Player);

buffer = buffer_load("ground.vbuff");
vb_ground = vertex_create_buffer_from_buffer(buffer, vertex_format);
buffer_delete(buffer);

vb_chest = import_obj("chest.obj", vertex_format);