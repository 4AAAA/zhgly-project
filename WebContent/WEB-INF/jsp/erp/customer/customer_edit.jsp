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
							<tr style="display:none">
								<td style="width:75px;text-align: right;padding-top: 13px;">姓名:</td>
								<td><input type="text" name="NAME" id="NAME" value="${pd.NAME}" maxlength="100" placeholder="这里输入姓名" title="姓名" style="width:98%;"/></td>
							</tr> 

							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">客户手机:</td>
								<td><input type="number" name="PHONE" id="PHONE" value="${pd.PHONE}" maxlength="32" placeholder="这里输入客户手机" title="手机" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">客户微信:</td>
								<td><input type="text" name="WEIXIN" id="WEIXIN" value="${pd.WEIXIN}" maxlength="100" placeholder="这里输入客户微信" title="微信" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">订单金额:</td>
								<td><input type="number" name="MONEY" id="MONEY" value="${pd.MONEY}" maxlength="32" placeholder="这里输入订单金额" title="消费金额" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">订单类型:</td>
								<td>
									<select name="LEVEL" id="LEVEL" placeholder="请选择订单类别" title="级别" style="width:98%;" >
									<c:forEach items="${varListL}" var="var">
										<option value="${var.LEVEL_ID }" <c:if test="${var.LEVEL_ID == pd.LEVEL }">selected</c:if>>${var.TITLE }</option>
									</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修员:</td>
								<td>
									<select name="REMARKS1" id="REMARKS1" placeholder="请选择维修员" style="width:98%;" >
									<c:forEach items="${varList}" var="var">
										<option value="${var.REMARKS }" <c:if test="${var.REMARKS == pd.REMARKS1}">selected</c:if>>${var.REMARKS }</option>
									</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修设备:</td>
								<td>
									<select name="DEVICE" id="DEVICE" placeholder="请选择维修设备" style="width:98%;" >
										<c:forEach items="${deviceList}" var="var">
											<option value="${var.REMARKS }" <c:if test="${var.REMARKS == pd.DEVICE}">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
							</tr>

							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修天数:</td>
								<td><input type="number" name="QQ" id="QQ" value="${pd.QQ}" maxlength="32" placeholder="这里输入维修天数" title="QQ" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">随机附件:</td>
								<td>
									<select name="REMARKS2" id="REMARKS2" placeholder="请选择随机附件" style="width:98%;" >
										<c:forEach items="${attachmentList}" var="var">
											<option value="${var.REMARKS }" <c:if test="${var.REMARKS == pd.ATTACHMENT}">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修进度:</td>
								<td>
									<select name="PLAN" id="PLAN" placeholder="请选择维修进度" style="width:98%;" >
										<c:forEach items="${planList}" var="var">
											<option value="${var.REMARKS }" <c:if test="${var.REMARKS == pd.PLAN}">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">付款方式:</td>
								<td>
									<select name="PAY" id="PAY" placeholder="请选择付款方式" style="width:98%;" >
										<c:forEach items="${payList}" var="var">
											<option value="${var.REMARKS }" <c:if test="${var.REMARKS == pd.PAY}">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">故障描述:</td>
								<td>
								<!-- <input type="text" name="ADDRESS" id="" value="" maxlength="1000" placeholder="这里输入故障描述" title="" style="width:98%;"/> -->
								<textarea rows="" cols="" name="ADDRESS" id="ADDRESS" title="地址" style="width:98%;">${pd.ADDRESS}</textarea>
								</td>
							</tr>

							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
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
		//保存
		function save(){

			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		</script>
</body>
</html>