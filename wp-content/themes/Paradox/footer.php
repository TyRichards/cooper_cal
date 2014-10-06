<?php
/**
 * The theme footer
 * 
 * @package bootstrap-basic
 */
?>
			</div><!--.body-content-->	


			
			<footer class="footer">	
				<?php // get_footer('lg'); ?>
	      		<section class="small-footer">
	      			<div class="container col-no-padding-xs">
	      				<div class="row">
		      				<div class="col-xs-12 col-sm-8">
				        		<div class="pull-left footer-credits">		        			
				        			<small>
				        				<a href="<?php echo esc_url(home_url('/')); ?>">
				        					© <?php echo date("Y"); ?> <?php echo esc_attr(get_bloginfo('name', 'display')); ?>
				        				</a>
				        			</small>		        			
				        		</div>
				        		<div class="pull-left footer-menu">
				        			<?php dynamic_sidebar('footer-credits'); ?>
				        		</div>
			        		</div>
			        		<div class="col-xs-12 col-sm-4">
				        		<div class="pull-right no-float-xs">
				        			<a href="http://paradoxcreative.com" target="_blank">
				        				<small>Site crafted by Paradox</small>
				        			</a>
				        		</div>
				        	</div>
				        </div> <!-- .row -->
		        	</div> <!-- .container -->
		        </section>	
	      	</footer>	
		
		
		<!--wordpress footer-->
		<?php wp_footer(); ?> 
		<!-- Typekit -->
		<script type="text/javascript" src="//use.typekit.net/jph8qdt.js"></script>
		<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
	</body>
</html>