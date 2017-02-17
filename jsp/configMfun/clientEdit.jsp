<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<div class="widget flat radius-bordered" style="width: 600px;">
	<div class="widget-header bg-palegreen">
		<span class="widget-caption">编辑客户</span>
	</div>
	<div class="widget-body">
		<div id="registration-form">
			<form id="editClientForm">
				<div class="form-title">客户基本信息</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" placeholder="客户编号..." name="cno" value="${client.cno }"> <i class="glyphicon glyphicon-user circular"></i>
					</span>
				</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" placeholder="客户名称..." name="cname" value="${client.cname }"> <i class="fa fa-envelope-o circular"></i>
					</span>
				</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" placeholder="客户地址..." name="caddr" value="${client.caddr }"> <i class="fa fa-lock circular"></i>
					</span>
				</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" placeholder="客户联系方式..." name="ctel" value="${client.ctel }"> <i class="fa fa-lock circular"></i>
					</span>
				</div>

				<div class="form-actions">
					<button type="submit" class="btn default">确认新增</button>
					<button type="reset" class="btn default">重置信息</button>
				</div>
			</form>
			
		</div>
	</div>
</div>

<input type="text" class="form-control" name="client_Id" value="${client.clientId }" style="display: none"/>
<script src="plug/jquery-validation/js/jquery.validate.min.js"></script>
<script src="page/js/configMfun/clientEditForm.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		ClientEditForm.init();
	});
</script>