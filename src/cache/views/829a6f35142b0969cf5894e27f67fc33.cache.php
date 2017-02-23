<?php $indexc = 6;  include $this->_include('./base/cn-header.html'); ?>
<img src="<?php echo SITE_THEME; ?>image/top-img4.jpg" class="top-bg">
    <div class="top-child-menu">
        <div class="container-body">
            <a href="/index.php?c=content&a=list&catid=<?php echo $catid; ?>" class="top-child-menu-btn active">视频中心</a>
            <div class="clear"></div>
        </div>
    </div>
    <div class="container-body">
        <div class="vedio-list">
            <?php $return = $this->_listdata("catid=$catid more=1 cache=36000"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
            <a href="<?php echo $t['url']; ?>" class="vedio-list-item">
                <div class="vedio-list-item-logo">
                    <img src="<?php echo $t['thumb']; ?>" alt="">
                    <i class="fa fa-play-circle"></i>
                </div>
                <h2 class="vedio-list-item-name"><?php echo $t['title']; ?></h2>
            </a>
            <?php } } ?>
            <div class="clear"></div>
        </div>
    </div>
<?php include $this->_include('./base/cn-footer.html'); ?>