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
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
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
								<td><input type="text" name="MAINBOARD" id="MAINBOARD" value="${pd.MAINBOARD}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>
								<td style="width:75px;text-align: right;padding-top: 13px;">显卡:</td>						
								<td><input type="text" name="DISPLAYCARD" id="DISPLAYCARD" value="${pd.DISPLAYCARD}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>								
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">光存储:</td>
								<td><input type="text" name="STORAGE" id="STORAGE" value="${pd.STORAGE}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>
								<td style="width:75px;text-align: right;padding-top: 13px;">CPU:</td>						
								<td><input type="text" name="CPU" id="CPU" value="${pd.CPU}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>								
							</tr>
														<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">内存:</td>
								<td><input type="text" name="MEMORY" id="MEMORY" value="${pd.MEMORY}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>
								<td style="width:75px;text-align: right;padding-top: 13px;">硬盘:</td>						
								<td><input type="text" name="DISK" id="DISK" value="${pd.DISK}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>								
							</tr>
														<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">声卡:</td>
								<td><input type="text" name="VOIDCARD" id="VOIDCARD" value="${pd.VOIDCARD}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>
								<td style="width:75px;text-align: right;padding-top: 13px;">显示器:</td>						
								<td><input type="text" name="DISPLAYER" id="DISPLAYER" value="${pd.DISPLAYER}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>								
							</tr>
														<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">鼠标键盘:</td>
								<td><input type="text" name="KEYBOARD" id="KEYBOARD" value="${pd.KEYBOARD}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>
								<td style="width:75px;text-align: right;padding-top: 13px;">散热器:</td>						
								<td><input type="text" name="RADIATOR" id="RADIATOR" value="${pd.RADIATOR}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>								
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">打印机:</td>
								<td><input type="text" name="PRINTER" id="PRINTER" value="${pd.PRINTER}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注1:</td>
								<td><input type="text" name="REMARK1" id="REMARK1" value="${pd.REMARK1}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>
							</tr>
							<tr>
								
								<td style="width:75px;text-align: right;padding-top: 13px;">维修进度:</td>
								<td>
									<select name="STATUS" id="STATUS" placeholder="请选择维修进度" style="width:98%;" >
										<c:forEach items="${planList}" var="var">
											<option value="${var.PLAN_ID }" <c:if test="${var.PLAN_ID == pd.STATUS}">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注2:</td>						
								<td><input type="text" name="REMARK2" id="REMARK2" value="${pd.REMARK2}" maxlength="30" placeholder="这里输入品牌/型号" title="商品编码" style="width:98%;"/></td>								
							</tr>	
			
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">维修记录:</td>
								<td colspan="10">
								<textarea name="CDESCRIPTION" id="CDESCRIPTION" style="display: none;" placeholder="这里输入描述" title="描述">${pd.CDESCRIPTION}</textarea>
								 <script id="editor1" type="text/plain" style="width:88%;height:200px;">${pd.CDESCRIPTION}</script>
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
	<!-- 百度富文本编辑框-->
	<script type="text/javascript" charset="utf-8">window.UEDITOR_HOME_URL = "<%=path%>/plugins/ueditor/";</script>
	<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.all.js"></script>
	<!-- 百度富文本编辑框-->
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
 			$("#CDESCRIPTION").val(getContent1());
/* 			if($("#CDESCRIPTION").val()==""){
				$("#CDESCRIPTION").tips({
					side:3,
		            msg:'请输入描述',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CDESCRIPTION").focus();
			return false;
			}  */
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		//百度富文本
		setTimeout("ueditor1()",500);
		//百度富文本
		function ueditor1(){
			UE.getEditor('editor1');
		}
		function getContent1() {
		    var arr = [];
		    arr.push(UE.getEditor('editor1').getContent());
		    return arr.join("");
		}
		</script>
</body>
</html>