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
					
					<form action="customer/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="CUSTOMER_ID" id="CUSTOMER_ID" value="${pd.CUSTOMER_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">订单编号:</td>
								<td style="padding-top: 13px;">${pd.NAME}</td>
							</tr>
<%-- 							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">随机附件:</td>
								<td style="padding-top: 13px;">${pd.AGE}</td>
							</tr> --%>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">客户手机:</td>
								<td style="padding-top: 13px;">${pd.PHONE}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">客户微信:</td>
								<td style="padding-top: 13px;">${pd.WEIXIN}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">订单金额:</td>
								<td style="padding-top: 13px;">${pd.MONEY}&nbsp;元</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">订单类型:</td>
								<td>
									<select name="LEVEL" id="LEVEL" placeholder="请选择" title="级别" style="width:98%;background-color:#EBEBEB" disabled="disabled">
									<c:forEach items="${varListL}" var="var">
										<option value="${var.LEVEL_ID }" <c:if test="${var.LEVEL_ID == pd.LEVEL }">selected</c:if>>${var.TITLE }</option>
									</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修员:</td>
<%-- 								<td>
									<select name="REMARKS1" id="REMARKS1" placeholder="请选择" style="width:98%;background-color:#EBEBEB" disabled="disabled" >
									<c:forEach items="${varList}" var="var">
										<option value="${var.REMARKS }">${var.REMARKS }</option>
									</c:forEach>
									</select>
								</td> --%>
								<td style="padding-top: 13px;">${pd.REMARKS1}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修设备:</td>
								<td style="padding-top: 13px;">${pd.DEVICE}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修天数:</td>
								<td style="padding-top: 13px;">${pd.QQ}</td>
							</tr>							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">随机附件:</td>
								<td style="padding-top: 13px;">${pd.REMARKS2}</td>
							</tr>


							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修进度:</td>

								<td style="padding-top: 13px;">${pd.PLAN}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">付款方式:</td>

								<td style="padding-top: 13px;">${pd.PAY}</td>
							</tr>
							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">故障描述:</td>
								<td style="padding-top: 13px;">${pd.ADDRESS}</td>
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