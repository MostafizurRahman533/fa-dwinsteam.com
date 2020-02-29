
  <!-- Start Footer -->
  <footer id="mu-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
        <div class="mu-footer-area">
           <div class="mu-footer-social">
            <a href="<?php the_author_meta('facebook');?>"><span class="fa fa-facebook"></span></a>
            <a href="<?php the_author_meta('twitter');?>"><span class="fa fa-twitter"></span></a>
            <a href="<?php the_author_meta('google');?>"><span class="fa fa-google-plus"></span></a>
            <a href="<?php the_author_meta('linkedin');?>"><span class="fa fa-linkedin"></span></a>
            <a href="<?php the_author_meta('youtube');?>"><span class="fa fa-youtube"></span></a>
          </div>
          <div class="mu-footer-copyright">
            <p>&copy; Copyright <a rel="nofollow" href="http://dwinsteam.com/">DwinsTeam</a>. All right reserved.</p>
          </div>         
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- End Footer -->
  
  <!-- jQuery library -->
  <script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery.min.js"></script>  
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="<?php echo get_template_directory_uri(); ?>/assets/js/bootstrap.min.js"></script>   
  <!-- Slick slider -->
  <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/assets/js/slick.js"></script>
  <!-- Counter -->
  <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/assets/js/simple-animated-counter.js"></script>
  <!-- Gallery Lightbox -->
  <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery.magnific-popup.min.js"></script>
  <!-- Date Picker -->
  <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/assets/js/bootstrap-datepicker.js"></script> 
  <!-- Ajax contact form  -->
  <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/assets/js/app.js"></script>
 
  <!-- Custom js -->
  <script src="<?php echo get_template_directory_uri(); ?>/assets/js/custom.js"></script> 

      <script src="<?php echo get_template_directory_uri(); ?>/assets/js/html15.js"></script>
      <script src="<?php echo get_template_directory_uri(); ?>/assets/js/imag.js"></script>

      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

<?php wp_footer(); ?>
  </body>
</html>