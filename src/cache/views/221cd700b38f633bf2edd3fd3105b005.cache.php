<?php $indexc = 1;  include $this->_include('./base/cn-header.html'); ?>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=gf44xN3SGL81vGV7K9GRyx5XKdXBpsie"></script>
<!-- 系统样式及JS -->
    <div class="banner">
        <a class="arrow-left"></a>
        <a class="arrow-right"></a>
        <div class="swiper-container" id="banner">
            <div class="swiper-wrapper">
                <?php $return = $this->_listdata("catid=48 pagesize=999 more=1 cache=36000"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
                <div class="swiper-slide"><a href="<?php echo $t['lianjie']; ?>" target="__bark"><img src="<?php echo $t['tupian']; ?>"></a></div>
                <?php } } ?>
            </div>
        </div>
    </div>
    <div class="container-body">
        <div class="index-container">
            <h2>企业简介<span>ABOUT US</span></h2>
            <div class="index-container-body">
                <div class="index-container-img">
                    <img src="<?php echo SITE_THEME; ?>image/gs.png">
                </div>
                <div class="index-container-p" style="padding-top: 20px;">
                    <p style="line-height: 1.75em;color: #000;">&nbsp; &nbsp;厦门稻美橡塑制品有限公司是一家专业生产PVC自由发泡板、PVC结皮发泡板的厂家（自然人投资或控股），公司总部设在中国福建省厦门市翔安区内厝镇新安村，稻美，厦门稻美橡塑制品有限公司拥有完整、科学的质量管理体系。厦门稻美橡塑制品有限公司的诚信、实力和产品质量获得业界的认可。欢迎各界朋友莅临厦门稻美橡塑制品有限公司参观、指导和业务洽谈。<br>　 &nbsp;PVC发泡板是新型的人造材料，它具有优良的化学稳定性，耐腐蚀，硬度大，强度高，表面光洁。完全可以代替木材，缓解木材紧张。且用一般的木材加工工具即可施工。产品防水、防火、防腐、不吸水、质轻，具有保温、隔音、绝缘、防震等性能。可热成型亦可与其他PVC材料粘接。适于贴膜、印刷、压花、喷涂等二次加工。<br>&nbsp; &nbsp;应用范围：广泛用于广告装饰业：喷绘、展板、丝网印刷、电脑刻字、标牌、灯箱等。建筑装潢业：室内外饰板，商用装饰架，房间隔断，吊顶板，橱柜、浴柜吊顶板等。交通运输业：轮船、飞机、客车、火车车厢、顶棚、箱体芯层、内部装潢用板等各个领域。</p>                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="index-prodicts">
        <img src="<?php echo SITE_THEME; ?>image/index-cp-bg.jpg" alt="">
        <div class="index-prodicts-context">
            <div class="container-body">
                <div class="index-container">
                    <h2>我们的产品<span>OUR PRODUCTS</span></h2>
                </div>
                <div class="index-prodicts-context-btns">
                    <a href="/index.php?c=content&a=list&catid=31" class="index-prodicts-btn index-prodicts-btn-fapao">PVC结皮发泡板</a>
                    <a href="/index.php?c=content&a=list&catid=32" class="index-prodicts-btn index-prodicts-btn-fuhe">PVC复合板</a>
                    <a href="/index.php?c=content&a=list&catid=33" class="index-prodicts-btn index-prodicts-btn-fangshui">UV防水板</a>
                </div>
            </div>
        </div>
    </div>
    <div class="index-container">
        <h2>案例展示<span>THE EXAMPLE</span></h2>
        <div class="example-list">
            <div class="swiper-container" id="example">
                <div class="swiper-wrapper">
                    <?php $i = 0;  $return = $this->_listdata("catid=43 pagesize=20 more=1 cache=36000"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
                    <div class="swiper-slide">
                        <a href="/index.php?c=content&a=list&catid=43&infoId=<?php echo $t['id']; ?>" class="example-item" onclick="selectexample(<?php echo $i; ?>);">
                            <img src="<?php echo $t['thumb']; ?>" alt="">
                            <span><?php echo $t['title']; ?></span>
                        </a>
                    </div>
                    <?php $i = $i + 1;  } } ?>
                </div>
            </div>
        </div>
    </div>
    <div class="index-news">
        <div class="index-container">
            <h2>新闻中心<span>NEWS CENTER</span></h2>
        </div>
        <div class="container-body">
            <?php $return = $this->_listdata("catid=25 num=1 more=1 cache=36000 order=id"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
            <a class="index-news-image-info" href="/index.php?c=content&a=show&id=<?php echo $t['id']; ?>">
                <img src="<?php echo $t['thumb']; ?>" alt="">
                <h3><i class="fa fa-caret-right"></i> <?php echo $t['title']; ?></h3>
                <p><?php echo $t['description']; ?></p>
                <span><?php echo date("Y-m-d", $t['updatetime']); ?></span>
            </a>
            <?php } } ?>
            <ul class="index-news-list">
                <?php $return = $this->_listdata("catid=25 num=1,3 more=1 cache=36000 order=id"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
                <li>
                    <a href="/index.php?c=content&a=show&id=<?php echo $t['id']; ?>">
                        <h3><i class="fa fa-caret-right"></i> <?php echo $t['title']; ?></h3>
                        <p><?php echo $t['description']; ?></p>
                        <span><?php echo date("Y-m-d", $t['updatetime']); ?></span>
                    </a>
                </li>
                <?php } } ?>
            </ul>
            <a href="/index.php?c=content&a=list&catid=25" class="index-news-more">查看更多</a>
            <div class="clear"></div>
        </div>
    </div>
    <div class="container-body" id="callme" style="position: relative;">
        <div class="index-container">
            <h2>联系我们<span>CONTACT US</span></h2>
        </div>
        <div class="index-contact">
            <div class="index-contact-left">
                <div class="index-contact-tel">0592-7270378</div>
                <div class="index-contact-phone">18900202069</div>
                <div class="index-contact-mail">2196930998@qq.com</div>
                <div class="index-contact-dz">福建省厦门市翔安区内厝镇新垵村213号（加油站旁）</div>
                <div id="allmap" style="width: 500px;height: 240px; margin-left: 60px; margin-top: 20px;"></div>
            </div>
            <div class="index-contact-hr"></div>
            <form method="post" class="index-contact-right" action="/index.php?c=form&a=post&modelid=7&cid=">
                <div class="index-contact-input">
                    <label>称呼：</label>
                    <input type="text" name="data[xingming]" maxlength="10">
                    <div class="clear"></div>
                </div>
                <div class="index-contact-input">
                    <label>联系方式：</label>
                    <input type="text" name="data[dianhua]" maxlength="11">
                    <div class="clear"></div>
                </div>
                <div class="index-contact-input">
                    <label>信息：</label>
                    <textarea rows="5" name="data[neirong]" maxlength="100"></textarea>
                    <div class="clear"></div>
                </div>
                <button name="submit" type="submit" class="index-contact-btn">提交</button>
            </form>
            <div class="clear"></div>
        </div>
        <a class="go-top-btn" id="goTop"></a>
    </div>
    <script src="<?php echo SITE_THEME; ?>js/jquery-1.10.1.min.js"></script>
    <script src="<?php echo SITE_THEME; ?>js/idangerous.swiper2.7.6.min.js"></script>
    <script>
        var bannerSwiper = new Swiper('#banner',{
            loop:true,
            autoplay: 3000,
            autoplayDisableOnInteraction: false,
            resizeReInit : true,
            calculateHeight: true,
        });
        $('.banner .arrow-left').on('click', function(e){
            bannerSwiper.swipePrev()
        })
        $('.banner .arrow-right').on('click', function(e){
            bannerSwiper.swipeNext()
        });
        var exampleSwiper = new Swiper('#example',{
            slidesPerView: 5,
            centeredSlides: true,
            autoplay: 4000,
            loop: true,
            simulateTouch: false
        });
        function selectexample(index) {
            exampleSwiper.swipeTo(index, 300);
        }

        // 百度地图API功能
        var map = new BMap.Map("allmap");
        var point = new BMap.Point(118.313839,24.678363);
        var marker = new BMap.Marker(point);  // 创建标注
        map.addOverlay(marker);              // 将标注添加到地图中
        map.centerAndZoom(point, 16);
    </script>
<?php include $this->_include('./base/cn-footer.html'); ?>