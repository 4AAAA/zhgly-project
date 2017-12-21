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
						<form action="customer/listCompany.do" method="post" name="Form" id="Form">
						<input name="COMPANY_ID" id="COMPANY_ID" type="hidden" value="${pd.COMPANY_ID }" />
						<table style="margin-top:5px;">
							<tr>
								<td>
									<div class="nav-search">
										<span class="input-icon">
											<input type="text" placeholder="订单编号" class="nav-search-input" id="nav-search-input" autocomplete="off" name="keywords" value="${pd.keywords }" placeholder="输入编号或手机关键词"/>
											<i class="ace-icon fa fa-search nav-search-icon"></i>
										</span>
									</div>
								</td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastStart" id="lastStart"  value="${pd.lastStart }" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;height:34px;" placeholder="开始日期" title="开始日期"/></td>
								<td style="padding-left:2px;"><input class="span10 date-picker" name="lastEnd" name="lastEnd"  value="${pd.lastEnd }" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;height:34px;" placeholder="结束日期" title="结束日期"/></td>
<%-- 								<td style="padding-left:5px">
									<select class="chosen-select form-control" name="LEVEL" id="LEVEL" data-placeholder="订单类型" style="vertical-align:top;width:120px;" >
										<option value=""></option>
										<c:forEach items="${levelList}" var="var">
											<option value="${var.LEVEL_ID }" <c:if test="${var.LEVEL_ID == pd.LEVEL }">selected</c:if>>${var.TITLE }</option>
										</c:forEach>
									</select>
								</td> --%>
								<td style="padding-left:5px">
									<select class="chosen-select form-control" name="PLAN" id="PLAN" data-placeholder="维修进度" style="vertical-align:top;width:120px;" >
										<option value=""></option>
										<c:forEach items="${planList}" var="var">
											<option value="${var.PLAN_ID }" <c:if test="${var.PLAN_ID == pd.PLAN }">selected</c:if>>${var.REMARKS }</option>
										</c:forEach>
									</select>
								</td>
								<td style="padding-left:5px">
									<select class="chosen-select form-control" name="BILLSTATUS" id="BILLSTATUS" data-placeholder="结算状态" style="vertical-align:top;width:120px;" >
										<option value=""  <c:if test="${ pd.BILLSTATUS ==''}">selected</c:if>></option>
										<option value="0" <c:if test="${ pd.BILLSTATUS =='0'}">selected</c:if>>未结</option>
										<option value="1" <c:if test="${ pd.BILLSTATUS =='1'}">selected</c:if> >结清</option>
										<option value="2" <c:if test="${ pd.BILLSTATUS =='0'}">selected</c:if>>欠费</option>
									</select>
								</td>
								<c:if test="${QX.cha == 1 }">
								<td style="vertical-align:top;padding-left:2px"><a class="btn btn-default btn-sm" onclick="tosearch();"  title="检索">查询</a></td>
								</c:if>
								<%--导出功能预留 <c:if test="${QX.toExcel == 1 }"><td style="vertical-align:top;padding-left:2px;"><a class="btn btn-light btn-xs" onclick="toExcel();" title="导出到EXCEL"><i id="nav-search-icon" class="ace-icon fa fa-download bigger-110 nav-search-icon blue"></i></a></td></c:if> --%>
							</tr>
						</table>
						<!-- 检索  -->
					
						<table id="simple-table" class="table table-striped table-bordered table-hover" style="margin-top:5px;">	
							<thead>
								<tr>
									<th class="center" style="width:35px;">
									<label class="pos-rel"><input type="checkbox" class="ace" id="zcheckbox" /><span class="lbl"></span></label>
									</th>
									<th class="center" style="width:50px;">序号</th>
									<th class="center">订单编号</th>
									
									
									<th class="center">机器型号</th>
									<th class="center">维修进度</th>
									<th class="center">结算状态</th>
									<th class="center">订单时间</th>
									<th class="center">维修设备跟踪</th>
									<th class="center">操作</th>
								</tr>
							</thead>
													
							<tbody>
							<!-- 开始循环 -->	
							<c:choose>
								<c:when test="${not empty varList}">
									<c:if test="${QX.cha == 1 }">
									<c:forEach items="${varList}" var="var" varStatus="vs">
										<tr>
											<td class='center'>
												<label class="pos-rel"><input type='checkbox' name='ids' value="${var.CUSTOMER_ID}" class="ace" /><span class="lbl"></span></label>
											</td>
											<td class='center' style="width: 30px;">${vs.index+1}</td>
											<td class='center'>${var.NAME}</td>
											
											
											<td class='center'>${var.LEVEL}</td>
											<td class='center'>
												<c:if test="${var.REMARKS=='已修复' }">
													<span class="btn-success">
													  &nbsp;已修复&nbsp;
												    </span>
												</c:if>
												<c:if test="${var.REMARKS=='无法修复' }">
													<span class=""  style="color:#8B008B">
													  &nbsp;无法修复&nbsp;
												    </span>
												</c:if>
												<c:if test="${var.REMARKS=='待取走' }">
													<span class="btn-warning">
													  &nbsp;待取走&nbsp;
												    </span>
												</c:if>
												<c:if test="${var.REMARKS=='修复中' }">
													<span class="btn-info">
													  &nbsp;修复中&nbsp;
												    </span>
												</c:if>
												<c:if test="${var.REMARKS=='待检修' }">
													<span class="btn-danger">
													  &nbsp;待检修&nbsp;
												    </span>
												</c:if>
												<c:if test="${var.REMARKS=='超过1个月未取' }">
													<span class="" style="color:#888888">
													  &nbsp;超过1个月未取&nbsp;
												    </span>
												</c:if>
											</td>
											<td class='center'>
												<c:if test="${var.BILLSTATUS=='0' }">
													<span class="btn-warning">
														 &nbsp;未结&nbsp;
													</span>
												</c:if>
												<c:if test="${var.BILLSTATUS=='1' }">
													<span class="btn-success" >
														&nbsp;结清&nbsp;
													</span>
												</c:if>
												<c:if test="${var.BILLSTATUS=='2' }">
													<span class="btn-danger">
														&nbsp;欠费&nbsp;
													</span>
												</c:if>						
											</td>
											<td class='center'>${var.CTIME}</td>
											<td class='center'><a style="cursor:pointer;" onclick="chaImg('${var.CUSTOMER_ID}')">[查看跟踪记录]</a></td>
											<td class="center">
												<c:if test="${QX.edit != 1 && QX.del != 1 }">
												<span class="label label-large label-grey arrowed-in-right arrowed-in"><i class="ace-icon fa fa-lock" title="无权限"></i></span>
												</c:if>
												<div class="hidden-sm hidden-xs btn-group">
													<a class="btn btn-warning btn-xs" title="查看" onclick="view('${var.CUSTOMER_ID}');">
														<i class="ace-icon fa fa-eye bigger-120" title="查看"></i>
													</a>
													<c:if test="${QX.edit == 1 }">
													<a class="btn btn-xs btn-success" title="编辑" onclick="edit('${var.CUSTOMER_ID}');">
														<i class="ace-icon fa fa-pencil-square-o bigger-120" title="编辑"></i>
													</a>
													</c:if>
													<a class="btn btn-xs btn-info" title="结算" onclick="count('${var.CUSTOMER_ID}');">
														<i class="menu-icon fa fa-bar-chart-o " title="结算"></i>
													</a>
													<c:if test="${QX.del == 1 }">
													<a class="btn btn-xs btn-danger" onclick="del('${var.CUSTOMER_ID}');">
														<i class="ace-icon fa fa-trash-o bigger-120" title="删除"></i>
													</a>
													</c:if>
												</div>
												<div class="hidden-md hidden-lg">
													<div class="inline pos-rel">
														<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
														</button>
			
														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a style="cursor:pointer;" onclick="view('${var.CUSTOMER_ID}');" class="tooltip-success" data-rel="tooltip" title="查看">
																	<span class="orange">
																		<i class="ace-icon fa fa-eye bigger-120"></i>
																	</span>
																</a>
															</li>
															<c:if test="${QX.edit == 1 }">
															<li>
																<a style="cursor:pointer;" onclick="edit('${var.CUSTOMER_ID}');" class="tooltip-success" data-rel="tooltip" title="修改">
																	<span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
																</a>
															</li>
															</c:if>
				   										    <li>
																<a style="cursor:pointer;" onclick="count('${var.CUSTOMER_ID}');" class="tooltip-success" data-rel="tooltip" title="修改">
																	<span class="blue">
																		<i class="menu-icon fa fa-bar-chart-o "></i>
																	</span>
																</a>
															</li>
															<c:if test="${QX.del == 1 }">
															<li>
																<a style="cursor:pointer;" onclick="del('${var.CUSTOMER_ID}');" class="tooltip-error" data-rel="tooltip" title="删除">
																	<span class="red">
																		<i class="ace-icon fa fa-trash-o bigger-120"></i>
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
								<td style="vertical-align:top;">
									<c:if test="${QX.add == 1 }">
									<a class="btn btn-primary btn-sm" onclick="add('${pd.COMPANY_ID}');">新增订单</a>
									</c:if>
<%-- 未开放批量删除功能				    <c:if test="${QX.del == 1 }">
									<a class="btn btn-mini btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" title="批量删除" ><i class='ace-icon fa fa-trash-o bigger-120'></i></a>
									</c:if> --%>
								</td>
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
			
			
			//复选框全选控制
			var active_class = 'active';
			$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
				var th_checked = this.checked;//checkbox inside "TH" table header
				$(this).closest('table').find('tbody > tr').each(function(){
					var row = this;
					if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
					else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
				});
			});
		});
		
		
		//新增
		function add(COMPANY_ID){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="新增";
			 diag.URL = '<%=basePath%>customer/goAddCompany.do?COMPANY_ID='+COMPANY_ID;
			 diag.Width = 450;
			 diag.Height = 600;
			 diag.Modal = false;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 tosearch();
				}
				diag.close();
			 };
			 diag.show();
		}
				
		//跟踪记录
		function chaImg(CUSTOMER_ID){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="维修设备跟踪";
			 diag.URL = '<%=basePath%>customerimg/list.do?CUSTOMER_ID='+CUSTOMER_ID;
			 diag.Width = 650;
			 diag.Height = 600;
			 diag.Modal = false;			//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				diag.close();
			 };
			 diag.show();
			}
				
		
		//删除
		function del(Id){
			bootbox.confirm("确定要删除吗?", function(result) {
				if(result) {
					top.jzts();
					var url = "<%=basePath%>customer/delete.do?CUSTOMER_ID="+Id+"&tm="+new Date().getTime();
					$.get(url,function(data){
						if("success" == data.result){
							nextPage(${page.currentPage});
						}else if("false" == data.result){
							top.hangge();
							bootbox.dialog({
								message: "<span class='bigger-110'>您的订单还存在维修设备跟踪记录，清空记录后再操作订单删除!</span>",
								buttons: 			
								{
									"button" :
									{
										"label" : "确定",
										"className" : "btn-sm btn-success"
									}
								}
							});
						}
					});
				}
			});
		}
		
		//修改
		function edit(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="订单修改";
			 diag.URL = '<%=basePath%>customer/goEditCompany.do?CUSTOMER_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 530;
			 diag.Modal = false;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮 
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 tosearch();
				}
				diag.close();
			 };
			 diag.show();
		}
		
		//结算
		function count(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="订单结算";
			 diag.URL = '<%=basePath%>customer/goCountCompany.do?CUSTOMER_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 460;
			 diag.Modal = false;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮 
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 tosearch();
				}
				diag.close();
			 };
			 diag.show();
		}
		
		//查看
		function view(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="查看";
			 diag.URL = '<%=basePath%>customer/goViewCompany.do?CUSTOMER_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 540;
			 diag.Modal = false;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮 
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 tosearch();
				}
				diag.close();
			 };
			 diag.show();
		}
		
		//批量操作
		function makeAll(msg){
			bootbox.confirm(msg, function(result) {
				if(result) {
					var str = '';
					for(var i=0;i < document.getElementsByName('ids').length;i++){
					  if(document.getElementsByName('ids')[i].checked){
					  	if(str=='') str += document.getElementsByName('ids')[i].value;
					  	else str += ',' + document.getElementsByName('ids')[i].value;
					  }
					}
					if(str==''){
						bootbox.dialog({
							message: "<span class='bigger-110'>您没有选择任何内容!</span>",
							buttons: 			
							{ "button":{ "label":"确定", "className":"btn-sm btn-success"}}
						});
						$("#zcheckbox").tips({
							side:1,
				            msg:'点这里全选',
				            bg:'#AE81FF',
				            time:8
				        });
						return;
					}else{
						if(msg == '确定要删除选中的数据吗?'){
							top.jzts();
							$.ajax({
								type: "POST",
								url: '<%=basePath%>customer/deleteAll.do?tm='+new Date().getTime(),
						    	data: {DATA_IDS:str},
								dataType:'json',
								//beforeSend: validateData,
								cache: false,
								success: function(data){
									 $.each(data.list, function(i, list){
											tosearch();
									 });
								}
							});
						}
					}
				}
			});
		};
		
		//导出excel
		function toExcel(){
			window.location.href='<%=basePath%>customer/excel.do';
		}
	</script>


</body>
</html>