/*
window_set_fullscreen(true);
aspecto=display_get_width()/display_get_height();
view_xview[0]=0;
view_yview[0]=0;
view_wview[0]=round(aspecto*480);
view_hview[0]=480;
view_xport[0]=0;
view_yport[0]=0;
view_wport[0]=display_get_width();
view_hport[0]=display_get_height();
display_set_gui_size(round(aspecto*480),480);
*/
if (argument0==true) {
    view_visible[0]=false;
    window_set_fullscreen(false);
    display_reset(4,true);
    window_set_size(display_get_width()/3,display_get_height()/3);
    window_center();
} else {
    display_reset(4,true);
    aspecto=display_get_width()/display_get_height();
    view_visible[0]=false;
    window_set_size(display_get_width(),display_get_height());
    window_center();
    view_xview[0]=0;
    view_yview[0]=0;
    view_wview[0]=display_get_width();
    view_hview[0]=display_get_height();
    view_xport[0]=0;
    view_yport[0]=0;
    view_wport[0]=display_get_width();
    view_hport[0]=display_get_height();
    display_set_gui_size(round(aspecto*display_get_height()),display_get_height());
    window_set_fullscreen(true);
    view_visible[0]=true;
}