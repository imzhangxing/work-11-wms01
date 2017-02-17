<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<div class="widget flat radius-bordered" style="width: 600px;">
	<div class="widget-header bg-palegreen">
		<span class="widget-caption">编辑仓库</span>
	</div>
	<div class="widget-body">
		<div id="registration-form">
			<form id="editArehouseForm">
				<div class="form-title">仓库基本信息</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" name="name" placeholder="仓库名称..." value="${arehouse.name }"> <i class="glyphicon glyphicon-user circular"></i>
					</span>
				</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" name="jc" placeholder="仓库简称..." value="${arehouse.jc }"> <i class="fa fa-envelope-o circular"></i>
					</span>
				</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" name="no" placeholder="仓库编号..." value="${arehouse.no }"> <i class="fa fa-lock circular"></i>
					</span>
				</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" name="addr" placeholder="仓库地址..." value="${arehouse.addr }"> <i class="fa fa-lock circular"></i>
					</span>
				</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" name="scity" placeholder="所在地市..." value="${arehouse.scity }"> <i class="fa fa-lock circular"></i>
					</span>
				</div>
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" name="worktype" placeholder="仓库/作业类型..." value="${arehouse.worktype }"> <i class="fa fa-lock circular"></i>
					</span>
				</div>
				<div class="form-title">详情仓库信息</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="scontacts" placeholder="联系人..." value="${arehouse.scontacts }"> <i class="fa fa-user"></i>
							</span>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="phone1" placeholder="联系方式1..." value="${arehouse.phone1 }"> <i class="fa fa-user"></i>
							</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="phone2" placeholder="联系方式2(010-12345678)" value="${arehouse.phone2 }"> <i class="glyphicon glyphicon-earphone"></i>
							</span>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="phone3" placeholder="联系方式3..." value="${arehouse.phone3 }"> <i class="glyphicon glyphicon-phone"></i>
							</span>
						</div>
					</div>
				</div>
				<hr class="wide">
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="acreage" placeholder="面积" value="${arehouse.acreage }"> <i class="fa fa-calendar"></i>
							</span>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="stacking" placeholder="堆垛形式" value="${arehouse.stacking }"> <i class="fa fa-globe"></i>
							</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="humidity" placeholder="相对湿度" value="${arehouse.humidity }"> <i class="fa fa-calendar"></i>
							</span>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="fax" placeholder="传真" value="${arehouse.fax }"> <i class="fa fa-globe"></i>
							</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="postoffice" placeholder="邮编" value="${arehouse.postoffice }"> <i class="fa fa-calendar"></i>
							</span>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<span class="input-icon icon-right"> <input type="text" class="form-control" name="ctype" placeholder="仓库类型" value="${arehouse.ctype }"> <i class="fa fa-globe"></i>
							</span>
						</div>
					</div>
				</div>

				<div class="form-actions">
					<button type="submit" class="btn default">确认新增</button>
					<button type="reset" class="btn default">重置信息</button>
				</div>
			</form>
			
		</div>
	</div>
</div>

<input type="text" class="form-control" name="arehouse_Id" placeholder="仓库id" value="${arehouse.arehouseId }" style="display: none"/>
<script src="plug/jquery-validation/js/jquery.validate.min.js"></script>
<script src="page/js/configMfun/arehouseEditForm.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		ArehouseEditForm.init();
	});
</script>