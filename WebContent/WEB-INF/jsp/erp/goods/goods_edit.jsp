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
					
					<form action="goods/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="GOODS_ID" id="GOODS_ID" value="${pd.GOODS_ID}"/>
						<input type="hidden" name="OUTCOUNT" id="OUTCOUNT" value="${pd.OUTCOUNT}"/>
						<textarea name="DESCRIPTION" id="DESCRIPTION" style="display:none" >${pd.DESCRIPTION}</textarea>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;"><span class="label label-danger arrowed-in-right arrowed">&nbsp;商品信息&nbsp;</span></td>	
								<td></td>																						   
							</tr>
							<tr>
								<td style="width:80px;text-align: right;padding-top: 13px;">商品备案:</td>
								<td><input type="text" name="TITLE" id="TITLE" value="${pd.TITLE}" maxlength="255" placeholder="商品备案：品牌+型号+类别" title="商品名称" style="width:98%;"/></td>
							</tr>
<%-- 							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">品牌:</td>
								<td>
									<select class="chosen-select form-control" name="SPBRAND_ID" id="SPBRAND_ID" data-placeholder="请选择品牌" style="vertical-align:top;width:98%;" >
										<option value="">无品牌</option>
										<c:forEach items="${spbrandList}" var="var">
											<option value="${var.SPBRAND_ID }" <c:if test="${var.SPBRAND_ID == pd.SPBRAND_ID }">selected</c:if>>${var.NAME }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">型号:</td>
								<td><input type="text" name="BIANMA" id="BIANMA" value="${pd.BIANMA}" maxlength="30" placeholder="这里输入配置型号" title="商品编码" style="width:98%;"/></td>
							</tr> --%>
							<tr>
								<td style="width:80px;text-align: right;padding-top: 13px;">sn号:</td>
								<td><input type="text" name="DESCRIPTION" id="DESCRIPTION" value="${pd.DESCRIPTION}" maxlength="255" placeholder="这里输入sn号" title="商品名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">类别:</td>
								<td>
									<select class="chosen-select form-control" name="SPTYPE_ID" id="SPTYPE_ID" data-placeholder="请选择商品类别" style="vertical-align:top;width:98%;" >
										<option value="">无分类</option>
										<c:forEach items="${sptypeList}" var="var">
											<option value="${var.SPTYPE_ID }" <c:if test="${var.SPTYPE_ID == pd.SPTYPE_ID }">selected</c:if>>${var.NAME }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">计量单位:</td>
								<td>
									<select class="chosen-select form-control" name="SPUNIT_ID" id="SPUNIT_ID" data-placeholder="请选择计量单位" style="vertical-align:top;width:98%;" >
										<option value="">无</option>
										<c:forEach items="${spunitList}" var="var">
											<option value="${var.SPUNIT_ID }" <c:if test="${var.SPUNIT_ID == pd.SPUNIT_ID }">selected</c:if>>${var.NAME }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">成色:</td>
								<td>
									<select class="chosen-select form-control" name="DEGREE" id="DEGREE" data-placeholder="请选择成色" style="vertical-align:top;width:98%;" >
										<option value="">无</option>
										<c:forEach items="${degreeList}" var="var">
											<option value="${var.DEGREE_ID }" <c:if test="${var.DEGREE_ID == pd.DEGREE }">selected</c:if>>${var.NAME }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">使用耗材:</td>
								<td>
									<select class="chosen-select form-control" name="MATERIAL" id="MATERIAL" data-placeholder="请选择计量单位" style="vertical-align:top;width:98%;" >
										<option value="">无</option>
										<c:forEach items="${materialList}" var="var">
											<option value="${var.MATERIAL_ID }" <c:if test="${var.MATERIAL_ID == pd.MATERIAL }">selected</c:if>>${var.NAME }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;"><span class="label label-yellow arrowed-in-right arrowed">&nbsp;库存信息&nbsp;</span></td>																							   
								<td></td>	
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">进货价:</td>
								<td><input type="NUMBER" name="INFEE" id="INFEE" value="${pd.INFEE}" maxlength="30" placeholder="这里输入进货价" title="商品编码" style="width:98%;"/></td>								
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出货价:</td>
								<td><input type="NUMBER" name="OUTFEE" id="OUTFEE" value="${pd.OUTFEE}" maxlength="30" placeholder="这里输入出货价" title="商品编码" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">入库数量:</td>
								<td><input type="NUMBER" name="INCOUNT" id="INCOUNT" value="${pd.INCOUNT}" maxlength="30" placeholder="这里输入出库数量" title="商品编码" style="width:98%;"/></td>
							</tr>

<%-- 							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注:</td>
								<td>
								<textarea rows="" cols="" name="SHORTDESC" id="SHORTDESC" style="width:98%;">${pd.SHORTDESC}</textarea>
								</td>
							</tr> --%>
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

<%-- <c:if test="${'edit' == msg }">
	<div>
		<iframe name="treeFrame" id="treeFrame" frameborder="0" src="<%=basePath%>/goodsmx/list.do?MASTER_ID=${pd.GOODS_ID}" style="margin:0 auto;width:805px;height:368px;;"></iframe>
	</div>
</c:if> --%>

<footer>
<div style="width: 100%;padding-bottom: 2px;" class="center">
	<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
	<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
</div>
</footer>

	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 百度富文本编辑框-->
	<script type="text/javascript" charset="utf-8">window.UEDITOR_HOME_URL = "<%=path%>/plugins/ueditor/";</script>
	<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.all.js"></script>
	<!-- 百度富文本编辑框-->
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#TITLE").val()==""){
				$("#TITLE").tips({
					side:3,
		            msg:'请输入商品备案',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TITLE").focus();
			return false;
			}
			if($("#SPUNIT_ID").val()==""){
				$("#SPUNIT_ID").tips({
					side:3,
		            msg:'请输入计量单位',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SPUNIT_ID").focus();
			return false;
			}
			if($("#INFEE").val()==""){
				$("#INFEE").tips({
					side:3,
		            msg:'请输入进货价',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INFEE").focus();
			return false;
			}

			if($("#OUTFEE").val()==""){
				$("#OUTFEE").tips({
					side:3,
		            msg:'请输入出货价',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OUTFEE").focus();
			return false;
			}
			if($("#INCOUNT").val()==""){
				$("#INCOUNT").tips({
					side:3,
		            msg:'请输入入库数量',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INCOUNT").focus();
			return false;
			}INCOUNT
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		
		//百度富文本
		setTimeout("ueditor()",500);
		function ueditor(){
			UE.getEditor('editor');
		}
		
		//ueditor有标签文本
		function getContent() {
		    var arr = [];
		    arr.push(UE.getEditor('editor').getContent());
		    return arr.join("");
		}
		
		</script>
</body>
</html>