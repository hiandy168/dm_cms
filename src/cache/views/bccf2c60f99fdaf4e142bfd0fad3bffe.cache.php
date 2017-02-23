<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
	<meta name="keywords" content="<?php echo $SITE_KEYWORDS; ?>" />
	<meta name="description" content="<?php echo $SITE_DESCRIPTION; ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title><?php echo $SITE_TITLE; ?></title>
    <link rel="stylesheet" href="<?php echo SITE_THEME; ?>css/base.css">
    <link rel="stylesheet" href="<?php echo SITE_THEME; ?>css/style.css">
    <link rel="stylesheet" href="<?php echo SITE_THEME; ?>css/idangerous.swiper2.7.6.css">
    <link rel="stylesheet" href="<?php echo SITE_THEME; ?>lib/font-awesome-4.7.0/css/font-awesome.min.css">
    <script>
        function addFavorite2() {
            var url = window.location;
            var title = document.title;
            var ua = navigator.userAgent.toLowerCase();
            if (ua.indexOf("360se") > -1) {
                alert("由于360浏览器功能限制，请按 Ctrl+D 手动收藏！");
            }
            else if (ua.indexOf("msie 8") > -1) {
                window.external.AddToFavoritesBar(url, title); //IE8
            }
            else if (document.all) {
        try{
        window.external.addFavorite(url, title);
        }catch(e){
        alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
        }
            }
            else if (window.sidebar) {
                window.sidebar.addPanel(title, url, "");
            }
            else {
        alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
            }
        }
    </script>
</head>
<body>
    <div class="header">
        <div class="header-tool">
            <div class="container-body">
                <ul class="tool-fun">
                    <li><a href="javascript:addFavorite2();">收藏本站</a></li>
                    <li><a href="/index.php#callme">在线留言</a></li>
                    <li><a href="/index.php?c=content&a=list&catid=51">人才招聘</a></li>
                </ul>
                <ul class="language">
                    <li><a href="/index.php" class="cn">中文</a></li>
                    <li><a href="/index.php?c=content&a=list&catid=22" class="en">ENGLISH</a></li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <div class="container-body">
            <h1 class="logo">
                <a href="#"></a>
            </h1>
            <ul class="menu">
                <li <?php if ($indexc==1) { ?>class="active"<?php } ?>>
                    <a href="<?php echo SITE_PATH; ?>">
                        首页<span>HOME</span>
                    </a>
                </li>
                <li <?php if ($indexc==2) { ?>class="active"<?php } ?>>
                    <a href="/index.php?c=content&a=list&catid=39">
                        公司简介<span>ABOUT US</span>
                    </a>
                </li>
                <li <?php if ($indexc==3) { ?>class="active"<?php } ?>>
                    <a href="/index.php?c=content&a=list&catid=31">
                        产品展示<span>THE PRODUCTS</span>
                    </a>
                </li>
                <li <?php if ($indexc==4) { ?>class="active"<?php } ?>>
                    <a href="/index.php?c=content&a=list&catid=43">
                        案例展示<span>THE EXAPLE</span>
                    </a>
                </li>
                <li <?php if ($indexc==5) { ?>class="active"<?php } ?>>
                    <a href="/index.php?c=content&a=list&catid=25">
                        新闻中心<span>THE NEWS</span>
                    </a>
                </li>
                <li <?php if ($indexc==6) { ?>class="active"<?php } ?>>
                    <a href="/index.php?c=content&a=list&catid=47">
                        视频中心<span>THE VIDEOS</span>
                    </a>
                </li>
                <li <?php if ($indexc==7) { ?>class="active"<?php } ?>>
                    <a href="/index.php#callme">
                        联系我们<span>CONTACT US</span>
                    </a>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>