<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">

<!-- jsp文件头和头部 -->
<%@ include file="../../system/index/top.jsp"%>
<!-- 百度echarts -->
<script src="plugins/echarts/echarts.min.js"></script>
<script type="text/javascript">
setTimeout("top.hangge()",500);
</script>
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
<%-- 							<div  style="width: 1000px;">
								<table class="table table-striped table-bordered table-hover">
									<tr>
										<td style="width: 100px;">订单金额</td>
										<td><font style="color: red"><b>${pd.MONEY }</b></font>&nbsp;元</td>
										<td style="width: 100px;">实收金额</td>
										<td><font style="color: red"><b>${pd.INCOME }</b></font>&nbsp;元</td>
										<td style="width: 100px;">欠费金额</td>
										<td><font style="color: red"><b>${pd.OUTMONEY}</b></font>&nbsp;元</td>
										<td style="width: 120px;">维修成本</td>
										<td><font style="color: red"><b>${pd.QQ }</b></font>&nbsp;元</td>
										<td style="width: 120px;">利润</td>
										<td><font style="color: red"><b>${pd.BILLFEE }</b></font>&nbsp;元</td>
									</tr>
								</table>
							</div> --%>
							<div class="row">
								<div class="col-xs-12">
									<h3 class="header smaller lighter grey">
										<i class="ace-icon fa fa-spinner fa-spin orange bigger-125"></i>
										今日商品销售分析
										
									</h3>
								</div>
							</div>
							<div class="col-xs-12"  >
								<table style="margin-left:700px;">
									<tr>
										<td>
											<div class="nav-search">
												<span class="input-icon">
													<input type="password" placeholder="密码校验" class="nav-search-input" id="pw" autocomplete="off" name="keywords" value="${pd.keywords }" />
													<i class="ace-icon fa fa-lock"></i>
												</span>
											</div>
										</td>
										<td style="vertical-align:top;padding-left:2px"><a class="btn btn-default btn-sm" onclick="tosearch();"  title="检索">校验</a></td>	
										<td style="vertical-align:top;padding-left:2px"><a class="btn btn-default btn-sm" onclick="tosearch1();"  title="检索">关闭</a></td>	
									</tr>
						        </table>							
							</div>
							
							<div  class="col-xs-12" style="margin-top:20px;margin-left: 110px;"  id="liuyw1" hidden >
								<div class="infobox infobox-purple infobox-small infobox-dark">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-bell"></i>
									</div>
				
									<div class="infobox-data">
										<div class="infobox-content">出库次数</div>
										<div class="infobox-content">${pd.NUMBER }&nbsp;次</div>
									</div>
								</div>
								<div class="infobox infobox-pink infobox-small infobox-dark">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-pencil-square-o"></i>
									</div>
				
									<div class="infobox-data">
										<div class="infobox-content">商品数量</div>
										<div class="infobox-content">${pd.ZCOUNT }</div>
									</div>
								</div>
								<div class="infobox infobox-blue infobox-small infobox-dark">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-book"></i>
									</div>
				
									<div class="infobox-data">
										<div class="infobox-content">进货成本</div>
										<div class="infobox-content">${pd.ZINPRICE }&nbsp;元</div>
									</div>
								</div>
								<div class="infobox infobox-red infobox-small infobox-dark">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-gavel"></i>
									</div>
				
									<div class="infobox-data">
										<div class="infobox-content">销售额</div>
										<div class="infobox-content">${pd.ZPRICE}&nbsp;元</div>
									</div>
								</div>
								<div class="infobox infobox-green infobox-small infobox-dark">
									<div class="infobox-icon">
										<i class="ace-icon fa fa-bar-chart-o"></i>
									</div>
				
									<div class="infobox-data">
										<div class="infobox-content">利润</div>
										<div class="infobox-content">${pd.ZINCOME }&nbsp;元</div>
									</div>
								</div>
							</div>		
							
							<div  class="row" id="liuyw2" hidden >
							<div id="main1" style="width: 1000px;height:400px;top:20px;margin-left:50px"></div>
							
									<script type="text/javascript">
							
							 // 基于准备好的dom，初始化echarts实例
					        var myChart1 = echarts.init(document.getElementById('main1'));

					        // 指定图表的配置项和数据
					        var option = {
					            title: {
					                text: ''
					            },
					            tooltip: {},
					            legend: {
					                data:['金额']
					            },
					            xAxis: {
					                data: ["进货总成本","销售额","利润"]
					            },
					            yAxis: {},
					            series: [{
					                name: '金额',
					                type: 'bar',
					                data: [${pd.ZINPRICE }, ${pd.ZPRICE}, ${pd.ZINCOME }],
					                itemStyle:{
					                	normal:{
					                		color:'#003366'
					                	}
					                },
					                barWidth:80
					            }]
					        };

					        // 使用刚指定的配置项和数据显示图表。
					        myChart1.setOption(option);

						    </script>
							
							</div>
							
						
						</div>
						<!-- /.col -->
						
<%-- 						<div class="span6" style="padding-top: 13px;">
									<div class="tabbable">
								            <ul class="nav nav-tabs" id="myTab">
								              <li class="active"><a data-toggle="tab" href="#home"><i class="green icon-home bigger-110"></i>折线图</a></li>
								              <li><a data-toggle="tab" href="#profile"><i class="green icon-cog bigger-110"></i>柱状图</a></li>
								            </ul>
								            <div class="tab-content">
											  <div id="home" class="tab-pane in active">
												<table style="width:865px;" border="0px;">
													<tr>
														<td>
				
														</td>
													</tr>
												</table>
											  </div>
											  <div id="profile" class="tab-pane">
												 <table style="width:865px;" border="0px;">
													<tr>
														<td>

														</td>
													</tr>
												</table>
											  </div>
								            </div>
									</div>
								 </div><!--/span-->		 --%>
						
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->


		<!-- 返回顶部 -->
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
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
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		$(top.hangge());
		function tosearch(){
			if($("#pw").val()=='dckj888'){
				$("#liuyw1").show();
				$("#liuyw2").show();
			}else{
				top.hangge();
				bootbox.dialog({
					message: "<span class='bigger-110'>密码输入错误，输错三次将会自动联系管理员!</span>",
					buttons: 			
					{
						"button" :
						{
							"label" : "确定",
							"className" : "btn-sm btn-success"
						}
					}
				});
				/* bootbox.confirm("", function(result) {}) */
			}
			
			
			

		}
		function tosearch1(){
			$("#liuyw1").hide();
			$("#liuyw2").hide();
		}
	</script>
</body>
</html>