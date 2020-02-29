<!DOCTYPE HTML>
<html <?php language_attributes(); ?>>
  <head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title><?php bloginfo('name'); ?>    </title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/assets/img/favicon.ico" type="image/x-icon">

    <!-- Font awesome -->
    <link href="<?php echo get_template_directory_uri(); ?>/assets/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<?php echo get_template_directory_uri(); ?>/assets/css/bootstrap.css" rel="stylesheet">   
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/css/slick.css">    
    <!-- Date Picker -->
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/css/bootstrap-datepicker.css">   
     <!-- Gallery Lightbox -->
    <link href="<?php echo get_template_directory_uri(); ?>/assets/css/magnific-popup.css" rel="stylesheet"> 
    <!-- Theme color -->
    <link id="switcher" href="<?php echo get_template_directory_uri(); ?>/assets/css/theme-color/default-theme.css" rel="stylesheet">     

    <!-- Main style sheet -->
    <link href="<?php echo get_stylesheet_uri(); ?>" rel="stylesheet">    

    <!-- Prata for body  -->
    <link href='<?php echo get_template_directory_uri(); ?>/assets/css/theme-color/parate.css' rel='stylesheet' type='text/css'>
    <!-- Tangerine for small title -->
    <link href='<?php echo get_template_directory_uri(); ?>/assets/css/theme-color/tangrien.css' rel='stylesheet' type='text/css'>   
    <!-- Open Sans for title -->
    <link href='<?php echo get_template_directory_uri(); ?>/assets/css/theme-color/open.css' rel='stylesheet' type='text/css'>
    <?php wp_head(); ?>
  </head>
  <body>

  <!--START SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#">
      <i class="fa fa-angle-up"></i>
    </a>
  <!-- END SCROLL TOP BUTTON -->

  <!-- Start header section -->
  <header id="mu-header">  
    <nav class="navbar navbar-default mu-main-navbar" role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

          <!-- LOGO -->       

           <!--  Text based logo  -->
          <a class="navbar-brand" href="<?php echo esc_url( home_url( '/' ) ); ?>" style="margin-left: -200px;">
<?php 
  if ( function_exists( 'the_custom_logo' ) ) {
    the_custom_logo();
  }
?>
 
</a> 

		      <!--  Image based logo  -->
          <!-- <a class="navbar-brand" href="index.html"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/logo.png" alt="Logo img"></a>  -->
         

        </div>
<div>
<?php 
        wp_nav_menu(
             array(
                'theme_location' => 'header_menu',
                'cintainer_id'  =>  'navbar',
                'container_class' => 'navbar-collapse collapse',
                'items_wrap' => '<ul class="nav navbar-nav navbar-right mu-main-nav">%3$s</ul>'
              )
         ); 
?>

</div>
     
      </div>          
    </nav> 
  </header>
  <!-- End header section -->