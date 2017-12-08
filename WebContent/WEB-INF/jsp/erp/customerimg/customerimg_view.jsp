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
	<form action="customerimg/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="CUSTOMERIMG_ID" id="CUSTOMERIMG_ID" value="${pd.CUSTOMERIMG_ID}"/>
						<input type="hidden" name="CUSTOMER_ID" id="CUSTOMER_ID" value="${pd.CUSTOMER_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
<%-- 							<tr>
								<td>
									<textarea name="CDESCRIPTION" id="CDESCRIPTION" style="display: none;" placeholder="这里输入描述" title="描述">${pd.CDESCRIPTION}</textarea>
									<script id="editor1" type="text/plain" style="width:100%;height:320px;">${pd.CDESCRIPTION}</script>
								</td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr> --%>
							
					
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">主板:</td>
								<td>${pd.MAINBOARD}</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">显卡:</td>						
								<td>${pd.DISPLAYCARD}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">光存储:</td>
								<td>${pd.STORAGE}</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">CPU:</td>						
								<td>${pd.CPU}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">内存:</td>
								<td>${pd.MEMORY}</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">硬盘:</td>						
								<td>${pd.DISK}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">声卡:</td>
								<td>${pd.VOIDCARD}</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">显示器:</td>						
								<td>${pd.DISPLAYER}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">鼠标键盘:</td>
								<td>${pd.KEYBOARD}</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">散热器:</td>						
								<td>${pd.RADIATOR}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">打印机:</td>
								<td>${pd.PRINTER}</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注1:</td>
								<td>${pd.REMARK1}</td>
								
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修进度:</td>							
								<td>
									<select name="STATUS" id="STATUS" placeholder="请选择" title="级别" style="width:98%;background-color:#EBEBEB" disabled="disabled">
									<c:forEach items="${planList}" var="var">
										<option value="${var.PLAN_ID }" <c:if test="${var.PLAN_ID == pd.STATUS }">selected</c:if>>${var.REMARKS }</option>
									</c:forEach>
									</select>
								</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注2:</td>						
								<td>${pd.REMARK2}</td>
							</tr>																
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修记录:</td>
								<td colspan="10" style="padding-top: 13px;"><div>${pd.CDESCRIPTION}</div></td>
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
		<script type="text/javascript">
		$(top.hangge());
		</script>
</body>
</html>