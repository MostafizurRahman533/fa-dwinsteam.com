<?php

/*****************************************************************************
*SITE LOGO OPTIONS..
*/
function MagazineDT_custom_logo_setup() {
	 $defaults = array(
		 'height'      => 200,
		 'width'       => 400,
		 'flex-height' => true,
		 'flex-width'  => true,
		 'header-text' => array( 'site-title', 'site-description' ),
	);
	add_theme_support( 'custom-logo', $defaults );
}
add_action( 'after_setup_theme', 'MagazineDT_custom_logo_setup' );

/*****************************************************************************
*Menu Registration
*/
function MagazineDT_register_menu(){
	if(function_exists('register_nav_menu')){
		register_nav_menu('Top_menu', __('Top Menu', 'MagazineDT')); 
		register_nav_menu('Footer_Menu_1', __('Footer Menu 1', 'MagazineDT'));
		register_nav_menu('Footer_Menu_2', __('Footer Menu 2', 'MagazineDT'));
		register_nav_menu('Footer_Menu_3', __('Footer Menu 3', 'MagazineDT'));
		register_nav_menu('Footer_Menu_4', __('Footer Menu 4', 'MagazineDT')); 
	} 
}
add_action('init','MagazineDT_register_menu');

/****************************************************************************
*WIDGET REGISTER 
*/
	function Widgets_TopAdd(){
			register_sidebar( array(
			'name'          => __( 'Top Adds', 'prothom-alo' ),
			'description' => 'Image size must will 728X93 Px',
			'id'            => 'top_add',
			'before_widget' => '<div class="col-lg-8 col-md-8 col-sm-12 logo-right no-padding ads-banner">',
			'after_widget'  => '</div>',
			'before_title'  => '',
			'after_title'   => '',
			'class' 		=> 'img-fluid'
		) );
	}
	add_action( 'widgets_init', 'Widgets_TopAdd' );

/*************************************************
*Featured Image Registration
*/
add_theme_support('post-thumbnails',array('post','page'));
set_post_thumbnail_size(200,200,true);  
add_image_size('myFituredImage', 300, 300, true);