<?php

function DwinsTeam_register_menu(){
	if(function_exists('register_nav_menu')){
		register_nav_menu('Menu_name1', __('Menu Name 1', 'GTraders')); 
		register_nav_menu('menu_name2', __('Menu Name 2', 'GTraders')); 
		register_nav_menu('menu_name_3', __('Menu Name 3', 'GTraders')); 
	} 
}
add_action('init','DwinsTeam_register_menu');