/// @desc Draw game surface

// Apply chromatic abberation shader
if(global.retro_filter = true) {
	shader_set(shd_aberration);
	var dis_u = shader_get_uniform(shd_aberration, "u_Distance");
	shader_set_uniform_f(dis_u, 0.5);
	draw_surface(application_surface, 0, 0);
	shader_reset();
} else {
	draw_surface(application_surface, 0, 0);
}