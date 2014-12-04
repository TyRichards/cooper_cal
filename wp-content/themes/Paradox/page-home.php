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
            <div class="col-sm-5 col-sm-offset-7">
<!--                 <h2 class="h3">Get Ryan's workout plan</h2>  
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In turpis est, facilisis et ex hendrerit, iaculis cursus tortor. Phasellus consequat id ante in faucibus.</p>
                <p> -->
                    <?php gravity_form(1, true, true, false, null, false, 10); ?>
                    <!-- <form class="form-inline" role="form">
                        <div class="form-group">
                            <div class="input-group">                                
                                <input class="form-control" type="email" placeholder="Enter email">
                                <div class="input-group-addon btn-primary">Get Workout Plan <i class="fa fa-right fa-arrow-right"></i></div>
                            </div>
                        </div>                      
                    </form>   -->              
                </p>    
            </div>
        </div>
    </div>
</section>

<section class="primary-content" id="home">           
    
    <div class="main-col container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">   
                <h2 class="text-center"><?php the_field('featured_instagram_title'); ?></h2>             
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
        </div> <!-- .row -->
        <div class="row">                        
            <div class="col-sm-3">
                <blockquote class="instagram-media" data-instgrm-version="2" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"><div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding-bottom:55%; padding-top:45%; text-align:center; width:100%;"><div style="position:relative;"><div style=" -webkit-animation:dkaXkpbBxI 1s ease-out infinite; animation:dkaXkpbBxI 1s ease-out infinite; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAAGFBMVEUiIiI9PT0eHh4gIB4hIBkcHBwcHBwcHBydr+JQAAAACHRSTlMABA4YHyQsM5jtaMwAAADfSURBVDjL7ZVBEgMhCAQBAf//42xcNbpAqakcM0ftUmFAAIBE81IqBJdS3lS6zs3bIpB9WED3YYXFPmHRfT8sgyrCP1x8uEUxLMzNWElFOYCV6mHWWwMzdPEKHlhLw7NWJqkHc4uIZphavDzA2JPzUDsBZziNae2S6owH8xPmX8G7zzgKEOPUoYHvGz1TBCxMkd3kwNVbU0gKHkx+iZILf77IofhrY1nYFnB/lQPb79drWOyJVa/DAvg9B/rLB4cC+Nqgdz/TvBbBnr6GBReqn/nRmDgaQEej7WhonozjF+Y2I/fZou/qAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-44px; width:44px;"></div><span style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:12px; font-style:normal; font-weight:bold; position:relative; top:15px;">Loading</span></div></div><p style=" line-height:32px; margin-bottom:0; margin-top:8px; padding:0; text-align:center;"> <a href="https://instagram.com/p/<?php the_field('instagram_id_1'); ?>/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; text-decoration:none;" target="_top"> View on Instagram</a></p></div><style>@-webkit-keyframes"dkaXkpbBxI"{ 0%{opacity:0.5;} 50%{opacity:1;} 100%{opacity:0.5;} } @keyframes"dkaXkpbBxI"{ 0%{opacity:0.5;} 50%{opacity:1;} 100%{opacity:0.5;} }</style></blockquote><script async defer src="//platform.instagram.com/en_US/embeds.js"></script>                
            </div>
            <div class="col-sm-3">
                <blockquote class="instagram-media" data-instgrm-version="2" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"><div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding-bottom:55%; padding-top:45%; text-align:center; width:100%;"><div style="position:relative;"><div style=" -webkit-animation:dkaXkpbBxI 1s ease-out infinite; animation:dkaXkpbBxI 1s ease-out infinite; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAAGFBMVEUiIiI9PT0eHh4gIB4hIBkcHBwcHBwcHBydr+JQAAAACHRSTlMABA4YHyQsM5jtaMwAAADfSURBVDjL7ZVBEgMhCAQBAf//42xcNbpAqakcM0ftUmFAAIBE81IqBJdS3lS6zs3bIpB9WED3YYXFPmHRfT8sgyrCP1x8uEUxLMzNWElFOYCV6mHWWwMzdPEKHlhLw7NWJqkHc4uIZphavDzA2JPzUDsBZziNae2S6owH8xPmX8G7zzgKEOPUoYHvGz1TBCxMkd3kwNVbU0gKHkx+iZILf77IofhrY1nYFnB/lQPb79drWOyJVa/DAvg9B/rLB4cC+Nqgdz/TvBbBnr6GBReqn/nRmDgaQEej7WhonozjF+Y2I/fZou/qAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-44px; width:44px;"></div><span style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:12px; font-style:normal; font-weight:bold; position:relative; top:15px;">Loading</span></div></div><p style=" line-height:32px; margin-bottom:0; margin-top:8px; padding:0; text-align:center;"> <a href="https://instagram.com/p/<?php the_field('instagram_id_2'); ?>/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; text-decoration:none;" target="_top"> View on Instagram</a></p></div><style>@-webkit-keyframes"dkaXkpbBxI"{ 0%{opacity:0.5;} 50%{opacity:1;} 100%{opacity:0.5;} } @keyframes"dkaXkpbBxI"{ 0%{opacity:0.5;} 50%{opacity:1;} 100%{opacity:0.5;} }</style></blockquote><script async defer src="//platform.instagram.com/en_US/embeds.js"></script>                               
            </div>
            <div class="col-sm-3">
                <blockquote class="instagram-media" data-instgrm-version="2" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"><div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding-bottom:55%; padding-top:45%; text-align:center; width:100%;"><div style="position:relative;"><div style=" -webkit-animation:dkaXkpbBxI 1s ease-out infinite; animation:dkaXkpbBxI 1s ease-out infinite; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAAGFBMVEUiIiI9PT0eHh4gIB4hIBkcHBwcHBwcHBydr+JQAAAACHRSTlMABA4YHyQsM5jtaMwAAADfSURBVDjL7ZVBEgMhCAQBAf//42xcNbpAqakcM0ftUmFAAIBE81IqBJdS3lS6zs3bIpB9WED3YYXFPmHRfT8sgyrCP1x8uEUxLMzNWElFOYCV6mHWWwMzdPEKHlhLw7NWJqkHc4uIZphavDzA2JPzUDsBZziNae2S6owH8xPmX8G7zzgKEOPUoYHvGz1TBCxMkd3kwNVbU0gKHkx+iZILf77IofhrY1nYFnB/lQPb79drWOyJVa/DAvg9B/rLB4cC+Nqgdz/TvBbBnr6GBReqn/nRmDgaQEej7WhonozjF+Y2I/fZou/qAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-44px; width:44px;"></div><span style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:12px; font-style:normal; font-weight:bold; position:relative; top:15px;">Loading</span></div></div><p style=" line-height:32px; margin-bottom:0; margin-top:8px; padding:0; text-align:center;"> <a href="https://instagram.com/p/<?php the_field('instagram_id_3'); ?>/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; text-decoration:none;" target="_top"> View on Instagram</a></p></div><style>@-webkit-keyframes"dkaXkpbBxI"{ 0%{opacity:0.5;} 50%{opacity:1;} 100%{opacity:0.5;} } @keyframes"dkaXkpbBxI"{ 0%{opacity:0.5;} 50%{opacity:1;} 100%{opacity:0.5;} }</style></blockquote><script async defer src="//platform.instagram.com/en_US/embeds.js"></script>                                  
            </div>
            <div class="col-sm-3">
                <blockquote class="instagram-media" data-instgrm-version="2" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"><div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding-bottom:55%; padding-top:45%; text-align:center; width:100%;"><div style="position:relative;"><div style=" -webkit-animation:dkaXkpbBxI 1s ease-out infinite; animation:dkaXkpbBxI 1s ease-out infinite; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAAGFBMVEUiIiI9PT0eHh4gIB4hIBkcHBwcHBwcHBydr+JQAAAACHRSTlMABA4YHyQsM5jtaMwAAADfSURBVDjL7ZVBEgMhCAQBAf//42xcNbpAqakcM0ftUmFAAIBE81IqBJdS3lS6zs3bIpB9WED3YYXFPmHRfT8sgyrCP1x8uEUxLMzNWElFOYCV6mHWWwMzdPEKHlhLw7NWJqkHc4uIZphavDzA2JPzUDsBZziNae2S6owH8xPmX8G7zzgKEOPUoYHvGz1TBCxMkd3kwNVbU0gKHkx+iZILf77IofhrY1nYFnB/lQPb79drWOyJVa/DAvg9B/rLB4cC+Nqgdz/TvBbBnr6GBReqn/nRmDgaQEej7WhonozjF+Y2I/fZou/qAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-44px; width:44px;"></div><span style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:12px; font-style:normal; font-weight:bold; position:relative; top:15px;">Loading</span></div></div><p style=" line-height:32px; margin-bottom:0; margin-top:8px; padding:0; text-align:center;"> <a href="https://instagram.com/p/<?php the_field('instagram_id_4'); ?>/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; text-decoration:none;" target="_top"> View on Instagram</a></p></div><style>@-webkit-keyframes"dkaXkpbBxI"{ 0%{opacity:0.5;} 50%{opacity:1;} 100%{opacity:0.5;} } @keyframes"dkaXkpbBxI"{ 0%{opacity:0.5;} 50%{opacity:1;} 100%{opacity:0.5;} }</style></blockquote><script async defer src="//platform.instagram.com/en_US/embeds.js"></script>                                  
            </div>                                    
        </div> <!-- .row -->
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <a class="btn btn-primary btn-block" href="/gallery">View All</a>
            </div>
        </div>
    </div>    
</section>

<?php get_footer(); ?> 