<?php $indexc = 2;  include $this->_include('./base/en-header.html'); ?>
    <img src="<?php echo SITE_THEME; ?>image/top-img1.jpg" class="top-bg">
    <div class="top-child-menu">
        <div class="container-body">
            <a href="/index.php?c=content&a=list&catid=36" class="top-child-menu-btn active">ABOUT US</a>
            <a href="/index.php?c=content&a=list&catid=37" class="top-child-menu-btn">Honor</a>
            <a href="/index.php?c=content&a=list&catid=54" class="top-child-menu-btn">Application</a>
            <div class="clear"></div>
        </div>
    </div>
    <div class="container-body">
        <h2 class="container-title">ABOUT US</h2>
        <div class="container-context">
            <?php echo $cats[36][content]; ?>
        </div>
    </div>
<?php include $this->_include('./base/en-footer.html'); ?>