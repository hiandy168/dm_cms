	<link href="<?php echo ADMIN_THEME; ?>images/table_form.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo ADMIN_THEME; ?>images/dialog.css" rel="stylesheet" type="text/css" />

    <div id="content">
<div class="container">
	<div class="one">
		<!--begin-->
		<div class="piclist">
			<div class="item-list">
				<form action="<?php echo url('form/post',array('modelid'=>$modelid, 'cid'=>$cid)); ?>" method="post">
				<table width="100%" class="table_form " style="width: 800px;margin: 100px auto;">
				<tr>
					<th>姓名：</th>
                    <td><?php echo $xingming; ?></td>
                    <th>性别：</th>
                    <td><?php echo $xingbie; ?></td>
				</tr>
                <tr>
					<th>出生时间：</th>
                    <td><?php echo $chushengshijian; ?></td>
                    <th>应聘职位：</th>
                    <td><?php echo $yingpinzhiwei; ?></td>
				</tr>
                <tr>
					<th>专业：</th>
                    <td><?php echo $zhuanye; ?></td>
                    <th>毕业时间：</th>
                    <td><?php echo $biyeshijian; ?></td>
				</tr>
                <tr>
					
				</tr>
                <tr>
					<th>毕业院校：</th>
                    <td><?php echo $biyeyuanxiao; ?></td>
                    <th>联系电话：</th>
                    <td><?php echo $lianxidianhua; ?></td>
				</tr>
                <tr>
					<th>工作经历：</th>
                    <td colspan="3"><?php echo $gongzuojingli; ?></td>
				</tr>
				</table>
				</form>
			</div>
		</div>
		<!--end-->
	</div>
</div>
</div>