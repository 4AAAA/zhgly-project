﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
						<form action="goods/list.do" method="post" name="Form" id="Form">
						<table style="margin-top:5px;">
							<tr>
								<td>
									<div class="nav-search">
										<span class="input-icon">
											<input type="text" placeholder="商品备案/sn号" class="nav-search-input" id="nav-search-input" autocomplete="off" name="keywords" value="${pd.keywords }" placeholder="这里输入关键词"/>
											<i class="ace-icon fa fa-search nav-search-icon"></i>
										</span>
									</div>
								</td>
<%-- 								<td style="padding-left:5px">
									<select class="chosen-select form-control" name="SPBRAND_ID" id="SPBRAND_ID" data-placeholder="请选择品牌" style="vertical-align:top;width:120px;" >
										<option value=""></option>
										<c:forEach items="${spbrandList}" var="var">
											<option value="${var.SPBRAND_ID }" <c:if test="${var.SPBRAND_ID == pd.SPBRAND_ID }">selected</c:if>>${var.NAME }</option>
										</c:forEach>
									</select>
								</td> --%>
								<td style="padding-left:5px">
									<select class="chosen-select form-control" name="SPTYPE_ID" id="SPTYPE_ID" data-placeholder="请选择类别" style="vertical-align:top;width:120px;" >
										<option value=""></option>
										<c:forEach items="${sptypeList}" var="var">
											<option value="${var.SPTYPE_ID }" <c:if test="${var.SPTYPE_ID == pd.SPTYPE_ID }">selected</c:if>>${var.NAME }</option>
										</c:forEach>
									</select>
								</td>
								<td style="padding-left:5px">
									<select class="chosen-select form-control" name="DEGREE" id="DEGREE" data-placeholder="请选择成色" style="vertical-align:top;width:120px;" >
										<option value=""></option>
										<c:forEach items="${degreeList}" var="var">
											<option value="${var.DEGREE_ID }" <c:if test="${var.DEGREE_ID == pd.DEGREE }">selected</c:if>>${var.NAME }</option>
										</c:forEach>
									</select>
								</td>
								<td style="padding-left:5px">
									<select class="chosen-select form-control" name="MATERIAL" id="MATERIAL" data-placeholder="请选择耗材" style="vertical-align:top;width:120px;" >
										<option value=""></option>
										<c:forEach items="${materialList}" var="var">
											<option value="${var.MATERIAL_ID }" <c:if test="${var.MATERIAL_ID == pd.MATERIAL }">selected</c:if>>${var.NAME }</option>
										</c:forEach>
									</select>
								</td>
								<c:if test="${QX.cha == 1 }">
								<td style="vertical-align:top;padding-left:2px"><a class="btn btn-app btn-light btn-xs" onclick="tosearch();"  title="检索">查询</a></td>
								</c:if>
								<td style="vertical-align:top;padding-left:20px;padding-top:2px">
									<c:if test="${QX.add == 1 }">
										<a class="btn btn-white btn-success btn-round" onclick="add();"><i class="ace-icon glyphicon glyphicon-plus"></i>商品入库</a>
									</c:if>
								</td>
								<td style="padding-left:10px;">
								  <span class="label label-xlg label-info arrowed-in-right arrowed-in">&nbsp;&nbsp;进货总金额：<font color=""><b>${feeSum }</b></font>&nbsp;元</span>					    
								</td>
							</tr>

						</table>
						<!-- 检索  -->
					
						<table id="simple-table" class="table table-striped table-bordered table-hover" style="margin-top:5px;">	
							<thead>
								<tr>
									<th class="center" style="width:50px;">序号</th>
									<th class="center">商品备案</th>	
								  
									<!-- <th class="center">型号</th> -->
									<th class="center">sn号</th>								
									<th class="center">类别</th>									
									<th class="center">成色</th>
									<th class="center">使用耗材</th>
									<th class="center">库存量</th> 
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
											<td class='center' style="width: 30px;"><span class="badge">${vs.index+1}</span></td>
											<td class='center'>${var.TITLE}</td>	
											
									<%-- 		<td class='center'>${var.BIANMA}</td> --%>
											<td class='center'>${var.DESCRIPTION}</td>							
											<td class='center'><span class="label label-info arrowed-in">${var.TNAME}</span></td>											
											<td class='center'><span class="label label-pink arrowed-in">${var.DEGREE}</span></td>
											<td class='center'>${var.MATERIAL}</td>
											<td class='center'>

											<c:choose>
												<c:when test="${var.ZCOUNT==0 }">
													<span class="btn-danger">
														 &nbsp;<i class="ace-icon fa fa-exclamation-triangle bigger-110"></i>库存:0${var.UNAME}&nbsp;,请补仓&nbsp;
													</span>
				
												</c:when>
												<c:otherwise>
													<span class="btn-success">
														 &nbsp;<i class="ace-icon fa fa-briefcase bigger-110"></i>&nbsp;库存：${var.ZCOUNT}&nbsp;${var.UNAME}&nbsp;
													</span>
												</c:otherwise>
											</c:choose>
											</td> 
											<td class="center">
												<c:if test="${QX.edit != 1 && QX.del != 1 }">
												<span class="label label-large label-grey arrowed-in-right arrowed-in"><i class="ace-icon fa fa-lock" title="无权限"></i></span>
												</c:if>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" title="查看商品信息" onclick="view('${var.GOODS_ID}');">
														<i class="ace-icon fa fa-search-plus bigger-130" title="查看商品信息"></i>
													</a>
													<c:if test="${QX.edit == 1 }">
													<a class="green" title="编辑" onclick="edit('${var.GOODS_ID}');">
														<i class="ace-icon fa fa-pencil bigger-130" title="编辑"></i>
													</a>
													</c:if>
													<a class="purple" title="编辑" onclick="outku('${var.GOODS_ID}');">
														<i class="ace-icon fa fa-shopping-cart bigger-120" title="出库"></i>
													</a>
					<%-- 								<a class="blue" title="退货" onclick="back('${var.GOODS_ID}');">
														<i class="ace-icon fa fa-download bigger-120" title="退货"></i>
													</a> --%>
													<c:if test="${QX.del == 1 }">
													<a class="red" onclick="del('${var.GOODS_ID}');">
														<i class="ace-icon fa fa-trash-o bigger-130" title="删除"></i>
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
																<a style="cursor:pointer;" onclick="view('${var.GOODS_ID}');" class="tooltip-info" data-rel="tooltip" title="查看商品信息">
																	<span class="blue">
																		<i class="ace-icon fa fa-eye bigger-120"></i>
																	</span>
																</a>
															</li>
															<c:if test="${QX.edit == 1 }">
															<li>
																<a style="cursor:pointer;" onclick="edit('${var.GOODS_ID}');" class="tooltip-success" data-rel="tooltip" title="修改">
																	<span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
																</a>
															</li>
															</c:if>
												      		<li>
																<a style="cursor:pointer;" onclick="outku('${var.GOODS_ID}');" class="tooltip-success" data-rel="tooltip" title="出库">
																	<span class="purple">
																		<i class="ace-icon fa fa-shopping-cart bigger-120"></i>
																	</span>
																</a>
															</li>
<%-- 															<li>
																<a style="cursor:pointer;" onclick="back('${var.GOODS_ID}');" class="tooltip-success" data-rel="tooltip" title="退货">
																	<span class="blue">
																		<i class="ace-icon fa fa-download bigger-120"></i>
																	</span>
																</a>
															</li> --%>
															<c:if test="${QX.del == 1 }">
															<li>
																<a style="cursor:pointer;" onclick="del('${var.GOODS_ID}');" class="tooltip-error" data-rel="tooltip" title="删除">
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
<%-- 									<c:if test="${QX.add == 1 }">
									<a class="btn btn-white btn-success btn-round" onclick="add();"><i class="ace-icon glyphicon glyphicon-plus"></i>商品入库</a>
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
		function add(){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="新增";
			 diag.URL = '<%=basePath%>goods/goAdd.do';
			 diag.Width = 450;
			 diag.Height = 620;
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
		
		//删除
		function del(Id){
			bootbox.confirm("确定要删除吗?", function(result) {
				if(result) {
					top.jzts();
					var url = "<%=basePath%>goods/delete.do?GOODS_ID="+Id+"&tm="+new Date().getTime();
					$.get(url,function(data){
						if("success" == data.result){
							nextPage(${page.currentPage});
						}else if("false" == data.result){
							top.hangge();
							bootbox.dialog({
								message: "<span class='bigger-110'>该商品还存在库存量，清空库存可操作删除!</span>",
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
			 diag.Title ="编辑";
			 diag.URL = '<%=basePath%>goods/goEdit.do?GOODS_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 620;
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
			 diag.URL = '<%=basePath%>goods/goBack.do?GOODS_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 390;
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
		
		//出库
		function outku(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="出库";
			 diag.URL = '<%=basePath%>outku/goOut.do?GOODS_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 420;
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
		
		//查看商品信息
		function view(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="查看商品信息";
			 diag.URL = '<%=basePath%>goods/goView.do?GOODS_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 620;
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
			window.location.href='<%=basePath%>goods/excel.do';
		}
	</script>


</body>
</html>