<?php
/*
Template Name: Home
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
    
    <div class="main-col container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
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