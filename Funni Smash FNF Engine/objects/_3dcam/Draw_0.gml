if(cam_enabled){
var c = camera_get_active();
camera_set_view_mat(c,matrix_build_lookat(xfrom,yfrom,zfrom,xto,yto,zto,xup,yup,zup))
var mat = matrix_build_projection_perspective_fov(fov,(window_get_width())/(window_get_height()),1,32000)
//var mat = matrix_build_projection_ortho(window_get_width,window_get_height(),1,32000)
camera_set_proj_mat(c,mat)
camera_apply(c);
}else{
/*var cam = camera_get_active();
camera_set_view_mat(cam,matrix_build_lookat(xfrom,yfrom,zfrom,xto,yto,zto,xup,yup,zup))
//var mat = matrix_build_projection_ortho()
var mat = matrix_build_projection_ortho(window_get_width,window_get_height(),1,32000)
camera_set_proj_mat(cam,mat)
camera_apply(cam);*/
}