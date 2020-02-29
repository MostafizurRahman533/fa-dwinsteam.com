<?php 

/*
plugin name: TopScroll
Plugin URI:  https://www.dwinsteam.com/
Description: Top :) under header area text scrolling automatically. 
Version:     DT_ts 1.0
Author:      DwinsTeam
Author URI:  https://www.dwinsteam.com
Text Domain: dtp_topscroll
Domain Path: 
License:     
*/

function message_default(){
	echo '<marquee>Scroll Text Line ...</marquee>';
}
add_action('init','message_default'); 
