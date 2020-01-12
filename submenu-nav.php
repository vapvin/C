<?php

	function submenu_shortcode(){
		$home_url = '<a class="submenu-home" href="'.home_url('/').'">'.__('홈').'</a>';
		$parents = get_post_ancestors( $post->ID );
		$parents = array_reverse($parents);
		ob_start();
		
		$highest_level='';
		$children='';
		$submenu_content='';
		
		//최상위메뉴
		$highest_level.='<div class="submenu-container highest-submenu-dropdown submenu-dropdown">';
		$highest_level.='<div class="current-highest-page-title current-page-title"></div>';
		$highest_level.=wp_nav_menu(array(
				'menu' => 'Main Menu',
				'menu_class' => 'highest-submenu-dropdown-ul submenu-dropdown-ul',
				'container' => '',
				'depth' => 1,
				'echo' => 0
		));
		$highest_level.='</div>';	//highest-submenu-dropdown
		
		if($parents){
			foreach ($parents as $parent => $parent_id){
				$children.='<div class="submenu-container submenu-dropdown">';
				$children.='<div class="current-page-title"></div>';
				$children.='<ul class="submenu-dropdown-ul submenu-'.$parent.'">';
				$children.=wp_list_pages(array(
						'child_of'	=>	$parent_id,
						'depth' => 1,
						'title_li'	=>	'',
						'echo' => 0
				));
				$children.='</ul>';	//submenu-dropdown-ul
				$children.='</div>';	//submenu-dropdown
				
			}
		}

		