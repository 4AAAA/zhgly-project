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
						<input type="hidden" name="INTOKU_ID" id="INTOKU_ID" value="${pd.INTOKU_ID}"/>
						<input type="hidden" name="GOODS_ID" id="GOODS_ID" value="${pd.GOODS_ID}"/>
						<!-- 进货价 -->
						<input   name="INFEE" id="INFEE" value="${pd.INFEE}" type="hidden"  />
						<!--进货总价  -->
						<input  name="INPRICE" id="INPRICE" value="${pd.INPRICE}" type="hidden"  />
						<!-- 利润 -->
						<input   name="INCOME" id="INCOME" value="${pd.INCOME}" type="hidden"  />
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出货价:</td>
								<td><input  type="number" name="OUTFEE" id="OUTFEE" value="${pd.OUTFEE}" maxlength="32" placeholder="自动获取出货价" title="单价" style="width:89%;" readonly="readonly"  />&nbsp;元</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">库存量:</td>
								<td><input  type="number" name="ZCOUNT" id="ZCOUNT" value="${pd.ZCOUNT}" maxlength="32" placeholder="自动获取出货价" title="单价" style="width:89%;" readonly="readonly"  /></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出库数量:</td>
								<td><input onblur="jisuanz();" type="number" name="OUTCOUNT" id="OUTCOUNT"  maxlength="32" placeholder="这里输入出库数量" title="数量" style="width:89%;"/></td>
							</tr>

							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">总价:</td>
								<td><input type="number" name="ZPRICE" id="ZPRICE" value="${pd.ZPRICE}" maxlength="32" placeholder="自动计算总价" title="总价" style="width:89%;"/>&nbsp;元</td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">出库</a>
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
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		
		//计算总价
		function jisuanz(){
			var INCOUNT = Number("" == $("#OUTCOUNT").val()?"0":$("#OUTCOUNT").val());
			var PRICE = Number("" == $("#OUTFEE").val()?"0":$("#OUTFEE").val());
			var INFEE = Number("" == $("#INFEE").val()?"0":$("#INFEE").val());
			if(0-INCOUNT>0){
				$("#OUTCOUNT").tips({
					side:3,
		            msg:'数量不能小于零',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OUTCOUNT").focus();
				return false;
			}
			if(0-PRICE>0){
				$("#OUTFEE").tips({
					side:3,
		            msg:'单价不能小于零',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OUTFEE").focus();
				return false;
			}
			$("#ZPRICE").val(INCOUNT*PRICE);
			$("#INPRICE").val(INCOUNT*INFEE);
			$("#INCOME").val((INCOUNT*PRICE)-(INCOUNT*INFEE));
		}
		

		
		
		//保存
		function save(){

			if($("#OUTCOUNT").val()==""){
				$("#OUTCOUNT").tips({
					side:3,
		            msg:'请输入出库数量',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OUTCOUNT").focus();
			return false;
			}
			if($("#PRICE").val()==""){
				$("#PRICE").tips({
					side:3,
		            msg:'请输入单价',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PRICE").focus();
			return false;
			}
			if($("#ZPRICE").val()==""){
				$("#ZPRICE").tips({
					side:3,
		            msg:'请输入总价',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZPRICE").focus();
			return false;
			}
			if($("#ZCOUNT").val()-$("#OUTCOUNT").val()<0){
				$("#OUTCOUNT").tips({
					side:3,
		            msg:'出库数量不能超过库存量',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OUTCOUNT").focus();
			return false;
			}
			OUTCOUNT
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			$("#ZPRICE").attr("readonly","readonly");
			$("#ZPRICE").css("color","gray");
			//下拉框
			if(!ace.vars['touch']) {
				$('.chosen-select').chosen({allow_single_deselect:true}); 
				$(window)
				.off('resize.chosen')
				.on('resize.chosen', function() {
					$('.chosen-select').each(function() {
						 var $this = $(this);
						 $this.next().css({'width': $this.parent().width()});
					});
				}).trigger('resize.chosen');
				$(document).on('settings.ace.chosen', function(e, event_name, event_val) {
					if(event_name != 'sidebar_collapsed') return;
					$('.chosen-select').each(function() {
						 var $this = $(this);
						 $this.next().css({'width': $this.parent().width()});
					});
				});
				$('#chosen-multiple-style .btn').on('click', function(e){
					var target = $(this).find('input[type=radio]');
					var which = parseInt(target.val());
					if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
					 else $('#form-field-select-4').removeClass('tag-input-style');
				});
			}
		});
		</script>
</body>
</html>