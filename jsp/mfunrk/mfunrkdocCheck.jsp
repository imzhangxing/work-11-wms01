<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<div class="widget flat radius-bordered">
		<div class="widget-header bg-blue">
			<span class="widget-caption">入库单据查询</span>
		</div>
		<div class="widget-body">
			<div id="registration-form">
					<div class="form-title">入库单据主体信息</div>
					<table class="table table-bordered table-striped">
	                    <thead>
	                        <tr>
	                            <th><h5 class="no-margin-bottom">属性</h5></th>
	                            <th><h5 class="no-margin-bottom">值</h5></th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <tr>
	                            <td>入库单号</td>
	                            <td><a href="#">${doc.rkdjNo }</a></td>
	                        </tr>
	                    </tbody>
	                </table>
	                <hr />
					<div class="form-title">原始明细信息</div>
						<table class="table table-bordered table-striped">
		                    <thead>
		                        <tr>
		                            <th><h5 class="no-margin-bottom">货品编号</h5></th>
		                            <th><h5 class="no-margin-bottom">货品名称</h5></th>
		                            <th><h5 class="no-margin-bottom">货品单位</h5></th>
		                            <th><h5 class="no-margin-bottom">货品数量</h5></th>
		                            <th><h5 class="no-margin-bottom">状态</h5></th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                    	<c:forEach items="${doc.docsList }" var="docs">
		                    		<tr>
			                            <td>${docs.goodsno }</td>
			                            <td>${docs.goodsname }</td>
			                            <td>${docs.goodsunit }</td>
			                            <td>${docs.goodscount }</td>
			                            <td>
			                            	<c:if test="${docs.fpstatus==1 }"><span class="label label-azure">初始明细</span></c:if>
			                            	<c:if test="${docs.fpstatus==2 }"><span class="label label-orange">部分分配</span></c:if>
			                            	<c:if test="${docs.fpstatus==3 }"><span class="label label-sky">完全分配</span></c:if>
			                            </td>
			                        </tr>
		                    	</c:forEach>
		                        
		                    </tbody>
		                </table>
			</div>
		</div>
	</div>
