<?php

/**
 * 自定义分页样式配置
 * div HTMLdiv盒结构 (<div id="pages">{content}</div>)
 * total 显示统计数量 (<a>{content}</a>)
 * nowpage 当前页 (<span>{content}</span>)
 * page 普通页 (<a href="{url}">{content}</a>)
 * pre 上一页 (<a href="{url}">{content}</a>)
 * next 下一页 (<a href="{url}">{content}</a>)
 */

return array(
    'center' => 4,
    'num' => 7,
    'per_circle' => 7,
    'config' => array(
        'div'     => '<ul class="pagination">{content}</ul>',
        'total'   => '<li><a>{content}</a></li>',
        'nowpage' => '<li class="current"><a>{content}</a></li> ',
        'page'    => '<li><a href="{url}">{content}</a></li>',
        'pre'     => '<li><a href="{url}">{content}</a></li>',
        'next'    => '<li><a href="{url}">{content}</a></li>',
        'note'    => '<li><a>{content}</a></li>'
    )
);