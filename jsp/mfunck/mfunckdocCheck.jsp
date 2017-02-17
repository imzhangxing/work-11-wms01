<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<div class="widget flat radius-bordered">
		<div class="widget-header bg-blue">
			<span class="widget-caption">出库单据查询</span>
		</div>
		<div class="widget-body">
			<div id="registration-form">
					<div class="form-title">出库单据主体信息</div>
					<table class="table table-bordered table-striped">
	                    <thead>
	                        <tr>
	                            <th><h5 class="no-margin-bottom">属性</h5></th>
	                            <th><h5 class="no-margin-bottom">值</h5></th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <tr>
	                            <td>出库单号</td>
	                            <td><a href="#">${mfunckDoc.ckdjNo }</a></td>
	                        </tr>
	                        <tr>
	                            <td>客户编号</td>
	                            <td><a href="#">${mfunckDoc.ckdjClientno }</a></td>
	                        </tr>
	                        <tr>
	                            <td>客户名称</td>
	                            <td><a href="#">${mfunckDoc.ckdjClientname }</a></td>
	                        </tr>
	                        <tr>
	                            <td>地址</td>
	                            <td><a href="#">${mfunckDoc.adress }</a></td>
	                        </tr>
	                        <tr>
	                            <td>联系人</td>
	                            <td><a href="#">${mfunckDoc.contacts }</a></td>
	                        </tr>
	                        <tr>
	                            <td>联系电话</td>
	                            <td><a href="#">${mfunckDoc.tel }</a></td>
	                        </tr>
	                        <tr>
	                            <td>下单时间</td>
	                            <td><a href="#">${xdsj }</a></td>
	                        </tr>
	                        <tr>
	                            <td>发货时间</td>
	                            <td><a href="#">${yfhsj }</a></td>
	                        </tr>
	                        <tr>
	                            <td>备注</td>
	                            <td><a href="#">${mfunckDoc.remarks }</a></td>
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
		                        </tr>
		                    </thead>
		                    <tbody>
		                    	<c:forEach items="${mfunckDoc.mfunckDocs }" var="docs">
		                    		<tr>
			                            <td>${docs.goodsno }</td>
			                            <td>${docs.goodsname }</td>
			                            <td>${docs.goodsunit }</td>
			                            <td>${docs.goodscount }</td>
			                        </tr>
		                    	</c:forEach>
		                        
		                    </tbody>
		                </table>
			</div>
		</div>
	</div>
