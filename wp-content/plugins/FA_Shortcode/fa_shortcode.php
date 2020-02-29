<?php 
/*
plugin name: Fa Shortcode
Plugin URI:  https://www.dwinsteam.com/
Description: Top :) under header area text scrolling automatically. 
Version:     DT_ts 1.0
Author:      DwinsTeam
Author URI:  https://www.dwinsteam.com
Text Domain: dtp_shortcode
Domain Path: 
License:     
*/

function fa_social_connect($atts,$content=null){

	$attr = extract(shortcode_atts(array(
		'href'   => '#',
		'sname'  => 'facebook',
		'target' => '_blank',
		'class'  => ''
	),$atts)); 

	return '<a href="'.$href.'" target= "'.$target.'" class="'.$class.'">'.$sname.' </a>'; 
}	
function fa_social_init(){
	add_shortcode('fa_shortcode','fa_social_connect'); 	
}
add_action('init','fa_social_init');