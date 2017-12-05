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
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
<link rel="stylesheet" href="http://res.wx.qq.com/open/libs/weui/0.4.0/weui.min.css">
<base href="<%=basePath%>">

<!-- jsp文件头和头部 -->
<%@ include file="../system/index/top.jsp"%>

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
							<!-- 九宫格 -->
							<div class="weui_grids">
							    <a href="" class="weui_grid">
							        <div class="weui_grid_icon">
							            <img src="static/images/weiui.png" alt="">
							        </div>
							        <p class="weui_grid_label">ONE</p>
							    </a>
							    <a href="" class="weui_grid">
							        <div class="weui_grid_icon">
							            <img src="" alt="">
							        </div>
							        <p class="weui_grid_label">TWO</p>
							    </a>
							    	<a href="" class="weui_grid">
							        <div class="weui_grid_icon">
							            <img src="" alt="">
							        </div>
							        <p class="weui_grid_label">THREE</p>
							    </a>
							</div>
							<div class="weui_grids">
							    <a href="" class="weui_grid">
							        <div class="weui_grid_icon">
							            <img src="" alt="">
							        </div>
							        <p class="weui_grid_label">ONE</p>
							    </a>
							    <a href="" class="weui_grid">
							        <div class="weui_grid_icon">
							            <img src="" alt="">
							        </div>
							        <p class="weui_grid_label">TWO</p>
							    </a>
							    	<a href="" class="weui_grid">
							        <div class="weui_grid_icon">
							            <img src="" alt="">
							        </div>
							        <p class="weui_grid_label">THREE</p>
							    </a>
							</div>
	<input type="date" class="weui_input">
							






						
							
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
	<%@ include file="../system/index/foot.jsp"%>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<script type="text/javascript">
		$(top.hangge());
	</script>


</body>
</html>