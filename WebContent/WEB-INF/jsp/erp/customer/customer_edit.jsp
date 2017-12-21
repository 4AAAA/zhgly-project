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
					
					<form action="customer/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="CUSTOMER_ID" id="CUSTOMER_ID" value="${pd.CUSTOMER_ID}"/>
						<input type="hidden" name="WEIXIN" id="WEIXIN" value="${pd.WEIXIN}"/>
						<input type="hidden" name="PHONE" id="PHONE" value="${pd.PHONE}"/>
						<input type="hidden" name="BILLSTATUS" id="BILLSTATUS" value="${pd.BILLSTATUS}"/>
						<input type="hidden" name="BILLTIME" id="BILLTIME" value="${pd.BILLTIME}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">


							<tr style="display:none">
								<td style="width:80px;text-align: right;padding-top: 13px;">姓名:</td>
								<td><input type="text" name="NAME" id="NAME" value="${pd.NAME}" maxlength="100" placeholder="这里输入姓名" title="姓名" style="width:98%;"/></td>
							</tr> 
							<tr>
								<td style="width:80px;text-align: left;padding-top: 13px;"><span class="label label-danger arrowed-in-right arrowed">&nbsp;客户信息&nbsp;</span></td>	
								<td></td>																						   
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">客户名称:</td>
								<td id="xzsp">
								<select class="chosen-select form-control" name="COMPANY_ID" id="COMPANY_ID" data-placeholder="请选择客户" style="vertical-align:top;width:100px;" >
										<option value=""></option>
										<c:forEach items="${companyList}" var="var">
											<option value="${var.COMPANY_ID }" <c:if test="${var.COMPANY_ID == pd.COMPANY_ID}">selected</c:if>>${var.NAME}</option>
										</c:forEach>
								</select>
								</td>
							</tr>
							<tr>
								<td style="width:80px;text-align: left;padding-top: 13px;"><span class="label label-info arrowed-in-right arrowed">&nbsp;订单信息&nbsp;</span></td>									   											   
								<td></td>	
							</tr>

<%-- 							<tr>
								<td style="width:80px;text-align: right;padding-top: 13px;">订单类型:</td>
								<td>
									<select name="LEVEL" id="LEVEL" placeholder="请选择订单类别" title="级别" style="width:98%;" >
									<c:forEach items="${varListL}" var="var">
										<option value="${var.LEVEL_ID }" <c:if test="${var.LEVEL_ID == pd.LEVEL }">selected</c:if>>${var.TITLE }</option>
									</c:forEach>
									</select>
								</td>
							</tr> --%>
							<tr>
								<td style="width:80px;text-align: right;padding-top: 13px;">机器型号:</td>
								<td><input type="text"  name="LEVEL" id="LEVEL" value="${pd.LEVEL}"  placeholder="这里输入机器型号" title="LEVEL" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:80px;text-align: right;padding-top: 13px;">维修员:</td>
								<td>
									<select name="REMARKS1" id="REMARKS1" placeholder="请选择维修员" style="width:98%;" >
									<c:forEach items="${varList}" var="var">
										<option value="${var.REMARKS_ID }" <c:if test="${var.REMARKS_ID == pd.REMARKS1}">selected</c:if>>${var.REMARKS }</option>
									</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:80px;text-align: right;padding-top: 13px;">维修设备:</td>
								<td>
									<select name="DEVICE" id="DEVICE" placeholder="请选择维修设备" style="width:98%;" >
										<c:forEach items="${deviceList}" var="var">
											<option value="${var.REMARKS }" <c:if test="${var.REMARKS == pd.DEVICE}">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
							</tr>


							<tr>
								<td style="width:80px;text-align: right;padding-top: 13px;">随机附件:</td>
								<td>
									<select name="REMARKS2" id="REMARKS2" placeholder="请选择随机附件"  style="width:98%;" >
										<c:forEach items="${attachmentList}" var="var">
											<option value="${var.REMARKS }" <c:if test="${var.REMARKS == pd.ATTACHMENT}">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:80px;text-align: right;padding-top: 13px;">维修进度:</td>
								<td>
									<select name="PLAN" id="PLAN" placeholder="请选择维修进度" style="width:98%;" >
										<c:forEach items="${planList}" var="var">
											<option value="${var.PLAN_ID }" <c:if test="${var.PLAN_ID == pd.PLAN}">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
							</tr>

							<tr>
								<td style="width:80px;text-align: right;padding-top: 13px;">故障描述:</td>
								<td>
								<!-- <input type="text" name="ADDRESS" id="" value="" maxlength="1000" placeholder="这里输入故障描述" title="" style="width:98%;"/> -->
								<textarea rows="" cols="" name="ADDRESS" id="ADDRESS" title="地址" style="width:98%;">${pd.ADDRESS}</textarea>
								</td>
							</tr>
					
							<tr style="display:none">
								<td style="width:80px;text-align: right;padding-top: 13px;">订单金额:</td>
								<td><input type="number" onblur="count1();" name="MONEY" id="MONEY" value="${pd.MONEY}" maxlength="11" placeholder="这里输入订单金额(默认为0元)" title="消费金额" style="width:98%;"/></td>
							</tr>
							<tr style="display:none">
								<td style="width:80px;text-align: right;padding-top: 13px;">实收金额:</td>
								<td><input type="number" onblur="count1();" name="INCOME" id="INCOME" value="${pd.INCOME}" maxlength="11" placeholder="这里输入实收金额(默认为0元)" title="QQ" style="width:98%;"/></td>
							</tr>
							<tr style="display:none">
								<td style="width:80px;text-align: right;padding-top: 13px;">欠费金额:</td>
								<td><input type="number" name="OUTMONEY" id="OUTMONEY" value="${pd.OUTMONEY}" maxlength="11" placeholder="点击自动计算：订单金额-实收金额" title="QQ" style="width:98%;"/></td>
							</tr>
							<tr style="display:none">
								<td style="width:80px;text-align: right;padding-top: 13px;">维修成本:</td>
								<td><input type="number" onblur="count1();" name="QQ" id="QQ" value="${pd.QQ}" maxlength="11" placeholder="这里输入维修成本(默认为0元)" title="QQ" style="width:98%;"/></td>
							</tr>
							<tr style="display:none">
								<td style="width:80px;text-align: right;padding-top: 13px;">利润:</td>
								<td><input type="number" name="BILLFEE" id="BILLFEE" value="${pd.BILLFEE}" maxlength="11" placeholder="点击自动计算：订单金额-维修成本" title="QQ" style="width:98%;"/></td>
							</tr>
							<tr style="display:none">
								<td style="width:80px;text-align: right;padding-top: 13px;">付款方式:</td>
								<td>
									<select name="PAY" id="PAY" placeholder="请选择付款方式" style="width:98%;" >
										<c:forEach items="${payList}" var="var">
											<option value="${var.REMARKS }" <c:if test="${var.REMARKS == pd.PAY}">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
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
	<!-- 删除时确认窗口 -->
	<script src="static/ace/js/bootbox.js"></script>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		
			//浮点数相减
		   function accSub(num1,num2){  
		       var r1,r2,m;  
		       try{  
		           r1 = num1.toString().split('.')[1].length;  
		       }catch(e){  
		           r1 = 0;  
		       }  
		       try{  
		           r2=num2.toString().split(".")[1].length;  
		       }catch(e){  
		           r2=0;  
		       }  
		       m=Math.pow(10,Math.max(r1,r2));  
		       n=(r1>=r2)?r1:r2;  
		       return (Math.round(num1*m-num2*m)/m).toFixed(n);  
		    }  
		
		//计算欠费
		function count1(){
			var MONEY = Number("" == $("#MONEY").val()?"0":$("#MONEY").val());
			var INCOME = Number("" == $("#INCOME").val()?"0":$("#INCOME").val());
			var QQ = Number("" == $("#QQ").val()?"0":$("#QQ").val());
			if(0-MONEY>0){
				$("#MONEY").tips({
					side:3,
		            msg:'订单金额不能小于零',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MONEY").focus();
				return false;
			}
			if(0-INCOME>0){
				$("#INCOME").tips({
					side:3,
		            msg:'实收金额不能小于零',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INCOME").focus();
				return false;
			}
			if(0-QQ>0){
				$("#QQ").tips({
					side:3,
		            msg:'维修成本不能小于零',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#QQ").focus();
				return false;
			}
			//欠费
			$("#OUTMONEY").val(accSub(MONEY,INCOME));
			//利润
			$("#BILLFEE").val(accSub(MONEY,QQ));
		}
		

		
		//保存
		function save(){


			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		
		$(function() {
			//欠费和利润不可输入
			$("#OUTMONEY").attr("readonly","readonly");
			$("#OUTMONEY").css("color","gray");
			$("#BILLFEE").attr("readonly","readonly");
			$("#BILLFEE").css("color","gray");
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