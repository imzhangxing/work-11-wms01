<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link href="page/css/dataTables.bootstrap.css" rel="stylesheet" />
<div class="page-breadcrumbs">
	<ul class="breadcrumb">
		<li><i class="fa fa-bookmark"></i> 业务处理</li>
		<li class="active">出库过程</li>
		<li class="active">出库单据管理</li>
	</ul>
</div>
<div class="page-header position-relative">
	<!--Header Buttons-->
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

				<div class="widget-body bordered-top bordered-bottom bordered-blueberry ">
					<div class="dataTables_wrapper form-inline no-footer">
						<table class="table table-bordered table-hover table-striped dataTable no-footer DTTT_selectable" id="searchable">
							<thead>
								<tr role="row">
									<th></th>
									<th>出库单编号/编码</th>
									<th>客户编号</th>
									<th>客户名称</th>
									<th>地址</th>
									<th>联系人</th>
									<th>电话</th>
									<th>订单状态</th>
									<th>下单时间</th>
									<th>预发货时间</th>
									<th>备注</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
					
					<div class="paramInfo"><span class="status_"></span> <span class="arehouseid_"></span></div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="checkCkHistory" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content" style="width:700px;"></div>
	</div>
</div>

<input type="text" name="status" value="0" style="display:none;"/>
<input type="text" name="arehouseId" value="0" style="display:none;"/>

<script src="plug/datatable/jquery.dataTables.min.js"></script>
<script src="plug/datatable/ZeroClipboard.js"></script>
<script src="plug/datatable/dataTables.tableTools.min.js"></script>
<script src="plug/datatable/dataTables.bootstrap.min.js"></script>

<script src="page/js/main/ckdjcxmanager.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		Ckdjcxmanager.init();
	});
</script>