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
					
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;"><span class="label label-danger arrowed-in-right arrowed">&nbsp;商品信息&nbsp;</span></td>	
								<td></td>																						   
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">商品备案:</td>
								<td colspan="10" style="padding-top: 13px;">${pd.TITLE}</td>
							</tr>
<%-- 							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">品牌:</td>
								<td style="padding-top: 13px;">${pd.BNAME}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">型号:</td>
								<td style="padding-top: 13px;">${pd.BIANMA}</td>
							</tr> --%>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">sn号:</td>
								<td colspan="10" style="padding-top: 13px;">${pd.DESCRIPTION}</td>
							</tr>

							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">类别:</td>
								<td style="padding-top: 13px;">${pd.TNAME}</td>
							</tr>

							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">成色:</td>
								<td style="padding-top: 13px;">${pd.DEGREE}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">使用耗材:</td>
								<td style="padding-top: 13px;">${pd.MATERIAL}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">计量单位:</td>
								<td style="padding-top: 13px;">${pd.UNAME}</td>
							</tr>
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;"><span class="label label-yellow arrowed-in-right arrowed">&nbsp;库存信息&nbsp;</span></td>																							   
								<td></td>	
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">进货价:</td>
								<td style="padding-top: 13px;">${pd.INFEE}&nbsp;元</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出货价:</td>
								<td style="padding-top: 13px;">${pd.OUTFEE}&nbsp;元</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">入库数量:</td>
								<td style="padding-top: 13px;">${pd.INCOUNT}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出库数量:</td>
								<td style="padding-top: 13px;">${pd.OUTCOUNT}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">库存量:</td>
								<td style="padding-top: 13px;">${pd.ZCOUNT}</td>
							</tr>
<%-- 							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注:</td>
								<td colspan="10" style="padding-top: 13px;">${pd.SHORTDESC}</td>
							</tr> --%>
						</table>
						</div>
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

<%-- <c:if test="${'edit' == msg }">
	<div>
		<iframe name="treeFrame" id="treeFrame" frameborder="0" src="<%=basePath%>/goodsmx/viewList.do?MASTER_ID=${pd.GOODS_ID}" style="margin:0 auto;width:805px;height:368px;;"></iframe>
	</div>
</c:if> --%>

	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		
		</script>
</body>
</html>