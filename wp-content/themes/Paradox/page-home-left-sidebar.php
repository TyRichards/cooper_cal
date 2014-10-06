<?php
/*
Template Name: Home Old
*/
?>

<?php get_header(); ?>

<section class="masthead">
    <div class="background">&nbsp;</div>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <h2 class="text-center"><?php bloginfo('description'); ?></h2>  
                <div class="text-center" style="margin-top:25px">
                    <a href="#home"><i class="fa fa-chevron-down fa-3x"></i></a>
                </div>              
            </div>
        </div>
    </div>
</section>

<section class="primary-content" id="home">           
    <div class="sidebar background landscape">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div>
                        <!-- <img src="startup/common-files/img/content/landscape.jpg" alt=""> -->
                        <?php 
                            if ( has_post_thumbnail() ) { // check if the post has a Post Thumbnail assigned to it.
                            the_post_thumbnail('sidebar-thumb', array('class' => '' ));
                            } 
                            else {
                                ?><img src="<?php echo get_template_directory_uri(); ?>/assets/images/sidebar-default.jpg" class="feature-image attachment-sidebar-thumb wp-post-image img-rounded col-md-9 col-no-padding" alt="<?php wp_title('|', true, 'right'); ?>"><?php
                            }
                        ?> 
                        <?php get_sidebar('default'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-col container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-5">
                <?php
                    while (have_posts()) {
                        the_post();

                        get_template_part('content', 'page');

                        echo "\n\n";
                        // If comments are open or we have at least one comment, load up the comment template
                        if (comments_open() || '0' != get_comments_number()) {
                            comments_template();
                        }

                        echo "\n\n";

                    } //endwhile;
                    ?>   
            </div>
        </div>
    </div>    
</section>

<?php get_footer(); ?> 