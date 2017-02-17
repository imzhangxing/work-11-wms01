<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="page/css/dataTables.bootstrap.css" rel="stylesheet" />
<div class="page-breadcrumbs">
	<ul class="breadcrumb">
		<li><i class="fa fa-bookmark"></i> 系统维护</li>
		<li class="active">用户登录统计</li>
	</ul>
</div>
<div class="page-header position-relative">
	<div class="header-buttons">
		<a class="sidebar-toggler" href="#"> <i class="fa fa-arrows-h"></i>
		</a> <a class="refresh" id="refresh-toggler" href=""> <i class="glyphicon glyphicon-refresh"></i>
		</a> <a class="fullscreen" id="fullscreen-toggler" href="#"> <i class="glyphicon glyphicon-fullscreen"></i>
		</a>
	</div>
</div>

<div class="page-body">

	<div class="row">
		<div class="col-xs-12 col-md-12">
			<div class="widget">

				<div class="widget-body">

					<table class="table table-bordered table-hover table-striped" id="searchable">
						<thead>
							<tr role="row">
								<th></th>
								<th>登录账户</th>
								<th>账户昵称</th>
								<th>登录地址</th>
								<th>进行的操作</th>
								<th>时间记录</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
					
				</div>
			</div>
		</div>
	</div>
</div>

<script src="plug/datatable/jquery.dataTables.min.js"></script>
<script src="plug/datatable/ZeroClipboard.js"></script>
<script src="plug/datatable/dataTables.tableTools.min.js"></script>
<script src="plug/datatable/dataTables.bootstrap.min.js"></script>

<script src="page/js/syslog/userlogininfo.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		Userlogininfo.init();
	});
</script>