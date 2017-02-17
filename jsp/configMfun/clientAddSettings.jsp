<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="widget radius-bordered">
	<div class="widget-header bordered-bottom bordered-blue">
		<span class="widget-caption">为 [${baseClient.cname }] 配置客户属性</span>
	</div>
	<div class="widget-body bordered-bottom bordered-blue">

		<div>
			<form role="form">
				<hr class="wide">
				<div class="form-group">
					<label for="exampleInputPassword1">配置客户监听地址(url格式)</label> <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">配置客户监听心跳周期(毫秒计时)</label> <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
				</div>
				<hr class="wide">
				<div class="control-group">
                   <div class="radio">
                       <label>
                           <input name="form-field-radio" type="radio" checked="checked">
                           <span class="text">运行中 </span>
                       </label>
                   </div>
                   <div class="radio">
                       <label>
                           <input name="form-field-radio" type="radio" class="inverted">
                           <span class="text">被禁用</span>
                       </label>
                   </div>
               </div>
               <hr class="wide">
               
				<button type="submit" class="btn btn-blue">Submit</button>
			</form>
		</div>
	</div>
</div>

<input type="text" value="${baseClient.clientId }" name="clientAddSettings" style="display: none" />
<script src="page/js/configMfun/clientAddSettings.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		ClientAddSettings.init();
	});
</script>