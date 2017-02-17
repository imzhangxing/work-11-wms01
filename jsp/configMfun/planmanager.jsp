<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="page/css/dataTables.bootstrap.css" rel="stylesheet" />
<div class="page-breadcrumbs">
	<ul class="breadcrumb">
		<li><i class="fa fa-bookmark"></i> 业务字典</li>
		<li class="active">平面图配置管理</li>
	</ul>
</div>
<div class="page-header position-relative">
	<!-- <div class="header-title">
		<h1>功能选项卡</h1>
	</div> -->
	<!--Header Buttons-->
	<div class="header-buttons">
		<a class="sidebar-toggler" href="#"> <i class="fa fa-arrows-h"></i>
		</a> <a class="refresh" id="refresh-toggler" href=""> <i class="glyphicon glyphicon-refresh"></i>
		</a> <a class="fullscreen" id="fullscreen-toggler" href="#"> <i class="glyphicon glyphicon-fullscreen"></i>
		</a>
	</div>
	<!--Header Buttons End-->
</div>

<div class="page-body">

	<div class="row">
		<div class="col-xs-12 col-md-12">
			<div class="widget">
				<div class="widget-header bordered-bottom bordered-yellow">
					<span class="widget-caption">平面图配置管理</span>
					<div class="widget-buttons">
						<a href="#" data-toggle="maximize"> <i class="fa fa-expand"></i>
						</a> <a href="#" data-toggle="collapse"> <i class="fa fa-minus"></i>
						</a> <a href="#" data-toggle="dispose"> <i class="fa fa-times"></i>
						</a>
					</div>
				</div>

				<div class="widget-body no-padding">

					<table class="table table-bordered table-hover table-striped" id="searchable">
						<thead class="bordered-darkorange">
							<tr role="row">
								<th></th>
								<th>平面图名称</th>
								<th>创建时间</th>
								<th>状态</th>
								<th>操作</th>
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

<div class="modal fade" id="aboutArehousePlanModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content"></div>
	</div>
</div>

<div class="modal fade" id="planEditModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog" style="width: 90%">
		<div class="modal-content"></div>
	</div>
</div>

<script src="plug/datatable/jquery.dataTables.min.js"></script>
<script src="plug/datatable/ZeroClipboard.js"></script>
<script src="plug/datatable/dataTables.tableTools.min.js"></script>
<script src="plug/datatable/dataTables.bootstrap.min.js"></script>

<script src="page/js/configMfun/planmanager.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		Planmanager.init();
	});
</script>