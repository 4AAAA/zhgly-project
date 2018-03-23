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
							
						<!-- 检索  -->
						<form action="outku/list.do" method="post" name="Form" id="Form">
						<table style="margin-top:5px;">
							<tr>
								<td>
									<div class="nav-search">
										<span class="input-icon">
											<input type="text" placeholder="商品备案/sn号/买家" class="nav-search-input" id="nav-search-input" autocomplete="off" name="keywords" value="${pd.keywords }" placeholder="这里输入关键词"/>
											<i class="ace-icon fa fa-search nav-search-icon"></i>
										</span>
									</div>
								</td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastStart" id="lastStart"  value="${pd.lastStart }" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;height:34px;" placeholder="开始日期" title="开始日期"/></td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastEnd" name="lastEnd"  value="${pd.lastEnd }" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;height:34px;" placeholder="结束日期" title="结束日期"/></td>
								<td style="padding-left:5px">
									<select class="chosen-select form-control" name="RECEIVER" id="RECEIVER" data-placeholder="收款人" style="vertical-align:top;width:120px;" >
										<option value=""></option>
										<c:forEach items="${receiverList}" var="var">
											<option value="${var.RECEIVER_ID }" <c:if test="${var.RECEIVER_ID == pd.RECEIVER }">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
								<td style="padding-left:5px">
									<select class="chosen-select form-control" name="BILL" id="BILL" data-placeholder="结算状态" style="vertical-align:top;width:120px;" >
										<option value=""></option>
										<c:forEach items="${billList}" var="var">
											<option value="${var.LEVEL_ID }" <c:if test="${var.LEVEL_ID == pd.BILL }">selected</c:if>>${var.TITLE }</option>
										</c:forEach>
									</select>
								</td>
								<c:if test="${QX.cha == 1 }">
								<td style="vertical-align:top;padding-left:2px"><a class="btn btn-app btn-light btn-xs" onclick="tosearch();"  title="检索">查询</a></td>
								</c:if>
								<td style="padding-left:20px;">
								  <span class="label label-xlg label-info arrowed-in-right arrowed-in">&nbsp;&nbsp;出货总金额：<font color=""><b>${zprice }</b></font>&nbsp;元</span>
								    
								</td>
							</tr>
						</table>
						<!-- 检索  -->
					
						<table id="simple-table" class="table table-striped table-bordered table-hover" style="margin-top:5px;">	
							<thead>
								<tr>
									<th class="center" style="width:50px;">序号</th>
									<th class="center">商品备案</th>
									<th class="center">sn号</th>
									<th class="center">出库数量</th>
									<th class="center">出货价</th>
									<th class="center">出货总价</th>
									<th class="center">退货数量</th>
									<th class="center">退货总价</th>
									<th class="center">买家</th>
									<th class="center">收款人</th>
									<th class="center">结算状态</th>
									<th class="center">出库时间</th>
									<th class="center">操作</th>
								<!-- 	<th class="center">备注</th> -->
								</tr>
							</thead>
													
							<tbody>
							<!-- 开始循环 -->	
							<c:choose>
								<c:when test="${not empty varList}">
									<c:if test="${QX.cha == 1 }">
									<c:forEach items="${varList}" var="var" varStatus="vs">
										<tr>
											<td class='center' style="width: 30px;"><span class="badge">${vs.index+1}</span></td>
											<td class='center'>${var.GOODS_NAME}</td>
											<td class='center'>${var.SN}</td>
											<td class='center'>${var.INCOUNT}</td>
											<td class='center'><b class="blue">¥&nbsp;${var.PRICE}</b></td>
											<td class='center'><b class="green">¥&nbsp;${var.ZPRICE}</b></td>
											<td class='center'>${var.BACKCOUNT}</td>
											<td class='center'><b class="red">${var.BACKALLPRICE}</b></td>
											<td class='center'>${var.CUSTOMER}</td>
											<td class='center'>${var.RECEIVERS}</td>
											<td class='center'>${var.BILL}</td>
											<td class='center'>${var.OUTTIME}</td>
											<%-- <td class='center'>${var.BZ}</td> --%>
											<td class="center">
												<c:if test="${QX.edit != 1 && QX.del != 1 }">
												<span class="label label-large label-grey arrowed-in-right arrowed-in"><i class="ace-icon fa fa-lock" title="无权限"></i></span>
												</c:if>
												<div class="hidden-sm hidden-xs action-buttons">
												
													<c:if test="${QX.edit == 1 }">
													<a class="blue" title="编辑" onclick="edit('${var.OUTKU_ID}');">
														<i class="ace-icon fa fa-bar-chart-o bigger-130" title="编辑"></i>
													</a>
													</c:if>
													<a class="pink" title="退货" onclick="back('${var.OUTKU_ID}');">
														<i class="ace-icon fa fa-shopping-cart bigger-130" title="退货"></i>
													</a>
													
												</div>
												<div class="hidden-md hidden-lg">
													<div class="inline pos-rel">
														<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
														</button>
			
														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<c:if test="${QX.edit == 1 }">
															<li>
																<a style="cursor:pointer;" onclick="edit('${var.OUTKU_ID}');" class="tooltip-success" data-rel="tooltip" title="修改">
																	<span class="blue">
																		<i class="ace-icon fa fa-bar-chart-o bigger-130"></i>
																	</span>
																</a>
															</li>
															<li>
																<a style="cursor:pointer;" onclick="back('${var.OUTKU_ID}');" class="tooltip-success" data-rel="tooltip" title="退货">
																	<span class="pink">
																		<i class="ace-icon fa fa-shopping-cart bigger-130"></i>
																	</span>
																</a>
															</li>
															</c:if>
												      	
													
														
														</ul>
													</div>
												</div>
											</td>
										</tr>
									
									</c:forEach>
									</c:if>
									<c:if test="${QX.cha == 0 }">
										<tr>
											<td colspan="100" class="center">您无权查看</td>
										</tr>
									</c:if>
								</c:when>
								<c:otherwise>
									<tr class="main_info">
										<td colspan="100" class="center" >没有相关数据</td>
									</tr>
								</c:otherwise>
							</c:choose>
							</tbody>
						</table>
						<div class="page-header position-relative">
					<table style="width:100%;">
							<tr>
<%-- 		出库操作隐藏						<td style="vertical-align:top;">
									<c:if test="${QX.add == 1 }">
									<a class="btn btn-primary btn-sm" onclick="add();">商品出库</a>
									</c:if>
									
								</td> --%>
								<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
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
	<script type="text/javascript">
		$(top.hangge());//关闭加载状态
		//检索
		function tosearch(){
			top.jzts();
			$("#Form").submit();
		}
		$(function() {
		
			//日期框
			$('.date-picker').datepicker({
				autoclose: true,
				todayHighlight: true
			});
		});
		
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
		
		//新增
		function add(){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="商品出库";
			 diag.URL = '<%=basePath%>outku/goAdd.do';
			 diag.Width = 450;
			 diag.Height = 345;
			 diag.Modal = true;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 if('${page.currentPage}' == '0'){
						 top.jzts();
						 setTimeout("self.location=self.location",100);
					 }else{
						 nextPage(${page.currentPage});
					 }
				}
				diag.close();
			 };
			 diag.show();
		}
		
		//修改结算状态
		function edit(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="结算";
			 diag.URL = '<%=basePath%>outku/goEdit.do?OUTKU_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 150;
			 diag.Modal = true;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 nextPage(${page.currentPage});
				}
				diag.close();
			 };
			 diag.show();
		}
		
		
		//退货
		function back(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="退货";
			 diag.URL = '<%=basePath%>outku/goBack.do?OUTKU_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 490;
			 diag.Modal = true;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 nextPage(${page.currentPage});
				}
				diag.close();
			 };
			 diag.show();
		}
		
		
		//导出excel
		function toExcel(){
			window.location.href='<%=basePath%>outku/excel.do';
		}
	</script>


</body>
</html>