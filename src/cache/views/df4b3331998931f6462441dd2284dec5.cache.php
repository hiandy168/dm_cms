<?php $indexc = 3;  include $this->_include('./base/cn-header.html'); ?>
    <img src="<?php echo SITE_THEME; ?>image/top-img6.jpg" class="top-bg">
    <div class="top-child-menu">
        <div class="container-body">
            <?php $data=getCatNav($parentid);  if (is_array($data)) { $count=count($data);foreach ($data as $t) { ?>
            <a href="/index.php?c=content&a=list&catid=<?php echo $t['catid']; ?>" class="top-child-menu-btn <?php if ($catid == $t['catid']) { ?>active<?php } ?>"><?php echo $t['catname']; ?></a>
            <?php } } ?>
            <div class="clear"></div>
        </div>
    </div>
    <?php $arrs = array();  $return = $this->_listdata("catid=$catid pagesize=8 page=$page more=1 cache=36000 pagerule=pageruleother"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) {  $arrs[] = $t;  } } ?>
    <div class="container-body">
        <?php echo $pagelist; ?>
    </div>
    <div class="container-body">
        <div class="product-list">
            <?php if (is_array($arrs)) { $count=count($arrs);foreach ($arrs as $t) { ?>
            <a href="javascript:showInfo(<?php echo $t['id']; ?>);">
                <img src="<?php echo $t['thumb']; ?>" alt="">
                <span><?php echo $t['title']; ?></span>
            </a>
            <?php } }  $return = $this->_listdata("catid=$catid pagesize=8 page=$page more=1 cache=36000"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
            <div class="product-list-info" id="product<?php echo $t['id']; ?>">
                <img src="<?php echo $t['thumb']; ?>" alt="">
                <ul>
                    <li>产品类型：<?php echo $t['chanpinleibie']; ?></li>
                    <li>产品厚度：<?php echo $t['chanpinhoudu']; ?></li>
                    <li>产品密度：<?php echo $t['chanpinmidu']; ?></li>
                    <li>产品颜色：<?php echo $t['chanpinyanse']; ?></li>
                    <li>最大幅宽：<?php echo $t['zuidafukuan']; ?></li>
                    <li>标准长度：<?php echo $t['biaozhunchangdu']; ?></li>
                    <li>表面处理：<?php echo $t['biaomianchuli']; ?></li>
                    <li>包装方式：<?php echo $t['baozhuangfangshi']; ?></li>
                    <li>运输方式：<?php echo $t['yunshufangshi']; ?></li>
                    <li>结算方式：<?php echo $t['jiesuanfangshi']; ?></li>
                    <li>生产厂商：<?php echo $t['shengchanchangshang']; ?></li>
                    <li style="padding-top: 20px; text-align: center;">
                        <a href="javascript:closeInfo(<?php echo $t['id']; ?>);">关闭</a>
                    </li>
                </ul>
            </div>
            <?php } } ?>
            <div class="clear"></div>
        </div>
    </div>
    <script src="<?php echo SITE_THEME; ?>js/jquery-1.10.1.min.js"></script>
    <script>
        function showInfo(id) {
            $(".product-list-info").css("display", "none");
            $("#product" + id).css("display", "block");
        }
        function closeInfo(id) {
            $("#product" + id).css("display", "none");
        }
    </script>
<?php include $this->_include('./base/cn-footer.html'); ?>