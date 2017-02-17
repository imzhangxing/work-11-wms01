<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="plug/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">

<div class="widget">
	<div class="widget-header bordered-bottom bordered-magenta">
		<span class="widget-caption">配置菜单</span>
	</div>
	<div class="widget-body">
		<div>
			<h5>为"${client.cname }"配置客户(请尽量为一个角色配置一个客户)！</h5>
			<hr />
			<form role="form">
				<div class="form-group">
					<c:forEach items="${baseGoodsList }" var="baseGoods">
						<div class="checkbox">
	                       <label>
	                           <input type="checkbox" class="colored-magenta" value="${baseGoods.goodsId }" name="${baseGoods.goodsId }">
	                           <span class="text">${baseGoods.name }</span>
	                       </label>
	                   </div>
					</c:forEach>
				</div>
				<button type="button" class="btn btn-magenta clientAddGoodsSubmit">修改货品关联配置</button>
			</form>
		</div>
	</div>
</div>


<input type="text" value="${client.clientId }" name="clientAddGoods" style="display:none"/>
<script src="page/js/configMfun/clientAddGoods.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		ClientAddGoods.init();
	});
</script>