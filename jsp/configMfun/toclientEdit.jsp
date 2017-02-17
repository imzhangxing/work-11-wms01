<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="plug/jQuery-Tags-Input-master/dist/jquery.tagsinput.min.css" />

<div class="widget">
	<div class="widget-header bordered-bottom bordered-palegreen">
		<span class="widget-caption">编辑发货方</span>
	</div>
	<div class="widget-body">
		<div>
			<form class="form-horizontal form-bordered" role="form" id="editReceiptForm">

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label no-padding-right">收货方名称</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="receiptName" placeholder="收货方名称" value="${receipt.receiptName }">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label no-padding-right">收货方地址</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="receiptAddr" placeholder="收货方地址" value="${receipt.receiptAddr }">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-palegreen">提交</button>
						<button type="reset" class="btn default">重置信息</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<input type="text" class="form-control" name="receipt_Id" value="${receipt.receiptId }" style="display: none"/>
<script src="plug/select2/select2.js"></script>
<script src="plug/jQuery-Tags-Input-master/dist/jquery.tagsinput.min.js" type="text/javascript"></script>
<script src="plug/jquery-validation/js/jquery.validate.min.js"></script>
<script src="page/js/configMfun/toclientEditForm.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		ToclientEditForm.init();
	});
</script>
