<?php
function portfolio_list_shortcode($atts){
	ob_start();
	$atts = shortcode_atts(
			array(
				'posts_per_page' => -1,
				'cat' => '',
			), $atts, 'portfolio_list');
	
	$orderby='';
	
	if(isset($_GET['orderby']) && !empty($_GET['orderby'])){
		$orderby=$_GET['orderby'];
	}
	
	$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
	if(!isset($orderby) || empty($orderby)){
		$arg = array(
				'post_type' => 'portfolio', // 포스트 타입
				'post_status' => 'publish', // 공개 상태
				'posts_per_page' => $atts['posts_per_page'], // 한 페이지 출력 수
				//'posts_per_page' => 2, // 한 페이지 출력 수
				'paged' => $paged, // 페이지(paging)
				'tax_query' => array(
						array(
								'taxonomy' => 'portfolio_category',
								'field'    => 'slug',
								'terms'    => $atts['cat'],
						),
				),
		);
	}
	else{
		if($orderby == 'price_asc'){
			$arg = array(
					'post_type' => 'portfolio', // 포스트 타입
					'post_status' => 'publish', // 공개 상태
					'posts_per_page' => $atts['posts_per_page'], // 한 페이지 출력 수
					//'posts_per_page' => 2, // 한 페이지 출력 수
					'paged' => $paged, // 페이지(paging)
					'tax_query' => array(
							array(
									'taxonomy' => 'portfolio_category',
									'field'    => 'slug',
									'terms'    => $atts['cat'],
							),
					),
					'meta_key'  => 'price_prd_price',
					'orderby'    => 'meta_value_num',
					'order'   => 'ASC',
			);
		}
		elseif($orderby == 'price_desc'){
			$arg = array(
					'post_type' => 'portfolio', // 포스트 타입
					'post_status' => 'publish', // 공개 상태
					'posts_per_page' => $atts['posts_per_page'], // 한 페이지 출력 수
					//'posts_per_page' => 2, // 한 페이지 출력 수
					'paged' => $paged, // 페이지(paging)
					'tax_query' => array(
							array(
									'taxonomy' => 'portfolio_category',
									'field'    => 'slug',
									'terms'    => $atts['cat'],
							),
					),
					'meta_key'  => 'price_prd_price',
					'orderby'    => 'meta_value_num',
					'order'   => 'DESC',
			);
		}
		elseif($orderby == 'best'){
			$arg = array(
					'post_type' => 'portfolio', // 포스트 타입
					'post_status' => 'publish', // 공개 상태
					'posts_per_page' => $atts['posts_per_page'], // 한 페이지 출력 수
					//'posts_per_page' => 2, // 한 페이지 출력 수
					'paged' => $paged, // 페이지(paging)
					'meta_key'  => 'prd_category',
					'orderby'    => 'meta_value',
					'order'   => 'DESC',
			);
		}
		
		
	}
	
	
	$pf_query = new WP_Query($arg);
	
	if($pf_query->have_posts()):?>
<div class="portfolio-order">
	<ul>
		<li><a href="?orderby=best">추천순</a></li>
		<li><a href="?orderby=price_asc">최저가순</a></li>
		<li><a href="?orderby=price_desc">최고가순</a></li>
	</ul>
</div>
<div class="portfolio-loop">
<?php 
	while ( $pf_query->have_posts() ) : $pf_query->the_post();
		get_template_part( 'template-parts/content/content-portfolio', 'excerpt' );
	endwhile;
	
	/**pagination**/
	$big = 999999999; // need an unlikely integer
	$pagination_arg=array(
			'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
			'format' => '?paged=%#%',
			'current' => max( 1, get_query_var('paged') ),
			'total' => $pf_query->max_num_pages,
			'type'=> 'plain',
			'prev_text' => __('«'),
			'next_text' => __('»'),
		);
	?>
</div><!-- portfolio-loop -->

<div class="portfolio-number-pagelink">
<?php echo paginate_links($pagination_arg);?>
</div>

<?php 
wp_reset_postdata();
else :
?>
	<p class="not-found">준비중입니다.</p>
<?php 
	endif;
	return ob_get_clean();
}
add_shortcode('portfolio_list', 'portfolio_list_shortcode');

function portfolio_list_main_shortcode($atts){
	ob_start();
	$atts = shortcode_atts(
			array(
					'posts_per_page' => -1,
					'cat' => '',
					'col' => '3',
			), $atts, 'portfolio_list');
	
	$cats = explode(",",strval($atts['cat']));
	
	if(count($cats)>1){
		$arg = array(
				'post_type' => 'portfolio', // 포스트 타입
				'post_status' => 'publish', // 공개 상태
				'posts_per_page' => $atts['posts_per_page'], // 한 페이지 출력 수
				'tax_query' => array(
						'relation' => 'AND',
						array(
								'taxonomy' => 'portfolio_category',
								'field'    => 'slug',
								'terms'    => $cats[0],
								'operator' => 'IN'
						),
						array(
								'taxonomy' => 'portfolio_category',
								'field'    => 'slug',
								'terms'    => $cats[1],
								'operator' => 'IN'
						),
				),
				
				/*'tax_query' => array(
						'relation' => 'AND',
						array(
								'taxonomy' => 'portfolio_category',
								'field' => 'slug',
								'terms' => $cats,
								'operator' => 'IN'
								
						)
						
				)*/
				
		);
	}
	else{
		$arg = array(
				'post_type' => 'portfolio', // 포스트 타입
				'post_status' => 'publish', // 공개 상태
				'posts_per_page' => $atts['posts_per_page'], // 한 페이지 출력 수
				'tax_query' => array(
						array(
								'taxonomy' => 'portfolio_category',
								'field'    => 'slug',
								'terms'    => $cats[0],
								
						),
				),
		);
	}
	
	$pf_query = new WP_Query($arg);
	
	if($pf_query->have_posts()):
?>
<div class="portfolio-loop-main col-<?php echo $atts['col']?>">
<?php while ( $pf_query->have_posts() ) : $pf_query->the_post();

$descript = get_field('descript'); // price -> descriptions
//$prd_price = (string)$descriptions['prd_price']; // number_format 삭제 
$excerpt = mb_substr(wp_strip_all_tags(get_the_excerpt()), 0, 100);

?>
<div class="portfolio-entry-wrap">
<article <?php post_class(); ?>>
	<div class="entry-col etry-thumbnail">
		<?php the_post_thumbnail(); ?>
	</div>
	<div class="entry-col entry-list-content">
		<?php the_title( sprintf( '<h4 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h4>' ); ?>
		<div class="entry-excerpt"><?php echo $excerpt;?></div>
		<p class="entry-prd-price"><?php echo $descript;?></p> <!-- prd_price -> descriptions -->
		<?php echo sprintf( '<a href="%s" rel="bookmark" class="detail_pages">', esc_url( get_permalink() ) ),'자세히보기</a>'; ?>
	</div><!-- .entry-header -->
</article><!-- #post-<?php the_ID(); ?> -->
</div>

<?php endwhile;?>
</div><!-- portfolio-loop -->

<?php 
wp_reset_postdata();
else :
?>
	<p class="not-found">준비중입니다.</p>
<?php 
	endif;
	return ob_get_clean();
}
add_shortcode('portfolio_list_main', 'portfolio_list_main_shortcode');

function portfolio_table_shortcode(){
	ob_start();
	
	//교통편
	$transportation = get_field('transportation');
	$depart_airline = $transportation['depart_transportation']['depart_airline'];
	$depart_flight = $transportation['depart_transportation']['depart_flight'];
	$arrive_airline = $transportation['arrive_transportation']['arrive_airline'];
	$arrive_flight = $transportation['arrive_transportation']['arrive_flight'];
	
	$depart_airline_logo = get_stylesheet_directory_uri().'/airline-img/'.$depart_airline.'.gif';
	$arrive_airline_logo = get_stylesheet_directory_uri().'/airline-img/'.$arrive_airline.'.gif';
	
	//가격
	$price = get_field('price');
	$prd_price = number_format($price['prd_price']);
	$default_prd_price = number_format($price['default_prd_price']);
	$fuel_surcharge = number_format($price['fuel_surcharge']);
?>
<div class="product_info1">
    <table>
        <tr>
            <th class="product_name">상품명</th>
            <td class="product_tit"><?php the_title();?></td>
        </tr>
        <tr>
            <th>여행기간</th>
            <td><?php the_field('travel_period');?></td>
        </tr>
        <tr>
            <th>출발지</th>
            <td><?php the_field('place_to_depart');?></td>
        </tr>
        <tr>
            <th>교통편</th>
            <td>출발<img src="<?php echo $depart_airline_logo;?>"><?php echo $depart_flight?>   /   도착 <img src="<?php echo $arrive_airline_logo;?>"><?php echo $arrive_flight;?></td>
        </tr>
        <tr>
            <th>출발일정</th>
            <td>2020년 8월 8일 토, 23시 55분</td>
        </tr>
        <tr>
            <th>도착일정</th>
            <td>2020년 8월 20일 목, 16시 55분</td>
        </tr>
    </table>
</div>
<div class="product_info2">
    <table>
        <tr>
            <th>가격</th>
            <th>총 상품 가격</th>
            <th>기본 상품 가격</th>
            <th>유류할증료</th>
        </tr>
        <tr>
            <td><?php echo $price['reference_age'];?></td>
            <td class="won wonpic"><?php echo $prd_price.'원'; ?></td>
            <td class="won"><?php echo $default_prd_price.'원';?></td>
            <td><?php echo $fuel_surcharge.'원';?></td>
        </tr>
    </table>
</div>
<?php
	return ob_get_clean();
}
add_shortcode('portfolio_table', 'portfolio_table_shortcode');