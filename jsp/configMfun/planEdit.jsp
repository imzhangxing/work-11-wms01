<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="page/css/configMfun/planEdit.css" rel="stylesheet" type="text/css" />
<link href="plug/jPages-master/css/jPages.css" rel="stylesheet" type="text/css" />

<div class="widget flat radius-bordered">
	<div class="widget-header bg-danger">
		<span class="widget-caption" id="plan_name"></span>
	</div>

	<div class="widget-body">
		<div class="registration-form">
			<div class="form-title"><i class="fa fa-exchange"></i> 示例</div>
			<div class="row">
				<div id="legend"></div>
			</div>
		</div>
		<div class="registration-form" style="padding-bottom:20px">
			<div class="form-title"><i class="fa fa-credit-card"></i> 平面图<strong>区域</strong>展示图</div>
			<div class="row">
				<div id="seat-map-demo" style="overflow:auto; "></div>
			</div>
		</div>
		
		<div class="registration-form">
			<div class="form-title"><i class="fa fa-flask"></i> 区域添加储位信息(点击未定义的区域开始！)</div>
			<div class="form-group">
				<a href="javascript:void(0);" class="btn btn-sky shiny planAddCunChuqu">设置为存储区</a>
				<a href="javascript:void(0);" class="btn btn-sky shiny planAddFenJianQu">设置为分拣区</a>
				<a href="javascript:void(0);" class="btn btn-sky shiny planAddZanCunQu">设置为暂存区</a>
				<a href="javascript:void(0);" class="btn btn-sky shiny planAddBuHeGeQu">设置为不合格区</a>
				
				<a href="javascript:void(0);" class="btn btn-purple shiny findAllArelocation">查询所有储位</a>
				<!-- <a href="javascript:void(0);" class="btn btn-purple shiny findAllArelocationGroup">查询所有储位组</a> -->
			</div>
		</div>
		
		<div class="registration-form" id="planEditTableDiv" style="display:none">
			<div class="form-title"><i class="fa fa-flask"></i> 区域添加储位信息(点击未定义的区域开始！)</div>
			<div class="row">
				<div class="col-xs-12 col-md-12">
					<div class="flip-scroll">
						<a class="btn btn-danger planAddLocations" href="javascript:void(0);"><i class="fa fa-times"></i> 添加至储位组</a>
						<a class="btn btn-danger relplanAddLocations" href="javascript:void(0);"><i class="fa fa-times"></i> 刷新</a>
                        <table class="table table-bordered table-striped table-condensed flip-content EEE">
                            <thead class="flip-content bordered-palegreen EEE">
                                <tr></tr>
                            </thead>
                            <tbody class="EEE" id="itemContainer">
                            </tbody>
                            
                        </table>
                        <div class="holder"></div>
                    </div>
				</div>
			</div>
		</div>
		
		
	</div>
</div>

<input type="text" name="planEdit" value="${plan_id }" style="display: none" />
 <div id="myModal" style="display:none;">
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="To" required="">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject" required="">
            </div>
            <div class="form-group">
                <textarea class="form-control" placeholder="Content" rows="5" required=""></textarea>
            </div>
        </div>
    </div>
</div>
<!-- <script src="plug/bootbox/bootbox.js"></script> -->
<script src="plug/jPages-master/js/jPages.js"></script>
<script src="plug/jquery-seatCharts/jquery.seat-charts.min.js" type="text/javascript"></script>
<script src="page/js/configMfun/planEdit.js" type="text/javascript"></script>

<script type="text/javascript">
	jQuery(document).ready(function() {
		PlanEdit.init();
	});
</script>