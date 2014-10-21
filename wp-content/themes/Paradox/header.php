<?php
/**
 * The theme header
 * 
 * @package bootstrap-basic
 */
?>
<!DOCTYPE html>
<!--[if lt IE 7]>  <html class="no-js lt-ie9 lt-ie8 lt-ie7" <?php language_attributes(); ?>> <![endif]-->
<!--[if IE 7]>     <html class="no-js lt-ie9 lt-ie8" <?php language_attributes(); ?>> <![endif]-->
<!--[if IE 8]>     <html class="no-js lt-ie9" <?php language_attributes(); ?>> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" <?php language_attributes(); ?>> <!--<![endif]-->
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<meta name="description" content="<?php bloginfo('description'); ?>">
		<meta name="author" content="Luke Sullivan">
		<title><?php wp_title('|', true, 'right'); ?></title>		
		<link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon.png">
		<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">	

		<?php wp_head(); ?>
	
		<!--[if lte IE 8]>
			<meta http-equiv="REFRESH" content="0;url=http://www.browsehappy.com/">
		<![endif]-->	
	</head>
	<body <?php body_class(); ?>>

		<!-- Google Analytics -->	

		<!--[if lte IE 8]>
			<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
		<![endif]-->	

		<div id="bg">
			<img style="display:none;" src="<?php echo get_template_directory_uri(); ?>/assets/images/bg.jpg" alt="<?php wp_title(); ?>">
		</div>				
		
		<?php do_action('before'); ?> 
		<header>				
			<section class="top-navbar">				
				<nav class="navbar navbar-default" role="navigation">
					<div class="container">						
						<div class="navbar-header">																	
							<button type="button" class="navbar-toggle navbar-right" data-toggle="collapse" data-target=".navbar-primary-collapse">
								<span class="sr-only"><?php _e('Toggle navigation', 'bootstrap-basic'); ?></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>									
							</button>
							<a class="navbar-brand" href="<?php echo esc_url(home_url('/')); ?>" title="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>">
								<?php // echo esc_attr(get_bloginfo('name', 'display')); ?>
								<img style="max-width:210px; margin-top: -20px;" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png">
							</a>					
						</div>						
						<div class="collapse navbar-collapse navbar-primary-collapse">
							<a class="btn btn-primary navbar-btn navbar-right hidden-xs" href="/training">
								<i class="fa fa-calendar"></i>Schedule Training
							</a>     							
							<?php wp_nav_menu(array('theme_location' => 'primary', 'container' => false, 'menu_class' => 'nav navbar-nav navbar-right', 'walker' => new BootstrapBasicMyWalkerNavMenu())); ?>
						</div><!--.navbar-collapse-->
					</div>
				</nav>				
			</section> <!-- section-navbar -->
		</header>		
			
			
		<div class="body-content">

			<!-- Mobile Landing Section -->
			<section class="mobile-landing visible-xs col-xs-12">
			    <div class="col-xs-12 col-no-padding-xs phone">
				    <a class="btn btn-primary btn-lg btn-block" href="tel:8179144898">
				        (817) 914-4898
				    </a> 
			    </div>
			    <div class="col-xs-12 col-no-padding-xs call-to-action">
				    <a class="btn btn-primary btn-lg btn-block col-xs-12" href="/schedule-service" style="margin-top:0px">
				        <i class="fa fa-calendar fa-1x"></i>
				        Schedule Service
				    </a>
			    </div>
			</section>			