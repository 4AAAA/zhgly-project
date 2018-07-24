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
      <div id="topContent">  
          <h2 style="width:794px;text-align:center">河源市东创电脑商品出货单</h2>
        <!--   <br>  
          <br>   -->
          <div>
             <span style="margin-left:34px;font-size:10px">单位：</span><span style="margin-left:140px;font-size:10px">电话:</span>  <span style="margin-left:200px;font-size:10px">日期:201 </span> <span style="margin-left:10px;">8</span>年<span style="margin-left:10px;">06</span>月<span style="margin-left:10px;">06</span>日
          </div>
       
      </div>  
        <table id="table" class="table table-bordered table-condensed table-hover" style="width:600px;margin-left:30px;border-width:4px;margin-top:30px;">  
          <tbody id="firstContent">  
            <tr>  
              <td  rowspan='2' style="width:200px"><span style="font-size:10px">品名及规格</span></td>  
              <td  rowspan='2' style="width:40px" ><span style="font-size:10px">单位</span></td>  
              <td  rowspan='2' style="width:50px" ><span style="font-size:10px">数量</span></td>  
              <td  rowspan='2' style="width:80px" ><span style="font-size:10px">单价</span></td>  
              <td  colspan='8' style="width:80px"><span style="font-size:10px">金额</span></td> 
               <td rowspan='2' style="width:90px" ><span style="font-size:10px">签单专栏</span>
  
               </td>  

               
            </tr>  
            <tr>  
              <td ><span style="font-size:10px">拾</span></td>  
              <td ><span style="font-size:10px">万</span></td>  
              <td  ><span style="font-size:10px">千</span></td>  
              <td  ><span style="font-size:10px">百</span></td>  
          <td  ><span style="font-size:10px">十</span></td>  
          <td  ><span style="font-size:10px">元</span></td>  
          <td  ><span style="font-size:10px">角</span></td>  
          <td  ><span style="font-size:10px">分</span></td>  
            </tr>  
            <tr>  
              <td style="height:32px"><span style="font-size:10px">联想X001打印机</span></td>  
              <td style="height:32px"><span style="font-size:10px">个</span></td> 
              <td style="height:32px;text-align:center"><span style="font-size:10px">50</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">500元</span></td>  
              <td style="height:32px;width:21px;text-align:right;"><span style="font-size:10px">1</span></td>  
              <td style="height:32px"><span style="font-size:10px">2</span></td>  
              <td style="height:32px"><span style="font-size:10px">3</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">4</span></td>  
              <td style="height:32px;width:19px;text-align:right"><span style="font-size:10px">5</span></td>  
              <td style="height:32px"><span style="font-size:10px">6</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">7</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">8</span></td>   
                  <td rowspan='3'><span style="font-size:10px;margin-left:20px">收货人</span></td>   
            </tr> 
                        <tr>  
              <td style="height:32px"><span style="font-size:10px">联想SFFS3RX001打印机</span></td>  
              <td style="height:32px"><span style="font-size:10px">个</span></td> 
              <td style="height:32px;text-align:center"><span style="font-size:10px">50</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">500元</span></td>  
              <td style="height:32px;text-align:right;"><span style="font-size:10px">1</span></td>  
              <td style="height:32px"><span style="font-size:10px">2</span></td>  
              <td style="height:32px"><span style="font-size:10px">3</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">4</span></td>  
              <td style="height:32px;width:19px;text-align:right"><span style="font-size:10px">5</span></td>  
              <td style="height:32px"><span style="font-size:10px">6</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">7</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">8</span></td>     
                 
            </tr> 
                        <tr>  
              <td style="height:32px"><span style="font-size:10px">联想SFFS3RX001打印机</span></td>  
              <td style="height:32px"><span style="font-size:10px">个</span></td> 
              <td style="height:32px;text-align:center"><span style="font-size:10px">50</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">500元</span></td>  
              <td style="height:32px;text-align:right;"><span style="font-size:10px">1</span></td>  
              <td style="height:32px"><span style="font-size:10px">2</span></td>  
              <td style="height:32px"><span style="font-size:10px">3</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">4</span></td>  
              <td style="height:32px;width:19px;text-align:right"><span style="font-size:10px">5</span></td>  
              <td style="height:32px"><span style="font-size:10px">6</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">7</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">8</span></td>     
                  
            </tr> 
                        <tr>  
              <td style="height:35px"><span style="font-size:10px">联想SFFS3RX001打印机</span></td>  
              <td style="height:32px"><span style="font-size:10px">个</span></td> 
              <td style="height:32px;text-align:center"><span style="font-size:10px">50</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">500元</span></td>  
              <td style="height:32px;text-align:right;"><span style="font-size:10px">1</span></td>  
              <td style="height:32px"><span style="font-size:10px">2</span></td>  
              <td style="height:32px"><span style="font-size:10px">3</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">4</span></td>  
              <td style="height:32px;width:19px;text-align:right"><span style="font-size:10px">5</span></td>  
              <td style="height:32px"><span style="font-size:10px">6</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">7</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">8</span></td>    
                  <td rowspan='4' ><span style="font-size:10px;margin-left:20px">现金</span></td>   
            </tr> 
                        <tr>  
              <td style="height:32px"><span style="font-size:10px">联想SFFS3RX001打印机</span></td>  
              <td style="height:32px"><span style="font-size:10px">个</span></td> 
              <td style="height:32px;text-align:center"><span style="font-size:10px">50</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">500元</span></td>  
              <td style="height:32px;text-align:right;"><span style="font-size:10px">1</span></td>  
              <td style="height:32px"><span style="font-size:10px">2</span></td>  
              <td style="height:32px"><span style="font-size:10px">3</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">4</span></td>  
              <td style="height:32px;width:19px;text-align:right"><span style="font-size:10px">5</span></td>  
              <td style="height:32px"><span style="font-size:10px">6</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">7</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">8</span></td>     
                   
            </tr> 
                        <tr>  
              <td style="height:32px"><span style="font-size:10px">联想SFFS3RX001打印机</span></td>  
              <td style="height:32px"><span style="font-size:10px">个</span></td> 
              <td style="height:32px;text-align:center"><span style="font-size:10px">50</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">500元</span></td>  
              <td style="height:32px;text-align:right;"><span style="font-size:10px">1</span></td>  
              <td style="height:32px"><span style="font-size:10px">2</span></td>  
              <td style="height:32px"><span style="font-size:10px">3</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">4</span></td>  
              <td style="height:32px;width:19px;text-align:right"><span style="font-size:10px">5</span></td>  
              <td style="height:32px"><span style="font-size:10px">6</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">7</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">8</span></td>     
                  
            </tr> 
                        <tr>  
              <td style="height:32px"><span style="font-size:10px">联想SFFS3RX001打印机</span></td>  
              <td style="height:32px"><span style="font-size:10px">个</span></td> 
              <td style="height:32px;text-align:center"><span style="font-size:10px">50</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">500元</span></td>  
              <td style="height:32px;text-align:right;"><span style="font-size:10px">1</span></td>  
              <td style="height:32px"><span style="font-size:10px">2</span></td>  
              <td style="height:32px"><span style="font-size:10px">3</span></td>  
              <td style="height:32px;text-align:right"><span style="font-size:10px">4</span></td>  
              <td style="height:32px;width:19px;text-align:right"><span style="font-size:10px">5</span></td>  
              <td style="height:32px"><span style="font-size:10px">6</span></td>  
              <td style="height:32px;text-align:center"><span style="font-size:10px">7</span></td>   
                <td style="height:32px;text-align:right"><span style="font-size:10px">8</span></td>    
                  
            </tr>  
                                    <tr>  
              <td colspan='13' style="height:40px" >
              	<span style="font-size:10px">金额合计：</span>
              	<span style="font-size:10px; margin-left:45px;">壹</span>
              	<span style="font-size:10px; margin-left:30px;">贰</span>
              	<span style="font-size:10px ; margin-left:20px;">叁</span>
              	<span style="font-size:10px; margin-left:20px;">肆</span>
              	<span style="font-size:10px; margin-left:30px;">伍</span>
              	<span style="font-size:10px; margin-left:30px;">陆</span>
              	<span style="font-size:10px; margin-left:40px;">柒</span>
              	<span style="font-size:10px; margin-left:40px;">捌</span>
              	<span style="font-size:10px; margin-left:80px;">3200元</span>
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
            <span style="margin-left:33px;margin-top:-5px">制单：
              <span style="margin-left:300px"></span>负责：

            </span>  
        </div>  
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

			 $(".main-container").printArea() 
		}
		
	</script>


</body>
</html>