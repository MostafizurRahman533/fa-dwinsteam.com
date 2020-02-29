<?php

/*******************************************
* Logo set up
*/

function themename_custom_logo_setup() {
	 $defaults = array(
		 'height'      => 20,
		 'width'       => 50,
		 'flex-height' => true,
		 'flex-width'  => true,
		 'header-text' => array( 'site-title', 'site-description' ),
	);
	

	$defaults = array(
    'default-image'          => '',
    'default-preset'         => 'default', // 'default', 'fill', 'fit', 'repeat', 'custom'
    'default-position-x'     => 'left',    // 'left', 'center', 'right'
    'default-position-y'     => 'top',     // 'top', 'center', 'bottom'
    'default-size'           => 'auto',    // 'auto', 'contain', 'cover'
    'default-repeat'         => 'no-repeat',  // 'repeat-x', 'repeat-y', 'repeat', 'no-repeat'
    'default-attachment'     => 'fixed',  // 'scroll', 'fixed'
    'default-color'          => '',
    'wp-head-callback'       => '_custom_background_cb',
    'admin-head-callback'    => '',
    'admin-preview-callback' => '',
);
	add_theme_support( 'custom-logo', $defaults );
	add_theme_support( 'custom-background', $defaults );
}
add_action( 'after_setup_theme', 'themename_custom_logo_setup' );

/**************************************
* Menu Registration
*/

function DwinsTeam_register_menu(){
	if(function_exists('register_nav_menu')){
		register_nav_menu('header_menu', __('Header Menu', 'OsteriaX')); 
		register_nav_menu('center_menu', __('Center Menu', 'OsteriaX')); 
	} 
}
add_action('init','DwinsTeam_register_menu');

/************************************
*Feature Image Ragistration
*/

add_theme_support('post-thumbnails',array('post','page','slider-items','about-items','img-items','our-items','chef-items'));
set_post_thumbnail_size(200,200,true);  
add_image_size('myFituredImage', 300, 300, true);
add_image_size('slider-items', 1900, 900, true);  
add_image_size('about-items', 600, 443, true);  
add_image_size('img-items', 2200, 750, true); 
add_image_size('our-items', 1080, 760, true);
add_image_size('chef-items', 1080, 760, true);

/***********************************
*Slider item 
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
		'menu_position' => 1, 
		'menu_icon' => 'dashicons-products',
		'supports' => array('title','thumbnail','editor')
	));
}
add_action('init','slider_gallery'); 

/*************************************
*Custom Texomony
*/

function slider_gallery_taxonomy(){
	register_taxonomy(
		'slider-items',  
		'slider-items',  
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

/**********************************
*Creat Custom meta option
*/

function slider_custom_meta() {
	add_meta_box( 'slider_meta', __( 'Others Section', 'OsteriaX' ), 'slider_meta_callback', 'slider-items' );
}
add_action( 'add_meta_boxes', 'slider_custom_meta' );

/*********************************
*Dynamic Custom meta option
*/

function slider_meta_callback( $post ) {
	wp_nonce_field( basename( __FILE__ ), 'slider_nonce' ); //slider_stored_meta
	$slider_stored_meta = get_post_meta( $post->ID );
	?>
	<input type="text" name="meta-subtitle-slider" value="<?php if ( isset ( $slider_stored_meta['meta-subtitle-slider'] ) ) echo $slider_stored_meta['meta-subtitle-slider'][0]; ?>" style="width:100%;font-size:16px; margin-bottom:15px; " placeholder="Enter Sub Title Here">

	<input type="text" name="meta-url-name-slider" value="<?php if ( isset ( $slider_stored_meta['meta-url-name-slider'] ) ) echo $slider_stored_meta['meta-url-name-slider'][0]; ?>" style="width:100%;font-size:16px;" placeholder="Enter URL Name Here">	
	<?php
}

/*****************************
*
*/

function slider_meta_save( $post_id ) {
	// Checks save status
	$is_autosave = wp_is_post_autosave( $post_id );
	$is_revision = wp_is_post_revision( $post_id );
	$is_valid_nonce = ( isset( $_POST[ 'slider_stored_meta' ] ) && wp_verify_nonce( $_POST[ 'slider_stored_meta' ], basename( __FILE__ ) ) ) ? 'true' : 'false';
 
	// Exits script depending on save status
	if ( $is_autosave || $is_revision || !$is_valid_nonce ) {
		return;
	}
 
	// Checks for input and sanitizes/saves if needed
	if( isset( $_POST[ 'meta-subtitle-slider' ] ) ) {
		update_post_meta( $post_id, 'meta-subtitle-slider', sanitize_text_field( $_POST[ 'meta-subtitle-slider' ] ) );
	}
	if( isset( $_POST[ 'meta-url-name-slider' ] ) ) {
		update_post_meta( $post_id, 'meta-url-name-slider', sanitize_text_field( $_POST[ 'meta-url-name-slider' ] ) );
	}
}
add_action( 'save_post', 'slider_meta_save' );

/*******************************************
*About option 
*/

function about_us(){
	register_post_type('about-items', array(
		'labels' => array(
			'name' => __('About'),
			'singular_name' => __('About'),
			'menu_name' => __('About Info'),
			'name_admin_bar' => __('Add About Us'),
			'all_items' => __('All Info'),
			'add_new' => __('Add Info'),
			'add_new_item' => __('Add New Info'),
			'edit_item' => __('Edit Info'),
			'new_item' => __('New Info'),
			'view_item' => __('View Info'),
			'search_items' => __('Search Info')
		),
		'public' => true,
		'has_archive' => true, 
		'rewrite' => array('slug' => 'about-items'),
		'menu_position' => 3, 
		'menu_icon' => 'dashicons-products',
		'supports' => array('title','thumbnail','editor')
	));
}
add_action('init','about_us');

/*************************************
*Custom Texomony About 
*/

function about_texonomy(){
	register_taxonomy(
		'about-info',  
		'about-info',  
		array(
			'hierarchical' => true,
			'label' => 'About Category', //Display Name..
			'query_var' => true, 
			'rewrite' => array(
				'slug' => 'about-category', //This is controls the base slug that will display before each term 
				'with_front' =>true //Don't display the category base before 
			)
		) 
	);
}
add_action('init','about_texonomy');

/**********************************
*Fixed Image
*/

function center_img(){
	register_post_type('img-items', array(
		'labels' => array(
			'name' => __('Image'),
			'singular_name' => __('Image'),
			'menu_name' => __('Fixed Image'),
			'name_admin_bar' => __('Add Image'),
			'all_items' => __('All Image'),
			'add_new' => __('Add Image'),
			'add_new_item' => __('Add New Image'),
			'edit_item' => __('Edit Image'),
			'new_item' => __('New Image'),
			'view_item' => __('View Image'),
			'search_items' => __('Search Image')
		),
		'public' => true,
		'has_archive' => true, 
		'rewrite' => array('slug' => 'img-items'),
		'menu_position' => 5, 
		'menu_icon' => 'dashicons-products',
		'supports' => array('title','thumbnail','editor')
	));
}
add_action('init','center_img');

/*************************************
*Custom Texomony About 
*/

function img_texonomy(){
	register_taxonomy(
		'img-info',  
		'img-info',  
		array(
			'hierarchical' => true,
			'label' => 'Img Category', //Display Name..
			'query_var' => true, 
			'rewrite' => array(
				'slug' => 'img-category', //This is controls the base slug that will display before each term 
				'with_front' =>true //Don't display the category base before 
			)
		) 
	);
}
add_action('init','img_texonomy');

/*************************************
*social link option creating
*/ 
	add_action( 'show_user_profile', 'my_show_extra_profile_fields' );
	add_action( 'edit_user_profile', 'my_show_extra_profile_fields' );

	function my_show_extra_profile_fields( $user ) { 
?>
	<h3>Step 2: Extra profile information </h3>
	<table class="form-table">
		<tr>
			<th><label for="facebook">Facebook</label></th>
			<td>
				<input type="text" name="facebook" id="facebook" value="<?php echo esc_attr( get_the_author_meta( 'facebook', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your facebook username. [e.g http://www.facebook.com/username]</span>
			</td>
		</tr>
		<tr>
			<th><label for="twitter">Twitter</label></th>
			<td>
				<input type="text" name="twitter" id="twitter" value="<?php echo esc_attr( get_the_author_meta( 'twitter', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your twitter username. [e.g http://www.twitter.com/username]</span>
			</td>
		</tr>
		<tr>
			
			<th><label for="google">Google +</label></th>
			<td>
				<input type="text" name="google+" id="google+" value="<?php echo esc_attr( get_the_author_meta( 'google+', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your google+ username. [e.g http://www.google+.com/username]</span>
			</td>
		</tr>

		<tr>
			<th><label for="linkedln">LinkedIn</label></th>
			<td>
				<input type="text" name="linkedln" id="linkedln" value="<?php echo esc_attr( get_the_author_meta( 'linkedln', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your linkedln username. [e.g http://www.linkedln.com/username]</span>
			</td>
		</tr>
				<tr>
			<th><label for="youtube">YouTube</label></th>
			<td>
				<input type="text" name="youtube" id="youtube" value="<?php echo esc_attr( get_the_author_meta( 'youtube', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your youtube username. [e.g http://www.youtube.com/username]</span>
			</td>
		</tr>
	</table>
<?php } 

/********************************************
*social link dynamic options 
*/

function my_save_extra_profile_fields( $user_id ) {
			if ( !current_user_can( 'edit_user', $user_id ) )
				return false;

				/* Copy and paste this line for additional fields. Make sure to change 'facebook' to the field ID. */
				update_user_meta( $user_id, 'facebook', $_POST['facebook'] );
				update_user_meta( $user_id, 'twitter', $_POST['twitter'] );
				update_user_meta( $user_id, 'google+', $_POST['google+'] );
				update_user_meta( $user_id, 'linkedln', $_POST['linkedln'] );
				update_user_meta( $user_id, 'youtube', $_POST['youtube'] );
			}

		add_action( 'personal_options_update', 'my_save_extra_profile_fields' );
		add_action( 'edit_user_profile_update', 'my_save_extra_profile_fields' );

/***********************************************
* Our Gellary
*/

function our_gallery(){
	register_post_type('our-items', array(
		'labels' => array(
			'name' => __('Gallery'),
			'singular_name' => __('Our Gallery'),
			'menu_name' => __('Our Gallery'),
			'name_admin_bar' => __('Add Gallery'),
			'all_items' => __('All Gallery'),
			'add_new' => __('Add Gallery'),
			'add_new_item' => __('Add New Gallery'),
			'edit_item' => __('Edit Gallery'),
			'new_item' => __('New Gallery'),
			'view_item' => __('View Gallery'),
			'search_items' => __('Search Gallery')
		),
		'public' => true,
		'has_archive' => true, 
		'rewrite' => array('slug' => 'our-items'),
		'menu_position' => 6, 
		'menu_icon' => 'dashicons-products',
		'supports' => array('thumbnail')
	));
}
add_action('init','our_gallery'); 

/*************************************
*Custom Texomony
*/

function our_gallery_taxonomy(){
	register_taxonomy(
		'our-items',  
		'our-items',  
		array(
			'hierarchical' => true,
			'label' => 'Gallery Category', //Display Name..
			'query_var' => true, 
			'rewrite' => array(
				'slug' => 'Gallery-category', //This is controls the base slug that will display before each term 
				'with_front' =>true //Don't display the category base before 
			)
		) 
	);
}
add_action('init','our_gallery_taxonomy');
	
/***********************************
*Chef Gellary 
*/

function chef_gallery(){
	register_post_type('chef-items', array(
		'labels' => array(
			'name' => __('Chef'),
			'singular_name' => __('Chef'),
			'menu_name' => __('Chef Gallery'),
			'name_admin_bar' => __('Add Chef'),
			'all_items' => __('All Chef'),
			'add_new' => __('Add Chef'),
			'add_new_item' => __('Add New Chef'),
			'edit_item' => __('Edit Chef'),
			'new_item' => __('New Chef'),
			'view_item' => __('View Chef'),
			'search_items' => __('Search Chef')
		),
		'public' => true,
		'has_archive' => true, 
		'rewrite' => array('slug' => 'chef-items'),
		'menu_position' => 1, 
		'menu_icon' => 'dashicons-products',
		'supports' => array('title','thumbnail','editor')
	));
}
add_action('init','chef_gallery'); 

/*************************************
*Custom Texomony
*/

function chef_gallery_taxonomy(){
	register_taxonomy(
		'chef-items',  
		'chef-items',  
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
add_action('init','chef_gallery_taxonomy');

/**********************************
*Creat Custom meta option
*/

function chef_custom_meta() {
	add_meta_box( 'chef_meta', __( 'Others Section', 'OsteriaX' ), 'chef_meta_callback', 'chef-items' );
}
add_action( 'add_meta_boxes', 'chef_custom_meta' );


