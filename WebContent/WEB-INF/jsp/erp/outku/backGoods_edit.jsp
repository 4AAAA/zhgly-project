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
					
					<form action="outku/${msg }.do" name="Form" id="Form" method="post">
						<!-- 隐藏出库id -->
						<input type="hidden" name="OUTKU_ID" id="OUTKU_ID" value="${pd.OUTKU_ID}"/>
						<!-- 隐藏商品id -->
						<input type="hidden" name="GOODS_ID" id="GOODS_ID" value="${pd.GOODS_ID}"/>
						<!-- 隐藏退货量 -->
						<input type="hidden" name="BACKCOUNT" id="BACKCOUNT" value="${pd.BACKCOUNT}"/>

						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
						
							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;"><span class="label label-yellow arrowed-in-right arrowed">&nbsp;出库信息&nbsp;</span></td>																							   
								<td></td>	
							</tr>
		
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出货价:</td>
								<td style="padding-top: 13px;">${pd.PRICE}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出库数量:</td>
								<td><input type="NUMBER" name="INCOUNT" id="INCOUNT" style="width:98%;" value="${pd.INCOUNT}" readonly /></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">买家:</td>
								<td style="padding-top: 13px;">${pd.CUSTOMER}</td>
							</tr>

							<tr>
								<td style="width:90px;text-align: left;padding-top: 13px;"><span class="label label-yellow arrowed-in-right arrowed">&nbsp;退货管理&nbsp;</span></td>																							   
								<td></td>	
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">可退货数量:</td>
								<td><input type="NUMBER" name="IFCOUNT" id="IFCOUNT" style="width:98%;" readonly /></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">退货数量:</td>
								<td><input type="NUMBER" onblur="count1();" name="NEWBACKCOUNT" id="NEWBACKCOUNT"  maxlength="30" placeholder="这里输入退货数量"  style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">退货价:</td>
								<td><input type="NUMBER" onblur="count1();" name="BACKPRICE" id="BACKPRICE" style="width:98%;" value="${pd.PRICE}" /></td>								
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">退货总价:</td>
								<td><input type="NUMBER" name="BACKALLPRICE" id="BACKALLPRICE"  placeholder="点击自动计算：退货数量X退货价" style="width:98%;" readonly/></td>								
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
			if($("#NEWBACKCOUNT").val()==""){
				$("#NEWBACKCOUNT").tips({
					side:3,
		            msg:'请输入退货数量',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#NEWBACKCOUNT").focus();
			return false;
			}
			if($("#BACKALLPRICE").val()==""){
				$("#BACKALLPRICE").tips({
					side:3,
		            msg:'退货总价不能为空',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BACKALLPRICE").focus();
			return false;
			}
			if($("#IFCOUNT").val()-$("#NEWBACKCOUNT").val()<0){
				$("#NEWBACKCOUNT").tips({
					side:3,
		            msg:'退货数量不能超过可退货数量',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#NEWBACKCOUNT").focus();
			return false;
			}
			
			
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		
		//计算退货总金额
		function count1(){
			var NEWBACKCOUNT = Number("" == $("#NEWBACKCOUNT").val()?"0":$("#NEWBACKCOUNT").val());
			var BACKPRICE = Number("" == $("#BACKPRICE").val()?"0":$("#BACKPRICE").val());
			if(0-BACKCOUNT>0){
				$("#NEWBACKCOUNT").tips({
					side:3,
		            msg:'退货数量不能小于零',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#NEWBACKCOUNT").focus();
				return false;
			}
			if(0-BACKPRICE>0){
				$("#BACKPRICE").tips({
					side:3,
		            msg:'退货价不能小于零',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BACKPRICE").focus();
				return false;
			}

			//退货总价
			$("#BACKALLPRICE").val(NEWBACKCOUNT*BACKPRICE);
			
		}
		
		
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
			//初始化可退货数量
			$("#IFCOUNT").val($("#INCOUNT").val()-$("#BACKCOUNT").val())
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