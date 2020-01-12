<?php 

//부모 스타일 불러오기
add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );
function theme_enqueue_styles() {
	wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );
	wp_enqueue_style( 'style-d', get_stylesheet_directory_uri() . '/style-d.css' );
}

/*페이지에서 빈 p태그 방지*/
function remove_empty_p(){
	if(is_page()){
		remove_filter('the_content', 'wpautop');
	}
}
add_action('wp_head', 'remove_empty_p');

function define_customlogo() {
	add_theme_support( 'custom-logo', array(
			'width'       => 202,
			'height'      => 48,
	) );
}
add_action( 'after_setup_theme', 'define_customlogo', 11 );

function twentynineteen_dequeue_scripts() {
	wp_dequeue_script( 'twentynineteen-priority-menu' );
	wp_deregister_script( 'twentynineteen-priority-menu' );
	wp_dequeue_script( 'twentynineteen-touch-navigation' );
	wp_deregister_script( 'twentynineteen-touch-navigation' );
}
add_action( 'wp_print_scripts', 'twentynineteen_dequeue_scripts', 100 );

include ('submenu-nav.php');
include ('port-sub-nav.php');
include ('portfolio-shortcode.php');

//포트폴리오 사이드 카테고리 선택 지우기
function remove_default_event_category_metabox() {
	remove_meta_box( 'portfolio_categorydiv', 'portfolio', 'side' );
}
add_action( 'admin_menu' , 'remove_default_event_category_metabox' );

function additional_scripts(){
?>
<script type="text/javascript">
(function($){
	$('.tabs-nav .tab-button').first().addClass('active');
	$('.tab-content').first().show();
	$('.tabs-nav .tab-button').click(function(e){
		e.preventDefault();

		$('.tabs-nav .tab-button').removeClass('active');
		$('.tab-content').hide();
		
		var id = $(this).data('tab');

		$(this).addClass('active').css("backgroundColor","#2C3390");
		$(this).children('.elementor-button.elementor-size-sm').css("backgroundColor","#2C3390");
		$(id).show();
	});

	

})(jQuery);
</script>
<?php 
}
add_action('wp_footer', 'additional_scripts');

