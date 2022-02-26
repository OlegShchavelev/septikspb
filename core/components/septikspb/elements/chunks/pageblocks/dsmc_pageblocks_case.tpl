{'!msProductsSection' | snippet : [
'snippet' => $snippet,
'tplWrapper' => 'wrapper.showcase.dsmc',
'tpl' => 'dsmc.stock_card.row.main',
'includeTVs' => 'image',
'tvPrefix' => '',
'parents' => $parents,
'depth' => '0',
'limit' => $limit,
'sortby' => [$sort => $sortdir],
'wrapperPlaceholders' => [
'title' => $title,
'headtext' => $headtext,
'footbtn_more_link' => $footbtn_more_link,
'footbtn_more_text' => $footbtn_more_text,
'section_class' => $bg_color == '0' ? '' : $bg_color
],
]}