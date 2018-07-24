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
					
					<form action="piaoju/${msg }.do" name="Form" id="Form" method="post">
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover" style="margin-top:-5px">				
						      <div id="topContent">  
						          <h2 style="text-align:center">河源市东创电脑商品出货单</h2><br>
						      </div>  
						
							  <tbody id="firstContent">  
							    <tr>  
					              <td colspan='2' style="height:40px" >单位：${pd.DANWEI}</td>  
					             
					              <td colspan='5' style="height:40px" >电话：${pd.DIANHUA}</td> 
					               
					              <td colspan='6' style="height:40px" >日期：${pd.RIQI }</td>  
					                 
					            </tr>  
					            <tr>  
					              <td  rowspan='2' style="width:200px;text-align:center">品名及规格</td>  
					              <td  rowspan='2' style="width:50px;text-align:center" >单位</td>  
					              <td  rowspan='2' style="width:60px;text-align:center" >数量</td>  
					              <td  rowspan='2' style="width:80px;text-align:center" >单价</td>  
					              <td  colspan='8' style="width:80px;text-align:center">金额</td> 
					              <td  rowspan='2' style="width:90px;text-align:center" >签单专栏 </td>  					  
					            </tr>  
					            <tr>  
					              <td  style="text-align:center" ><span>拾</span></td>  
					              <td  style="text-align:center" ><span>万</span></td>  
					              <td  style="text-align:center" ><span>千</span></td>  
					              <td  style="text-align:center" ><span>百</span></td>  
						          <td  style="text-align:center" ><span>十</span></td>  
						          <td  style="text-align:center" ><span>元</span></td>  
						          <td  style="text-align:center" ><span>角</span></td>  
						          <td  style="text-align:center" ><span>分</span></td>  
					            </tr>  
					            <tr>  
					              <td style="height:32px">${pd.TITLE1}</td>  
					              <td style="height:32px">${pd.TITLE1DW}</td> 
					              <td style="height:32px;text-align:center">${pd.TITLE1SL}</td>  
					              <td style="height:32px;text-align:center">${pd.TITLE1DJ}</td>  
					              <td style="height:32px;">${pd.TITLE1M1}</td>  
					              <td style="height:32px">${pd.TITLE1M2}</td>  
					              <td style="height:32px">${pd.TITLE1M3}</td>  
					              <td style="height:32px;">${pd.TITLE1M4}</td>  
					              <td style="height:32px;">${pd.TITLE1M5}</td>  
					              <td style="height:32px">${pd.TITLE1M6}</td>  
					              <td style="height:32px;">${pd.TITLE1M7}</td>   
					              <td style="height:32px;">${pd.TITLE1M8}</td>   
					              <td rowspan='3' style="text-align:center"><span style="font-size:10px">${pd.BZ1}</span></td>   
					            </tr> 
					            <tr>  
					              <td style="height:32px">${pd.TITLE2}</td>  
					              <td style="height:32px">${pd.TITLE2DW}</td> 
					              <td style="height:32px;text-align:center">${pd.TITLE2SL}</td>  
					              <td style="height:32px;text-align:center">${pd.TITLE2DJ}</td>  
					              <td style="height:32px">${pd.TITLE2M1}</td>  
					              <td style="height:32px">${pd.TITLE2M2}</td>  
					              <td style="height:32px">${pd.TITLE2M3}</td>  
					              <td style="height:32px;">${pd.TITLE2M4}</td>  
					              <td style="height:32px;">${pd.TITLE2M5}</td>  
					              <td style="height:32px">${pd.TITLE2M6}</td>  
					              <td style="height:32px;">${pd.TITLE2M7}</td>   
					              <td style="height:32px;">${pd.TITLE2M8}</td>     
					                 
					            </tr> 
					            <tr>  
					              <td style="height:32px">${pd.TITLE3}</td>  
					              <td style="height:32px">${pd.TITLE3DW}</td> 
					              <td style="height:32px;text-align:center">${pd.TITLE3SL}</td>  
					              <td style="height:32px;text-align:center">${pd.TITLE3DJ}</td>  
					              <td style="height:32px;">${pd.TITLE3M1}</td>  
					              <td style="height:32px">${pd.TITLE3M2}</td>  
					              <td style="height:32px">${pd.TITLE3M3}</td>  
					              <td style="height:32px;">${pd.TITLE3M4}</td>  
					              <td style="height:32px;">${pd.TITLE3M5}</td>  
					              <td style="height:32px">${pd.TITLE3M6}</td>  
					              <td style="height:32px;">${pd.TITLE3M7}</td>   
					              <td style="height:32px;">${pd.TITLE3M8}</td>     
					                  
					            </tr> 
					            <tr>  
					              <td style="height:35px">${pd.TITLE4}</td>  
					              <td style="height:32px">${pd.TITLE4DW}</td> 
					              <td style="height:32px;text-align:center">${pd.TITLE4SL}</td>  
					              <td style="height:32px;text-align:center">${pd.TITLE4DJ}</td>  
					              <td style="height:32px;">${pd.TITLE4M1}</td>  
					              <td style="height:32px">${pd.TITLE4M2}</td>  
					              <td style="height:32px">${pd.TITLE4M3}</td>  
					              <td style="height:32px;">${pd.TITLE4M4}</td>  
					              <td style="height:32px;">${pd.TITLE4M5}</td>  
					              <td style="height:32px">${pd.TITLE4M6}</td>  
					              <td style="height:32px;">${pd.TITLE4M7}</td>   
					              <td style="height:32px;">${pd.TITLE4M8}</td>    
					              <td rowspan='4' style="text-align:center" ><span style="font-size:10px;">${pd.BZ2}</span></td>   
					            </tr> 
					            <tr>  
					              <td style="height:32px">${pd.TITLE5}</td>  
					              <td style="height:32px">${pd.TITLE5DW}</td> 
					              <td style="height:32px;text-align:center">${pd.TITLE5SL}</td>  
					              <td style="height:32px;text-align:center">${pd.TITLE5DJ}</td>  
					              <td style="height:32px;">${pd.TITLE5M1}</td>  
					              <td style="height:32px">${pd.TITLE5M2}</td>  
					              <td style="height:32px">${pd.TITLE5M3}</td>  
					              <td style="height:32px;">${pd.TITLE5M4}</td>  
					              <td style="height:32px;">${pd.TITLE5M5}</td>  
					              <td style="height:32px">${pd.TITLE5M6}</td>  
					              <td style="height:32px;">${pd.TITLE5M7}</td>   
					              <td style="height:32px;">${pd.TITLE5M8}</td>     					                   
					            </tr> 
					            <tr>  
					              <td style="height:32px">${pd.TITLE6}</td>  
					              <td style="height:32px">${pd.TITLE6DW}</td> 
					              <td style="height:32px;text-align:center">${pd.TITLE6SL}</td>  
					              <td style="height:32px;text-align:center">${pd.TITLE6DJ}</td>  
					              <td style="height:32px;">${pd.TITLE6M1}</td>  
					              <td style="height:32px">${pd.TITLE6M2}</td>  
					              <td style="height:32px">${pd.TITLE6M3}</td>  
					              <td style="height:32px;">${pd.TITLE6M4}</td>  
					              <td style="height:32px;">${pd.TITLE6M5}</td>  
					              <td style="height:32px">${pd.TITLE6M6}</td>  
					              <td style="height:32px;">${pd.TITLE6M7}</td>   
					              <td style="height:32px;">${pd.TITLE6M8}</td>     					                  
					            </tr> 
					            <tr>  
					              <td style="height:32px">${pd.TITLE7}</td>  
					              <td style="height:32px">${pd.TITLE7DW}</td> 
					              <td style="height:32px;text-align:center">${pd.TITLE7SL}</td>  
					              <td style="height:32px;text-align:center">${pd.TITLE7DJ}</td>  
					              <td style="height:32px;">${pd.TITLE7M1}</td>  
					              <td style="height:32px">${pd.TITLE7M2}</td>  
					              <td style="height:32px">${pd.TITLE7M3}</td>  
					              <td style="height:32px;">${pd.TITLE7M4}</td>  
					              <td style="height:32px;">${pd.TITLE7M5}</td>  
					              <td style="height:32px">${pd.TITLE7M6}</td>  
					              <td style="height:32px;">${pd.TITLE7M7}</td>   
					              <td style="height:32px;">${pd.TITLE7M8}</td>    			                  
					            </tr>  
					            <tr>  
					              <td colspan='13' style="height:40px" >
					              	<span >金额合计：</span>
					              	<span style=" margin-left:45px;">${pd.DX1}&nbsp;拾</span>
					              	<span style=" margin-left:10px;">${pd.DX2}&nbsp;万</span>
					              	<span style=" margin-left:10px;">${pd.DX3}&nbsp;仟</span>
					              	<span style=" margin-left:10px;">${pd.DX4}&nbsp;佰</span>
					              	<span style=" margin-left:10px;">${pd.DX5}&nbsp;十</span>
					              	<span style="margin-left:10px;">${pd.DX6}&nbsp;元</span>
					              	<span style="margin-left:10px;">${pd.DX7}&nbsp;角</span>
					              	<span style=" margin-left:10px;">${pd.DX8}&nbsp;分</span>
					              	<span style=" margin-left:80px;">¥：</span>${pd.MONEY}</span>
					              </td>  
					            </tr>  
					            <tr>  
					              <td colspan='2' style="height:40px" >制单：${pd.PIAOJU_CODE}</td>  
					             
					              <td colspan='11' style="height:40px" >负责：${pd.FZ}</td> 
					               
					             
					                 
					            </tr>  
	
         					 </tbody>  
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
	<a class="btn btn-mini btn-primary" onclick="print1('${pd.PIAOJU_ID}');">出货单打印</a>
		<a class="btn btn-mini btn-success" onclick="initPrint()">A4直接打印</a>
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
		//打印
		function print1(piaojuID){	
			//打印
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="预览打印";
			 diag.URL = '<%=basePath%>piaoju/print.do?PIAOJU_ID='+piaojuID;
			 diag.Width = 900;
			 diag.Height = 800;
			 diag.Modal = false;			//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				diag.close();
			 };
			 diag.show();
		}
		
		function initPrint(){	
			 window.print();
		}
		
		
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
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