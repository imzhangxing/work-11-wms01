<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="page-breadcrumbs">
	<ul class="breadcrumb">
		<li><i class="fa fa fa-home"></i> <a href="#">首页</a></li>
		<li class="active">功能展示页</li>
	</ul>
</div>
<div class="page-header position-relative">
	<div class="header-buttons">
		<a class="sidebar-toggler" href="#"> <i class="fa fa-arrows-h"></i>
		</a> <a class="refresh" id="refresh-toggler" href="#"> <i class="glyphicon glyphicon-refresh"></i>
		</a> <a class="fullscreen" id="fullscreen-toggler" href="#"> <i class="glyphicon glyphicon-fullscreen"></i>
		</a>
	</div>
</div>
<div class="page-body">
	<div class="row">
		<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
	        <div class="databox databox-xxlg databox-vertical databox-inverted">
	            <div class="databox-top bg-whitesmoke no-padding">
	                <div class="databox-row row-2 bg-orange no-padding">
	                    <div class="databox-cell cell-1 text-align-center no-padding padding-top-5">
	                        <span class="databox-number white"><i class="fa fa-bar-chart-o no-margin"></i></span>
	                    </div>
	                    <div class="databox-cell cell-8 no-padding padding-top-5 text-align-left">
	                        <span class="databox-number white">PAGE VIEWS</span>
	                    </div>
	                    <div class="databox-cell cell-3 text-align-right padding-10">
	                        <span class="databox-text white">13 DECEMBER</span>
	                    </div>
	                </div>
	                <div class="databox-row row-4">
	                    <div class="databox-cell cell-6 no-padding padding-10 padding-left-20 text-align-left">
	                        <span class="databox-number orange no-margin">534,908</span>
	                        <span class="databox-text sky no-margin">OVERAL VIEWS</span>
	                    </div>
	                    <div class="databox-cell cell-2 no-padding padding-10 text-align-left">
	                        <span class="databox-number orange no-margin">4,129</span>
	                        <span class="databox-text darkgray no-margin">THIS WEEK</span>
	                    </div>
	                    <div class="databox-cell cell-2 no-padding padding-10 text-align-left">
	                        <span class="databox-number orange no-margin">329</span>
	                        <span class="databox-text darkgray no-margin">YESTERDAY</span>
	                    </div>
	                    <div class="databox-cell cell-2 no-padding padding-10 text-align-left">
	                        <span class="databox-number orange no-margin">104</span>
	                        <span class="databox-text darkgray no-margin">TODAY</span>
	                    </div>
	                </div>
	                <div class="databox-row row-6 no-padding">
	                    <div class="databox-sparkline">
	                        <span data-sparkline="line" data-height="126px" data-width="100%" data-fillcolor="#37c2e2" data-linecolor="#37c2e2" data-spotcolor="#fafafa" data-minspotcolor="#fafafa" data-maxspotcolor="#ffce55" data-highlightspotcolor="#f5f5f5 " data-highlightlinecolor="#f5f5f5" data-linewidth="2" data-spotradius="0">
	                        <canvas width="803" height="126" style="display: inline-block; width: 803px; height: 126px; vertical-align: top;"></canvas></span>
	                    </div>
	                </div>
	            </div>
	            <div class="databox-bottom bg-sky no-padding">
	                <div class="databox-cell cell-2 text-align-center no-padding padding-top-5">
	                    <span class="databox-header white">7月</span>
	                </div>
	                <div class="databox-cell cell-2 text-align-center no-padding padding-top-5">
	                    <span class="databox-header white">8月</span>
	                </div>
	                <div class="databox-cell cell-2 text-align-center no-padding padding-top-5">
	                    <span class="databox-header white">9月</span>
	                </div>
	                <div class="databox-cell cell-2 text-align-center no-padding padding-top-5">
	                    <span class="databox-header white">10月</span>
	                </div>
	                <div class="databox-cell cell-2 text-align-center no-padding padding-top-5">
	                    <span class="databox-header white">11月</span>
	                </div>
	                <div class="databox-cell cell-2 text-align-center no-padding padding-top-5">
	                    <span class="databox-header white">12月</span>
	                </div>
	                
	
	            </div>
	        </div>
	    </div>
		<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
			<div class="databox databox-xxlg databox-vertical databox-shadowed bg-white radius-bordered padding-5">
				<div class="databox-top">
					<div class="databox-row row-12">
						<div class="databox-cell cell-3 text-center">
							<div class="databox-number number-xxlg sonic-silver">164</div>
							<div class="databox-text storm-cloud">在线人数</div>
						</div>
						<div class="databox-cell cell-9 text-align-center">
							<div class="databox-row row-6 text-left">
								<span class="badge badge-palegreen badge-empty margin-left-5"></span> <span class="databox-inlinetext uppercase darkgray margin-left-5">总入库单据</span> <span class="badge badge-yellow badge-empty margin-left-5"></span> <span
									class="databox-inlinetext uppercase darkgray margin-left-5">总出库单据</span>
							</div>
							<div class="databox-row row-6">
								<div class="progress bg-yellow progress-no-radius">
									<div class="progress-bar progress-bar-palegreen" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 78%"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="databox-bottom">
					<div class="databox-row row-12">
						<div class="databox-cell cell-7 text-center  padding-5">
							<div id="dashboard-pie-chart-sources" class="chart"></div>
						</div>
						<div class="databox-cell cell-5 text-center no-padding-left padding-bottom-30">
							<div class="databox-row row-2 bordered-bottom bordered-ivory padding-10">
								<span class="databox-text sonic-silver pull-left no-margin">类型</span> <span class="databox-text sonic-silver pull-right no-margin uppercase">占比</span>
							</div>
							<div class="databox-row row-2 bordered-bottom bordered-ivory padding-10">
								<span class="badge badge-blue badge-empty pull-left margin-5"></span> <span class="databox-text darkgray pull-left no-margin hidden-xs">部分分配的入库单据</span> <span class="databox-text darkgray pull-right no-margin uppercase">46%</span>
							</div>
							<div class="databox-row row-2 bordered-bottom bordered-ivory padding-10">
								<span class="badge badge-orange badge-empty pull-left margin-5"></span> <span class="databox-text darkgray pull-left no-margin hidden-xs">完全分配的入库单据</span> <span class="databox-text darkgray pull-right no-margin uppercase">21%</span>
							</div>
							<div class="databox-row row-2 bordered-bottom bordered-ivory padding-10">
								<span class="badge badge-pink badge-empty pull-left margin-5"></span> <span class="databox-text darkgray pull-left no-margin hidden-xs">部分上架的入库单据</span> <span class="databox-text darkgray pull-right no-margin uppercase">12%</span>
							</div>
							<div class="databox-row row-2 bordered-bottom bordered-ivory padding-10">
								<span class="badge badge-palegreen badge-empty pull-left margin-5"></span> <span class="databox-text darkgray pull-left no-margin hidden-xs">完全上架的入库单据</span> <span class="databox-text darkgray pull-right no-margin uppercase">11%</span>
							</div>
							<div class="databox-row row-2 padding-10">
								<span class="badge badge-yellow badge-empty pull-left margin-5"></span> <span class="databox-text darkgray pull-left no-margin hidden-xs">状态异常/其他</span> <span class="databox-text darkgray pull-right no-margin uppercase">10%</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="row">

		<div class="col-lg-12 col-sm-12 col-xs-12">

			<div class="row">
				<div class="col-lg-6">
					<div class="widget">
						<div class="widget-header bordered-bottom bordered-themesecondary">
							<i class="widget-icon fa fa-tags themesecondary"></i> <span class="widget-caption themesecondary">用户操作历史记录</span>
						</div>
						<!--Widget Header-->
						<div class="widget-body">
							<div class="widget-main no-padding">
								<div class="tickets-container">
									<ul class="tickets-list">
									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>

				<div class="col-lg-6 col-sm-6 col-xs-6">
					<div class="widget">
						<div class="widget-header bordered-bottom bordered-themeprimary">
							<i class="widget-icon fa fa-tasks themeprimary"></i> <span class="widget-caption themeprimary">公告栏</span>
						</div>
						<!--Widget Header-->
						<div class="widget-body">
							<div class="widget-main no-padding">
								<div class="task-container">
									<div class="task-search">
										<span class="input-icon"> <input type="text" class="form-control" placeholder="Search Tasks"> <i class="fa fa-search gray"></i>
										</span>
									</div>
									<ul class="tasks-list">
										<li class="task-item">
											<div class="task-check">
												<label> <input type="checkbox"> <span class="text"></span>
												</label>
											</div>
											<div class="task-state">
												<span class="label label-orange"> 紧急 </span>
											</div>
											<div class="task-time">2016/12/21 下午11:26:36</div>
											<div class="task-body">为了增加九阳仓库的操作效率，为 九阳操作员 角色新增了一个账户，具体信息已发送至站内信！请注意查收。</div>
											<div class="task-creator">
												<a href="">超级管理员</a>
											</div>
											<div class="task-assignedto">发送给小红</div>
										</li>
										<li class="task-item">
											<div class="task-check">
												<label> <input type="checkbox"> <span class="text"></span>
												</label>
											</div>
											<div class="task-state">
												<span class="label label-palegreen"> 一般 </span>
											</div>
											<div class="task-time">2016/12/21 下午11:26:36</div>
											<div class="task-body">请将异常或者其他状态的入库单进行整理后删除或者修改！</div>
											<div class="task-creator">
												<a href="">超级管理员</a>
											</div>
											<div class="task-assignedto">全体公告</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>


	</div>

</div>
<!-- /Page Body -->
<script src="plug/charts/sparkline/jquery.sparkline.js"></script>

<script src="page/js/index/main.js"></script>
<script type="text/javascript">
   jQuery(document).ready(function() {
	Main.init();
});
</script>
