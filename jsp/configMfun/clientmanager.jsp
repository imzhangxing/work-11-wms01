<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="page/css/dataTables.bootstrap.css" rel="stylesheet" />
<div class="page-breadcrumbs">
	<ul class="breadcrumb">
		<li><i class="fa fa-bookmark"></i> 业务字典</li>
		<li class="active">客户配置管理</li>
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
					<div class="dataTables_wrapper form-inline no-footer">
						<table class="table table-bordered table-hover table-striped" id="searchable">
							<thead>
								<tr role="row">
									<th></th>
									<th>客户名称</th>
									<th>客户地址</th>
									<th>联系方式</th>
									<th>创建时间</th>
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
</div>

<div class="modal fade" id="aboutClientModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content"></div>
	</div>
</div>


<script src="plug/datatable/jquery.dataTables.min.js"></script>
<script src="plug/datatable/ZeroClipboard.js"></script>
<script src="plug/datatable/dataTables.tableTools.min.js"></script>
<script src="plug/datatable/dataTables.bootstrap.min.js"></script>

<script src="page/js/configMfun/clientmanager.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		Clientmanager.init();
	});
</script>