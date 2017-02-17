<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="plug/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">

<div class="page-breadcrumbs">
	<ul class="breadcrumb">
		<li><i class="fa fa-cog"></i> 系统资源</li>
		<li class="active">系统权限配置</li>
		<li class="active">系统用户管理</li>
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
		<div class="col-lg-12 col-sm-12 col-xs-12">
			<div class="widget">
				<div class="widget-header bordered-bottom bordered-lightred">
					<span class="widget-caption">Horizontal Form</span>
				</div>
				<div class="widget-body">
					<ul id="treeDemo" class="ztree"></ul>
					<div class="">
						<button type="button" class="btn btn-default checkAllNodes">勾选全部</button>
						<button type="button" class="btn btn-default noCheckAllNodes">清空选择</button>
						<button type="button" class="btn btn-blue submitAllCheck">修改菜单配置</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="plug/zTree/js/jquery.ztree.core.min.js"></script>
<script src="plug/zTree/js/jquery.ztree.excheck.min.js"></script>
<script src="plug/zTree/js/jquery.ztree.exedit.min.js"></script>
<style type="text/css">
.ztree li span.button.add {margin-left:2px; margin-right: -1px; background-position:-144px 0; vertical-align:top; *vertical-align:middle}
</style>


<script src="page/js/configsys/menumanager.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		MenuManager.init();
	});
</script>