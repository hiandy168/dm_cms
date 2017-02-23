    <div class="footer">
        <div class="container-body">
            <ul class="yq-links">
                <li>友情链接：</li>
                <?php $return = $this->_listdata("catid=49 pagesize=999 more=1 cache=36000"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
                <li><a href="<?php echo $t['lianjie']; ?>" target="__bark"><?php echo $t['zhongwenmingcheng']; ?></a></li>
                <?php } } ?>
            </ul>
        </div>
        <hr class="hr">
        <div class="container-body">
            <div class="copyright">
                Copyright @ 2012 厦门稻美橡塑制品有限公司 技术支持：厦门万国云端网络科技有限公司  备案号：<?php echo $SITE_ICP; ?>
            </div>
        </div>
    </div>
    <div class="contact-qq-list">
        <h2>在线客服</h2>
        <hr>
        <ul>
            <?php $return = $this->_listdata("catid=50 pagesize=999 more=1 cache=36000 order=listorder_asc"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
            <li><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo $t["QQ"]; ?>&site=qq&menu=yes" target="__bark"><?php echo $t['title']; ?></a></li>
            <?php } } ?>
        </ul>
    </div>
    <script type="text/javascript">
        $("#goTop").on("click", function() {
            $('body').animate( {scrollTop: 0}, 500);
        });
    </script>
</body>
</html>