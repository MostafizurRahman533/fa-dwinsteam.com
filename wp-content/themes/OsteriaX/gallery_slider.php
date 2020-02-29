<!-- Start Gallery -->
  <section id="mu-gallery">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-gallery-area">

            <div class="mu-title">
              <span class="mu-subtitle">Discover</span>
              <h2>Our Gallery</h2>
            </div>

            <div class="mu-gallery-content">
            
              <!-- Start gallery image -->
              <div class="mu-gallery-body">
                <!-- start single gallery image -->

<?php
    global $post;
    $i=0;
    $args = array('posts_per_page' => -1, 'post_type'=> 'our-items','page'=> $paged, 'order' => 'DESC');
    $myposts = get_posts( $args );
    foreach( $myposts as $post ) : setup_postdata($post);
    $large_image_url = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'our-items');  
    $i++;
    $this_id = get_the_ID(); 
    global $wpdb;
    $m_name_subtitle = '';
    $tbl_postmeta = $wpdb->prefix."postmeta";           
    $meta_name_subtitle = 'meta-subtitle-slider';           
    $query_result = "select * from $tbl_postmeta where post_id='$this_id' AND meta_key='$meta_name_subtitle'";
    $result = $wpdb->get_results($query_result);
    foreach($result as $row){
        $m_name_subtitle = $row->meta_value;
    }
?>
<!-- ---------------------------------------------------------------------- -->
               <!--<div class="mu-single-gallery col-md-4">
                    <div class="mu-single-gallery-item">
                      <figure class="mu-single-gallery-img">
                        <a class="mu-imglink" href="assets/img/gallery/1.jpg">
                          <img alt="img" src="<?php echo $large_image_url[0]; ?>">
                           <div class="mu-single-gallery-info">
                              <img class="mu-view-btn" src="<?php echo $large_image_url[0]; ?>" alt="plus icon img">
                          </div> 
                        </a>
                      </figure>            
                    </div>
                </div>-->

<img id="myImg" src="<?php echo $large_image_url[0]; ?>" alt="Snow" style="width:100%;max-width:300px">

<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="<?php echo $large_image_url[0]; ?>" id="img01">
  <div id="caption"></div>
</div>

            
                <!-- End single gallery image -->
<!-- ---------------------------------------------------------------------- -->
<?php endforeach;?>
           