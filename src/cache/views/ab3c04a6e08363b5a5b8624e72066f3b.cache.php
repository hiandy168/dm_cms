<?php $indexc = 6;  include $this->_include('./base/cn-header.html'); ?>
    <img src="<?php echo SITE_THEME; ?>image/top-img4.jpg" class="top-bg">
    <div class="top-child-menu">
        <div class="container-body">
            <a href="" class="top-child-menu-btn active">视频中心</a>
            <div class="clear"></div>
        </div>
    </div>
    <div class="container-body">
        <h2 class="container-title"><?php echo $title; ?></h2>
        <div class="container-context" style="text-align: center; margin: 40px 0 100px 0;">
            <div id="vedioInfo" style="display: inline-block;"></div>
        </div>
    </div>
    <script src="<?php echo SITE_THEME; ?>js/jquery-1.10.1.min.js"></script>
    <script src="<?php echo SITE_THEME; ?>lib/ckplayer/ckplayer.js"></script>
    <script>
        var flashvars={
            f:'<?php echo $shipinwenjian; ?>',
            c:0,
            b:1,
            i:'<?php echo $thumb; ?>'
        };
        var params={bgcolor:'#FFF',allowFullScreen:true,allowScriptAccess:'always',wmode:'transparent'};
        CKobject.embedSWF('<?php echo SITE_THEME; ?>lib/ckplayer/ckplayer.swf','vedioInfo','ckplayer_a1','600','400',flashvars,params);
        /*
        CKobject.embedSWF(播放器路径,容器id,播放器id/name,播放器宽,播放器高,flashvars的值,其它定义也可省略);
        下面三行是调用html5播放器用到的
        */
        // var video=['http://img.ksbbs.com/asset/Mon_1605/0ec8cc80112a2d6.mp4->video/mp4'];
        // var support=['iPad','iPhone','ios','android+false','msie10+false'];
        // CKobject.embedHTML5('a1','ckplayer_a1',600,400,video,flashvars,support);

    </script>
<?php include $this->_include('./base/cn-footer.html'); ?>