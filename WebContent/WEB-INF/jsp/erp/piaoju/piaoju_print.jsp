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
    <div id="dataPrint" style="height:100%; margin-left:13px;margin-right:15px;display:none; margin-top:1px;">  
      </div>  
      <div id="dataPanel" style="position:absolute;left:50%;margin-left:-400px;margin-top:-20px">  
      <div id="topContent"  style="height:100%; margin-left:13px;margin-right:15px; margin-top:65px">  
        <!--   <h2 style="width:794px;text-align:center">河源市东创电脑商品出货单</h2><br> -->
        <!--   <br>  
          <br>   -->
        <!--   <br>  -->
          <div>
             <table id="table" class="table table-bordered table-condensed table-hover" style="width:580px;margin-left:80px;border-width:4px;margin-top:50px;">  
		          <tbody id="firstContent">  
		          	 <tr>  	     
			              <td   style="height:32px;width:80px" ><span style="font-size:10px">${pd.DANWEI}</span></td>  
			              <td   style="height:32px;width:80px" ><span style="font-size:10px">${pd.DIANHUA}</span></td>  
			              <td   style="height:32px;width:20px" ><span style="font-size:10px">${pd.YEAR}</span></td>  
			              <td   style="height:32px;width:20px"><span style="font-size:10px">${pd.MONTH}</span></td> 
			              <td   style="height:32px;width:20px" ><span style="font-size:10px">${pd.DAY}</span></td>  
		            </tr>  
		          </tbody>
            </table>
<%--              <span style="margin-left:80px;font-size:10px">${pd.DANWEI}</span><span style="margin-left:140px;font-size:10px">${pd.DIANHUA}</span>   <span style="margin-left:150px;">${pd.YEAR}</span><span style="margin-left:40px;">${pd.MONTH}</span><span style="margin-left:25px;">${pd.DAY}</span>
 --%>          </div>
       
      </div>  
        <table id="table" class="table table-bordered table-condensed table-hover" style="width:570px;margin-left:50px;border-width:4px;margin-top:45px;">  
          <tbody id="firstContent">  
 <!--            <tr>  
              <td colspan='3' style="height:100px" >
              <td colspan='2' style="height:100px" >
              <td colspan='2' style="height:100px" >
              <td colspan='2' style="height:100px" >
              <td colspan='2' style="height:100px" >
              <td colspan='2' style="height:100px" >
   				
            </td>   -->
            <tr>  
              <td  rowspan='2' style="width:180px"><span style="font-size:10px"></span></td>  
              <td  rowspan='2' style="width:40px" ><span style="font-size:10px"></span></td>  
              <td  rowspan='2' style="width:50px" ><span style="font-size:10px"></span></td>  
              <td  rowspan='2' style="width:70px" ><span style="font-size:10px"></span></td>  
              <td  colspan='8' style="width:80px"><span style="font-size:10px"></span></td> 
               <td rowspan='2' style="width:80px" ><span style="font-size:10px"></span>
  
               </td>  

               
            </tr>  
            <tr>  
              <td ><span style="font-size:10px"></span></td>  
              <td ><span style="font-size:10px"></span></td>  
              <td  ><span style="font-size:10px"></span></td>  
              <td  ><span style="font-size:10px"></span></td>  
          <td  ><span style="font-size:10px"></span></td>  
          <td  ><span style="font-size:10px"></span></td>  
          <td  ><span style="font-size:10px"></span></td>  
          <td  ><span style="font-size:10px"></span></td>  
            </tr>  
            <tr>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE1}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE1DW}</span></td> 
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE1SL}</span></td>  
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE1DJ}</span></td>  
              <td style="height:32px;text-align:center;width:12px;"><span style="font-size:10px">${pd.TITLE1M1}</span></td>  
              <td style="height:32px;text-align:center;width:12px;"><span style="font-size:10px">${pd.TITLE1M2}</span></td>  
              <td style="height:32pxtext-align:center;width:12px;"><span style="font-size:10px">${pd.TITLE1M3}</span></td>  
              <td style="height:32px;text-align:center;width:12px;"><span style="font-size:10px">${pd.TITLE1M4}</span></td>  
              <td style="height:32px;text-align:center;width:12px;"><span style="font-size:10px">${pd.TITLE1M5}</span></td>  
              <td style="height:32px;text-align:center;width:12px;"><span style="font-size:10px">${pd.TITLE1M6}</span></td>  
              <td style="height:32px;text-align:center;width:12px;"><span style="font-size:10px">${pd.TITLE1M7}</span></td>   
                <td style="height:32px;text-align:center;width:12px;"><span style="font-size:10px">${pd.TITLE1M8}</span></td>   
                  <td rowspan='3'><span style="font-size:10px;margin-left:20px"></span></td>   
            </tr> 
                        <tr>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE2}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE2DW}</span></td> 
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE2SL}</span></td>  
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE2DJ}</span></td>  
              <td style="height:32px;text-align:center;"><span style="font-size:10px">${pd.TITLE2M1}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE2M2}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE2M3}</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE2M4}</span></td>  
              <td style="height:32px;width:19px;text-align:center"><span style="font-size:10px">${pd.TITLE2M5}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE2M6}</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">${pd.TITLE2M7}</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE2M8}</span></td>     
                 
            </tr> 
            <tr>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE3}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE3DW}</span></td> 
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE3SL}</span></td>  
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE3DJ}</span></td>  
              <td style="height:32px;text-align:center;"><span style="font-size:10px">${pd.TITLE3M1}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE3M2}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE3M3}</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE3M4}</span></td>  
              <td style="height:32px;width:19px;text-align:center"><span style="font-size:10px">${pd.TITLE3M5}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE3M6}</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">${pd.TITLE3M7}</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE3M8}</span></td>     
                  
            </tr> 
                        <tr>  
              <td style="height:35px"><span style="font-size:10px">${pd.TITLE4}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE4DW}</span></td> 
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE4SL}</span></td>  
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE4DJ}</span></td>  
              <td style="height:32px;text-align:center;"><span style="font-size:10px">${pd.TITLE4M1}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE4M2}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE4M3}</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE4M4}</span></td>  
              <td style="height:32px;width:19px;text-align:center"><span style="font-size:10px">${pd.TITLE4M5}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE4M6}</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">${pd.TITLE4M7}</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE4M8}</span></td>    
                  <td rowspan='4' ><span style="font-size:10px;margin-left:20px"></span></td>   
            </tr> 
                        <tr>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE5}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE5DW}</span></td> 
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE5SL}</span></td>  
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE5DJ}</span></td>  
              <td style="height:32px;text-align:center;"><span style="font-size:10px">${pd.TITLE5M1}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE5M2}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE5M3}</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE5M4}</span></td>  
              <td style="height:32px;width:19px;text-align:center"><span style="font-size:10px">${pd.TITLE5M5}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE5M6}</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">${pd.TITLE5M7}</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE5M8}</span></td>     
                   
            </tr> 
                        <tr>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE6}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE6DW}</span></td> 
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE6SL}</span></td>  
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE6DJ}</span></td>  
              <td style="height:32px;text-align:center;"><span style="font-size:10px">${pd.TITLE6M1}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE6M2}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE6M3}</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE6M4}</span></td>  
              <td style="height:32px;width:19px;text-align:center"><span style="font-size:10px">${pd.TITLE6M5}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE6M6}</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">${pd.TITLE6M7}</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE6M8}</span></td>     
                  
            </tr> 
                        <tr>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE7}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE7DW}</span></td> 
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE7SL}</span></td>  
              <td style="height:32px;text-align:left"><span style="font-size:10px">${pd.TITLE7DJ}</span></td>  
              <td style="height:32px;text-align:center;"><span style="font-size:10px">${pd.TITLE7M1}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE7M2}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE7M3}</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE7M4}</span></td>  
              <td style="height:32px;width:19px;text-align:center"><span style="font-size:10px">${pd.TITLE7M5}</span></td>  
              <td style="height:32px"><span style="font-size:10px">${pd.TITLE7M6}</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">${pd.TITLE7M7}</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">${pd.TITLE7M8}</span></td>    
                  
            </tr>  
                                    <tr>  
              <td colspan='13' style="height:30px" >
              	<!-- <span style="font-size:10px">金额合计：</span> -->
              	<span style="font-size:10px; margin-left:100px;">${pd.DX1}</span>
              	<span style="font-size:10px; margin-left:30px;">${pd.DX2}</span>
              	<span style="font-size:10px ; margin-left:30px;">${pd.DX3}</span>
              	<span style="font-size:10px; margin-left:30px;">${pd.DX4}</span>
              	<span style="font-size:10px; margin-left:30px;">${pd.DX5}</span>
              	<span style="font-size:10px; margin-left:30px;">${pd.DX6}</span>
              	<span style="font-size:10px; margin-left:30px;">${pd.DX7}</span>
              	<span style="font-size:10px; margin-left:30px;">${pd.DX8}</span>
              	<span style="font-size:15px; margin-left:60px;">${pd.MONEY}</span>
              </td>  

                  
            </tr>  
            <!-- <tr>  
              <td style="word-wrap:break-word;width: 10%;border-left-width:5px;text-align:center">用    途</td>  
              <td colspan='2'><input style="width: 100%;border-width:0" id="Content" value=""/></td>  
              <td style="width: 20%;text-align:center">类    别</td>  
              <td style="width: 20%;text-align:left">新闻<input type="checkbox" style="margin-left:0" /> 宣传<input type="checkbox" style="margin-left:0" /> 商业<input type="checkbox" style="margin-left:0" /></td>  
            </tr>  
            <tr>  
              <td style="word-wrap:break-word;width: 10%;border-left-width:5px;text-align:center">序    号</td>  
              <td style="width: 20%;text-align:center">底片号/画报号</td>  
              <td style="width: 20%;text-align:center">年    代</td>  
              <td style="width: 20%;text-align:center">尺    寸</td>  
              <td style="width: 20%;text-align:center">价    格</td>  
            </tr>  
          </tbody>  
 
          <tbody id="thirdContent">  
            <tr>  
              <td style="word-wrap:break-word;width: 10%;border-left-width:5px;text-align:center">总    计</td>  
              <td colspan='4'></td>  
            </tr>  
            <tr>  
              <td style="word-wrap:break-word;width: 10%;border-left-width:5px;text-align:center">实    收</td>  
              <td colspan='4'><span style="margin-left:33%"></span>大    写:</td>  
            </tr>  
            <tr>  
              <td style="word-wrap:break-word;width: 10%;border-left-width:5px;text-align:center">组    长<br>意    见</td>  
              <td colspan='4'></td>  
            </tr>  
            <tr>  
              <td style="word-wrap:break-word;width: 10%;border-left-width:5px;text-align:center">分管副主任<br>意    见</td>  
              <td colspan='4'></td>  
            </tr>  
            <tr>  
              <td style="word-wrap:break-word;width: 10%;border-left-width:5px;text-align:center">主    任<br>意    见</td>  
              <td colspan='4'></td>  
            </tr>  
            <tr>  
              <td style="word-wrap:break-word;border-left-width:5px;" colspan='5'><span style="margin-left:13px"></span>接    待:<span style="margin-left:200px"></span>制    作:<span style="margin-left:200px"></span>收    银:</td>  
            </tr>   -->
          </tbody>  
        </table>  
        <div id="footerContent">  
                     <table id="table" class="table table-bordered table-condensed table-hover" style="width:500px;margin-left:90px;border-width:4px;margin-top:-5px;">  
		          <tbody id="firstContent">  
		          	 <tr>  	     
			              <td   style="height:32px;width:80px" ><span style="font-size:10px">${pd.PIAOJU_CODE}</span></td>  
			              <td   style="height:32px;width:90px" ><span style="font-size:10px">${pd.FZ}</span></td>  

		            </tr>  
		          </tbody>
            </table>
<%--             <span style="margin-left:100px;margin-top:-5px;font-size:8px;">${pd.PIAOJU_CODE}
              <span style="margin-left:220px;"></span>${pd.FZ}

            </span>  --%> 
        </div>  
        </div>
 <!--        <div>
        		<table>
        										<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="print()">打印</a>
							
								</td>
							</tr>
        		</table>
        </div> -->
						<!-- /.col -->
					</div>
					
<!-- 					  <div class="my_show"> 
    <div style="position: absolute; left: 60px; top: 10px;"><p id="findvalue"></p> 
     <input style="width: 100%;border-width:0" id="applicantName" />
    </div> 
    <div style="position: absolute; left: 60px; top: 35px;"> 
     <p> bbb </p>
    </div> 
  </div>  -->
					
					
					<!-- /.row -->
				</div>
				        <div>
        		<table>
        										<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="print()">打印</a>
							
								</td>
							</tr>
        		</table>
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
	<script type="text/javascript" src="static/js/jquery.PrintArea.js"></script>
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
			 diag.Title ="新增记事本";
			 diag.URL = '<%=basePath%>goodbook/goAdd.do';
			 diag.Width = 450;
			 diag.Height = 400;
			 diag.Modal = true;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 if('${page.currentPage}' == '0'){
						 console.log("我是1")
						 top.jzts();
						 setTimeout("self.location=self.location",100);
						
					 }else{
						 console.log("我是2")
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
					var url = "<%=basePath%>goodbook/delete.do?GOODS_ID="+Id+"&tm="+new Date().getTime();
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
			 diag.URL = '<%=basePath%>goodbook/goEdit.do?GOODS_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 400;
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
			 diag.Height = 600;
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
		
		//打印
		function print(){
			
/* 			 $("#findvalue").val($("#applicantName").val())
			  console.log("看看111："+ $("#applicantName").val())
			 console.log("看看："+ $("#findvalue").val())
			 
			  $(".my_show").printArea()  */

			 $(".page-content").printArea() 
		}
		
	</script>


</body>
</html>