<?php get_header(); ?>
		
		<div class="site-main-container">
			<!-- Start top-post Area -->
<?php get_template_part('slider'); ?>

single page
			<!-- Start latest-post Area -->
			<section class="latest-post-area pb-120">
				<div class="container no-padding">
					<div class="row">
						<div class="col-lg-8 post-list">
							<!-- Start latest-post Area -->

							<div class="latest-post-wrap">
								<h4 class="cat-title">Latest News</h4>

								<?php 
									if ( have_posts() ) : 
										while ( have_posts() ) : the_post(); 
								?>

								
								<div class="single-latest-post row align-items-center">
									<div class="col-lg-5 post-left">
										<div class="feature-img relative">
											<div class="overlay overlay-bg"></div>
											<?php the_post_thumbnail('myFituredImage', array('class' => 'my-post-thumb')); ?>
										</div>
										<ul class="tags">
											<li><a href="<?php the_permalink(); ?>">Read More>> </a></li>
										</ul>
									</div>
									<div class="col-lg-7 post-right">
										<a href="image-post.html">
											<h4><?php the_title(); ?></h4>
										</a>
										<ul class="meta">
											<li><a href="#"><span class="lnr lnr-user"></span><?php the_author(); ?></a></li>
											<li><a href="#"><span class="lnr lnr-calendar-full"></span><?php the_time('M d,Y'); ?> </a></li>
											<li><a href="#"><span class="lnr lnr-bubble"></span><?php comments_popup_link('No Comments >>', '1 Comments >>','% Comments >>'); ?></a></li>
										</ul>
										<p class="excert">
											<?php the_excerpt(); ?>	
										</p>
									</div>
								</div>


									<?php
								endwhile; 
								else :
									esc_html_e('Content IF post not found !.');		
								endif; 
							?>
							</div>

	

							


							<!-- End latest-post Area -->
							
							<!-- Start banner-ads Area -->
							<div class="col-lg-12 ad-widget-wrap mt-30 mb-30">
								<img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/img/banner-ad.jpg" alt="">
							</div>
							<!-- End banner-ads Area -->
							<!-- Start popular-post Area -->
							<div class="popular-post-wrap">
								<h4 class="title">Popular Posts</h4>
								<div class="feature-post relative">
									<div class="feature-img relative">
										<div class="overlay overlay-bg"></div>
										<img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/img/f1.jpg" alt="">
									</div>
									<div class="details">
										<ul class="tags">
											<li><a href="#">Food Habit</a></li>
										</ul>
										<a href="image-post.html">
											<h3>A Discount Toner Cartridge Is Better Than Ever.</h3>
										</a>
										<ul class="meta">
											<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
											<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
											<li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
										</ul>
									</div>
								</div>
								<div class="row mt-20 medium-gutters">
									<div class="col-lg-6 single-popular-post">
										<div class="feature-img-wrap relative">
											<div class="feature-img relative">
												<div class="overlay overlay-bg"></div>
												<img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/img/f2.jpg" alt="">
											</div>
											<ul class="tags">
												<li><a href="#">Travel</a></li>
											</ul>
										</div>
										<div class="details">
											<a href="image-post.html">
												<h4>A Discount Toner Cartridge Is
												Better Than Ever.</h4>
											</a>
											<ul class="meta">
												<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
												<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
												<li><a href="#"><span class="lnr lnr-bubble"></span>06 </a></li>
											</ul>
											<p class="excert">
												Lorem ipsum dolor sit amet, consecteturadip isicing elit, sed do eiusmod tempor incididunt ed do eius.
											</p>
										</div>
									</div>
									<div class="col-lg-6 single-popular-post">
										<div class="feature-img-wrap relative">
											<div class="feature-img relative">
												<div class="overlay overlay-bg"></div>
												<img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/img/f3.jpg" alt="">
											</div>
											<ul class="tags">
												<li><a href="#">Travel</a></li>
											</ul>
										</div>
										<div class="details">
											<a href="image-post.html">
												<h4>A Discount Toner Cartridge Is
												Better Than Ever.</h4>
											</a>
											<ul class="meta">
												<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
												<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
												<li><a href="#"><span class="lnr lnr-bubble"></span>06 </a></li>
											</ul>
											<p class="excert">
												Lorem ipsum dolor sit amet, consecteturadip isicing elit, sed do eiusmod tempor incididunt ed do eius.
											</p>
										</div>
									</div>
								</div>
							</div>
							<!-- End popular-post Area -->
							<!-- Start relavent-story-post Area -->
							<div class="relavent-story-post-wrap mt-30">
								<h4 class="title">Relavent Stories</h4>
								<div class="relavent-story-list-wrap">
									<div class="single-relavent-post row align-items-center">
										<div class="col-lg-5 post-left">
											<div class="feature-img relative">
												<div class="overlay overlay-bg"></div>
												<img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/img/r1.jpg" alt="">
											</div>
											<ul class="tags">
												<li><a href="#">Lifestyle</a></li>
											</ul>
										</div>
										<div class="col-lg-7 post-right">
											<a href="image-post.html">
												<h4>A Discount Toner Cartridge Is
												Better Than Ever.</h4>
											</a>
											<ul class="meta">
												<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
												<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
												<li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
											</ul>
											<p class="excert">
												Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
											</p>
										</div>
									</div>
									<div class="single-relavent-post row align-items-center">
										<div class="col-lg-5 post-left">
											<div class="feature-img relative">
												<div class="overlay overlay-bg"></div>
												<img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/img/r2.jpg" alt="">
											</div>
											<ul class="tags">
												<li><a href="#">Science</a></li>
											</ul>
										</div>
										<div class="col-lg-7 post-right">
											<a href="image-post.html">
												<h4>A Discount Toner Cartridge Is
												Better Than Ever.</h4>
											</a>
											<ul class="meta">
												<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
												<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
												<li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
											</ul>
											<p class="excert">
												Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
											</p>
										</div>
									</div>
									<div class="single-relavent-post row align-items-center">
										<div class="col-lg-5 post-left">
											<div class="feature-img relative">
												<div class="overlay overlay-bg"></div>
												<img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/img/r3.jpg" alt="">
											</div>
											<ul class="tags">
												<li><a href="#">Travel</a></li>
											</ul>
										</div>
										<div class="col-lg-7 post-right">
											<a href="image-post.html">
												<h4>A Discount Toner Cartridge Is
												Better Than Ever.</h4>
											</a>
											<ul class="meta">
												<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
												<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
												<li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
											</ul>
											<p class="excert">
												Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
											</p>
										</div>
									</div>
								</div>
							</div>
							<!-- End relavent-story-post Area -->
						</div>
						<?php get_template_part('sidebar'); ?>
					</div>
				</div>
			</section>
			<!-- End latest-post Area -->
		</div>
<?php get_footer(); ?>