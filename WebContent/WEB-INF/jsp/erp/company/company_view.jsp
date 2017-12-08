<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="company/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="COMPANY_ID" id="COMPANY_ID" value="${pd.COMPANY_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;"><span class="btn-danger">&nbsp;客户信息&nbsp;</span></td>	
								<td></td>																						   
							</tr>
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;">客户名称:</td>
								<td style="padding-top: 13px;">${pd.NAME}</td>
							</tr>
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;">客户手机:</td>
								<td style="padding-top: 13px;">${pd.PHONE}</td>
							</tr>
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;">客户类型:</td>
								<td>
									<select name="LEVEL" id="LEVEL" placeholder="请选择" title="级别" style="width:98%;background-color:#EBEBEB" disabled="disabled">
									<c:forEach items="${varListL}" var="var">
										<option value="${var.LEVEL_ID }" <c:if test="${var.LEVEL_ID == pd.LEVEL }">selected</c:if>>${var.TITLE }</option>
									</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;">门店名称:</td>
								<td style="padding-top: 13px;">${pd.WEIXIN}</td>
							</tr>
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;">门店地址:</td>
								<td style="padding-top: 13px;">${pd.ADDRESS}</td>
							</tr>
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;">备注:</td>
								<td style="padding-top: 13px;">${pd.REMARKS1}</td>
							</tr>
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;"><span class="btn-success">&nbsp;结算管理&nbsp;</span></td>																							   
								<td></td>	
							</tr>
							<tr>
								<td style="width:100px;text-align: left;padding-top: 13px;">累计订单数量:</td>
								<td style="padding-top: 13px;">${pd.COUNTBILL}&nbsp;份</td>
							</tr>
							<tr>
								<td style="width:100px;text-align: left;padding-top: 13px;">累计订单金额:</td>
								<td style="padding-top: 13px;">${pd.MONEY}&nbsp;元</td>
							</tr>
							<tr>
								<td style="width:100px;text-align: left;padding-top: 13px;">累计实收金额:</td>
								<td style="padding-top: 13px;">${pd.INCOME}&nbsp;元</td>
							</tr>
							<tr>
								<td style="width:100px;text-align: left;padding-top: 13px;">累计欠费金额:</td>
								<td style="padding-top: 13px;">${pd.OUTMONEY}&nbsp;元</td>
							</tr>
						    <tr>
								<td style="width:100px;text-align: left;padding-top: 13px;">累计订单成本:</td>
								<td style="padding-top: 13px;">${pd.BASEMONEY}&nbsp;元</td>
							</tr>
						    <tr>
								<td style="width:100px;text-align: left;padding-top: 13px;">累计订单利润:</td>
								<td style="padding-top: 13px;">${pd.BILLFEE}&nbsp;元</td>
							</tr>

						</table>
						</div>
					</form>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		</script>
</body>
</html>