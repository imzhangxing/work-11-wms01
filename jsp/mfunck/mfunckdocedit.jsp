<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="plug/jQuery-Tags-Input-master/dist/jquery.tagsinput.min.css" />
<link href="plug/datetime/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />

<div class="widget">
	<div class="widget-header bordered-bottom bordered-palegreen">
		<span class="widget-caption">新增出库单据</span>
	</div>
	<div class="widget-body">
		<div>
			<form class="form-horizontal form-bordered" role="form" id="mfunckdocEditForm">
<!-- 				<div class="form-group"> -->
<!-- 					<label for="inputEmail3" class="col-sm-2 control-label no-padding-right">仓库设置</label> -->
<!-- 					<div class="col-sm-10"> -->
<!-- 						<select id="arehouse_id" style="width: 100%;"> -->
<%-- 							<c:forEach items="${arehouses }" var="arehouse"> --%>
<%-- 								<option value="${arehouse.arehouseId }">${arehouse.name }</option> --%>
<%-- 							</c:forEach> --%>
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label no-padding-right">出库单号</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="ckdjNo" value="${mfunckDoc.ckdjNo}">
						<input type="hidden" class="form-control" name="ckdjId" value="${mfunckDoc.ckdjId}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">客户编号</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="ckdjClientno" value="${mfunckDoc.ckdjClientno}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">客户名称</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="ckdjClientname" value="${mfunckDoc.ckdjClientname}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">地址</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="adress" value="${mfunckDoc.adress}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">联系人</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="contacts" value="${mfunckDoc.contacts}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">联系电话</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="tel" value="${mfunckDoc.tel}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">发货时间</label>
					<div class="col-sm-10 date date-picker">
						<input type="text" class="form-control" name="yfhsj" value="${yfhTime}">
						<span class="add-on"><i class="icon-th"></i></span>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">说明备注</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="remarks" value="${mfunckDoc.remarks}">
					</div>
				</div>
				<div class="form-group">
					<div class="form-title">货品明细信息</div>
						<table class="table table-bordered table-striped" id = "editGoodsTable">
		                    <thead>
		                        <tr>
		                            <th><h5 class="no-margin-bottom">货品编号</h5></th>
		                            <th><h5 class="no-margin-bottom">货品名称</h5></th>
		                            <th><h5 class="no-margin-bottom">货品单位</h5></th>
		                            <th><h5 class="no-margin-bottom">货品数量</h5></th>
		                            <th><h5 class="no-margin-bottom">操作</h5></th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                    	<c:forEach items="${mfunckDoc.mfunckDocs }" var="docs">
		                    		<tr>
			                            <td>${docs.goodsno }</td>
			                            <td>${docs.goodsname }</td>
			                            <td>${docs.goodsunit }</td>
			                            <td><input type="text" name="goodscount" value = "${docs.goodscount }"/></td>
<!-- 			                            <td><a href=href="javascript:;">删除</a></td> -->
			                            <td><button type="button" class= "btn btn-danger delgoodsByDjId " onclick="delgoodsByDjId(${docs.ckmxId });" value="${docs.ckmxId }"  > 删除 </button></td>
			                        </tr>
		                    	</c:forEach>
		                        
		                    </tbody>
		                </table>
			</div>
<!-- 				<button class="btn btn-primary showGoodsInfo" data-toggle="modal" data-target="#showGoodsModal"> -->
<!-- 					<i class="fa fa-plus-circle"></i> 货品查询 -->
<!-- 				</button> -->
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">新增货品明细</label>
					<div class="col-sm-10">
						<select id="e1" style="width: 100%;">
							<c:forEach items="${baseGoodsList }" var="baseGoods">
								<option value="${baseGoods.name }-${baseGoods.no }">${baseGoods.name }</option>
							</c:forEach>
						</select>
					</div>
					
					
				</div>
				
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">录入货品数量 </label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="goodsCount" placeholder="录入货品数量">
					</div>
				</div>
				
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">录入货品单位</label>
					<div class="col-sm-5">
						<select id="e3" style="width: 100%;">
							<option value="">单位选择(--)</option>
							<option value="szdw">散支单位</option>
							<option value="zxdw">整箱单位</option>
						</select>
					</div>
					<div class="col-sm-5">
						<select id="e4" style="width: 100%;">
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="button" class="btn btn-palegreen addTags">附加货品清单</button>
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label no-padding-right">货品清单</label>
					<div class="col-sm-10">
						<input name="tags" id="tags" value="" />
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-palegreen">提交入库单</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


<script src="plug/select2/select2.js"></script>
<script src="plug/jQuery-Tags-Input-master/dist/jquery.tagsinput.min.js" type="text/javascript"></script>
<script src="plug/jquery-validation/js/jquery.validate.min.js"></script>
<script src="plug/datetime/bootstrap-datetimepicker.min.js"></script>
<script src="page/js/mfunck/mfunckdocedit.js" type="text/javascript"></script>
<script type="text/javascript">

	
	
	function delgoodsByDjId(data){
		var ckmxId = data;
		alert("货品id:" + ckmxId);
		var n;
		if(ckmxId != null){
			alert("feikong");
			layer.confirm('确认删除？', {
				  btn: ['确认','取消'] //按钮
				}, function(){
					
	 				$.ajax({
	 					type : "GET",
	 					url : getRootPath() + "/mfunckdoc/mfunck/deleteGoodsByckdjId",
	 					cache : false, // 禁用缓存
	 					data : {ckmxId:ckmxId}, // 传入组装的参数
	 					dataType : "json",
	 					success : function(result) {
	 						if(result.code=="1"){
	 							n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
	 				            $("#editGoodsTable").find("tr:eq("+n+")").remove();
	 							layer.alert('操作成功！', {icon: 6});
	 						}else{
	 							layer.msg("删除失败", {icon: 2, time: 1200});
	 						}
	 					}
	 				});
					
				}, function(){
					layer.msg("取消操作！", {icon: 1, time: 900});
				});
		}else{
			layer.confirm('确认删除？', {
				  btn: ['确认','取消'] //按钮
				}, function(){
					n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
		            $("#editGoodsTable").find("tr:eq("+n+")").remove();
					layer.alert('操作成功！', {icon: 6});
				});
		}
	}
	
	jQuery(document).ready(function() {
		$('.date-picker').datetimepicker({
            language: 'cn',
            orientation: "left",
            format: "yyyy-MM-dd hh:ii:ss",
            pickDate: true,  
            pickTime: true,  
//             minView: 'month',
            todayBtn: true,
            pickerPosition: "bottom-left",
            autoclose: true
        });
		MfunckdocEdit.init();
	});
</script>