<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form class="form-horizontal form-bordered" role="form">
    <div class="form-group">
        <label class="col-sm-2 control-label no-padding-right">选择储位组</label>
        <div class="col-sm-10">
            <select id="e1" style="width: 100%;">
				<c:forEach items="${arelocationGroups }" var="arelocationGroup">
					<option value="${arelocationGroup.groupId }">${arelocationGroup.groupName }</option>
				</c:forEach>
			</select>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label no-padding-right">储位列表</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name=arelocations_ value="${arelocations_ }">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="button" class="btn btn-danger submit">提交</button>
        </div>
    </div>
</form>

<script src="plug/select2/select2.js"></script>
<script src="page/js/configMfun/planLocationAddLocations.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		PlanLocationAddLocations.init();
	});
</script>