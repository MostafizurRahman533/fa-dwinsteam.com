<?php

/*****************************************************
*Menu Registration
*/

function DwinsTeam_register_menu(){
	if(function_exists('register_nav_menu')){
		register_nav_menu('Menu_name1', __('Menu Name 1', 'RevealDT')); 
		register_nav_menu('menu_name2', __('Menu Name 2', 'RevealDT')); 
		register_nav_menu('menu_name_3', __('Menu Name 3', 'RevealDT')); 
	} 
}
add_action('init','DwinsTeam_register_menu');

/****************************************************
*Feature Image Ragistratio
*/
add_theme_support('post-thumbnails',array('post','page','slider-items'));
set_post_thumbnail_size(200,200,true);  
add_image_size('myFituredImage', 300, 300, true);
add_image_size('slider-items', 1900, 900, true); 

/****************************************************
*Widget Registration 
*/

function widgets_sidebar(){
			register_sidebar( array(
			'name'          => __( 'Home Page Sidebar Top', 'prothom-alo' ),
			'id'            => 'widget-home-top',
			'before_widget' => '<div class="widget"><div class="category-sidebar">',
			'after_widget'  => '</div></div>',
			'before_title'  => '<h2 class="headbar">',
			'after_title'   => '</h2> ',
		) );
	}
	add_action( 'widgets_init', 'widgets_sidebar' );

/****************************************************
*Custom Post Registration / Slider
*/

function slider_gallery(){
	register_post_type('slider-items', array(
		'labels' => array(
			'name' => __('Slider'),
			'singular_name' => __('Slider'),
			'menu_name' => __('Slider Gallery'),
			'name_admin_bar' => __('Add Slider'),
			'all_items' => __('All Slider'),
			'add_new' => __('Add Slider'),
			'add_new_item' => __('Add New Slider'),
			'edit_item' => __('Edit Slider'),
			'new_item' => __('New Slider'),
			'view_item' => __('View Slider'),
			'search_items' => __('Search Slider')
		),
		'public' => true,
		'has_archive' => true, 
		'rewrite' => array('slug' => 'slider-items'),
		'menu_position' => 2, 
		'menu_icon' => 'dashicons-products',
		'supports' => array('title','thumbnail','editor')
	));
}
add_action('init','slider_gallery'); 

/**************************************************
*Custom Taxonomy / Custom Post
*/

function slider_gallery_taxonomy(){
	register_taxonomy(
		'slider-items', //The name of the taxonomy. Name should be in slug form (Must Not Contain Capital Letters or Spaces). 
		'slider-items', //post type name 
		array(
			'hierarchical' => true,
			'label' => 'Slider Category', //Display Name..
			'query_var' => true, 
			'rewrite' => array(
				'slug' => 'slider-category', //This is controls the base slug that will display before each term 
				'with_front' =>true //Don't display the category base before 
			)
		) 
	);
}
add_action('init','slider_gallery_taxonomy');

/************************************************
* Custom Meta Box
*/

function slider_custom_meta() {
	add_meta_box( 'slider_meta', __( 'Others Section', 'TextDomain_name' ), 'slider_meta_callback', 'slider-items' );
}
add_action( 'add_meta_boxes', 'slider_custom_meta' );