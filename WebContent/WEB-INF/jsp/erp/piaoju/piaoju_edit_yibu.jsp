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
						<input type="hidden" name="PIAOJU_ID" id="PIAOJU_ID" value="${pd.PIAOJU_ID}"/>
			
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover" style="margin-top:-5px">				
						      <div id="topContent">  
						          <h2 style="text-align:center">河源市东创电脑商品出货单</h2><br>
						      </div>  
						
							  <tbody id="firstContent">  
							    <tr>  
					              <td colspan='2' style="height:40px" >单位：<input type="text" name="DANWEI" id="DANWEI" value="${pd.DANWEI}" title="单位" style="width:80%"/></td>  
					             
					              <td colspan='5' style="height:40px" >电话：<input type="text" name="DIANHUA" id="DIANHUA" value="${pd.DIANHUA}" title="电话" style="width:80%"/></td> 
					               
					              <td colspan='6' style="height:40px" >日期：<input class="span10 date-picker" name="RIQI" id="RIQI"  value="${pd.RIQI }" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:85%;height:34px;" placeholder="选择日期" title="日期"/></td>  
					                 
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
					              <td style="height:32px"><input type="text" name="TITLE1" id="TITLE1" value="${pd.TITLE1}" title="产品及规格" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE1DW" id="TITLE1DW" value="${pd.TITLE1DW}" title="单位" style="width:100%"/></td> 
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE1SL" id="TITLE1SL" value="${pd.TITLE1SL}" title="数量" style="width:100%"/></td>  
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE1DJ" id="TITLE1DJ" value="${pd.TITLE1DJ}" title="单价" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE1M1" id="TITLE1M1" value="${pd.TITLE1M1}" title="拾" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE1M2" id="TITLE1M2" value="${pd.TITLE1M2}" title="万" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE1M3" id="TITLE1M3" value="${pd.TITLE1M3}" title="千" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE1M4" id="TITLE1M4" value="${pd.TITLE1M4}" title="百" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE1M5" id="TITLE1M5" value="${pd.TITLE1M5}" title="十" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE1M6" id="TITLE1M6" value="${pd.TITLE1M6}" title="元" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE1M7" id="TITLE1M7" value="${pd.TITLE1M7}" title="角" style="width:100%"/></td>   
					              <td style="height:32px;"><input type="text" name="TITLE1M8" id="TITLE1M8" value="${pd.TITLE1M8}" title="分" style="width:100%"/></td>   
					              <td rowspan='3'><span style="font-size:10px;margin-left:20px">收货人</span></td>   
					            </tr> 
					            <tr>  
					              <td style="height:32px"><input type="text" name="TITLE2" id="TITLE2" value="${pd.TITLE2}" title="产品及规格" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE2DW" id="TITLE2DW" value="${pd.TITLE2DW}" title="台" style="width:100%"/></td> 
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE2SL" id="TITLE2SL" value="${pd.TITLE2SL}" title="数量" style="width:100%"/></td>  
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE2DJ" id="TITLE2DJ" value="${pd.TITLE2DJ}" title="单价" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE2M1" id="TITLE2M1" value="${pd.TITLE2M1}" title="拾" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE2M2" id="TITLE2M2" value="${pd.TITLE2M2}" title="万" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE2M3" id="TITLE2M3" value="${pd.TITLE2M3}" title="千" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE2M4" id="TITLE2M4" value="${pd.TITLE2M4}" title="百" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE2M5" id="TITLE2M5" value="${pd.TITLE2M5}" title="十" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE2M6" id="TITLE2M6" value="${pd.TITLE2M6}" title="元" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE2M7" id="TITLE2M7" value="${pd.TITLE2M7}" title="角" style="width:100%"/></td>   
					              <td style="height:32px;"><input type="text" name="TITLE2M8" id="TITLE2M8" value="${pd.TITLE2M8}" title="分" style="width:100%"/></td>     
					                 
					            </tr> 
					            <tr>  
					              <td style="height:32px"><input type="text" name="TITLE3" id="TITLE3" value="${pd.TITLE3}" title="产品及规格" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE3DW" id="TITLE3DW" value="${pd.TITLE3DW}" title="单位" style="width:100%"/></td> 
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE3SL" id="TITLE3SL" value="${pd.TITLE3SL}" title="数量" style="width:100%"/></td>  
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE3DJ" id="TITLE3DJ" value="${pd.TITLE3DJ}" title="单价" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE3M1" id="TITLE3M1" value="${pd.TITLE3M1}" title="拾" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE3M2" id="TITLE3M2" value="${pd.TITLE3M2}" title="万" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE3M3" id="TITLE3M3" value="${pd.TITLE3M3}" title="千" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE3M4" id="TITLE3M4" value="${pd.TITLE3M4}" title="百" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE3M5" id="TITLE3M5" value="${pd.TITLE3M5}" title="十" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE3M6" id="TITLE3M6" value="${pd.TITLE3M6}" title="元" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE3M7" id="TITLE3M7" value="${pd.TITLE3M7}" title="角" style="width:100%"/></td>   
					              <td style="height:32px;"><input type="text" name="TITLE3M8" id="TITLE3M8" value="${pd.TITLE3M8}" title="分" style="width:100%"/></td>     
					                  
					            </tr> 
					            <tr>  
					              <td style="height:35px"><input type="text" name="TITLE4" id="TITLE4" value="${pd.TITLE4}" title="产品及规格" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE4DW" id="TITLE4DW" value="${pd.TITLE4DW}" title="单位" style="width:100%"/></td> 
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE4SL" id="TITLE4SL" value="${pd.TITLE4SL}" title="数量" style="width:100%"/></td>  
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE4DJ" id="TITLE4DJ" value="${pd.TITLE4DJ}" title="单位" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE4M1" id="TITLE4M1" value="${pd.TITLE4M1}" title="拾" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE4M2" id="TITLE4M2" value="${pd.TITLE4M2}" title="万" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE4M3" id="TITLE4M3" value="${pd.TITLE4M3}" title="千" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE4M4" id="TITLE4M4" value="${pd.TITLE4M4}" title="百" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE4M5" id="TITLE4M5" value="${pd.TITLE4M5}" title="十" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE4M6" id="TITLE4M6" value="${pd.TITLE4M6}" title="元" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE4M7" id="TITLE4M7" value="${pd.TITLE4M7}" title="角" style="width:100%"/></td>   
					              <td style="height:32px;"><input type="text" name="TITLE4M8" id="TITLE4M8" value="${pd.TITLE4M8}" title="分" style="width:100%"/></td>    
					              <td rowspan='4' ><span style="font-size:10px;margin-left:20px">现金</span></td>   
					            </tr> 
					            <tr>  
					              <td style="height:32px"><input type="text" name="TITLE5" id="TITLE5" value="${pd.TITLE5}" title="产品及规格" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE5DW" id="TITLE5DW" value="${pd.TITLE5DW}" title="单位" style="width:100%"/></td> 
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE5SL" id="TITLE5SL" value="${pd.TITLE5SL}" title="数量" style="width:100%"/></td>  
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE5DJ" id="TITLE5DJ" value="${pd.TITLE5DJ}" title="单价" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE5M1" id="TITLE5M1" value="${pd.TITLE5M1}" title="拾" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE5M2" id="TITLE5M2" value="${pd.TITLE5M2}" title="万" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE5M3" id="TITLE5M3" value="${pd.TITLE5M3}" title="千" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE5M4" id="TITLE5M4" value="${pd.TITLE5M4}" title="百" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE5M5" id="TITLE5M5" value="${pd.TITLE5M5}" title="十" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE5M6" id="TITLE5M6" value="${pd.TITLE5M6}" title="元" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE5M7" id="TITLE5M7" value="${pd.TITLE5M7}" title="角" style="width:100%"/></td>   
					              <td style="height:32px;"><input type="text" name="TITLE5M8" id="TITLE5M8" value="${pd.TITLE5M8}" title="分" style="width:100%"/></td>     					                   
					            </tr> 
					            <tr>  
					              <td style="height:32px"><input type="text" name="TITLE6" id="TITLE6" value="${pd.TITLE6}" title="产品及规格" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE6DW" id="TITLE6DW" value="${pd.TITLE6DW}" title="单位" style="width:100%"/></td> 
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE6SL" id="TITLE6SL" value="${pd.TITLE6SL}" title="数量" style="width:100%"/></td>  
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE6DJ" id="TITLE6DJ" value="${pd.TITLE6DJ}" title="单价" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE6M1" id="TITLE6M1" value="${pd.TITLE6M1}" title="拾" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE6M2" id="TITLE6M2" value="${pd.TITLE6M2}" title="万" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE6M3" id="TITLE6M3" value="${pd.TITLE6M3}" title="千" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE6M4" id="TITLE6M4" value="${pd.TITLE6M4}" title="百" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE6M5" id="TITLE6M5" value="${pd.TITLE6M5}" title="十" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE6M6" id="TITLE6M6" value="${pd.TITLE6M6}" title="元" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE6M7" id="TITLE6M7" value="${pd.TITLE6M7}" title="角" style="width:100%"/></td>   
					              <td style="height:32px;"><input type="text" name="TITLE6M8" id="TITLE6M8" value="${pd.TITLE6M8}" title="分" style="width:100%"/></td>     					                  
					            </tr> 
					            <tr>  
					              <td style="height:32px"><input type="text" name="TITLE7" id="TITLE7" value="${pd.TITLE7}" title="产品及规格" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE7DW" id="TITLE7DW" value="${pd.TITLE7DW}" title="单位" style="width:100%"/></td> 
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE7SL" id="TITLE7SL" value="${pd.TITLE7SL}" title="数量" style="width:100%"/></td>  
					              <td style="height:32px;text-align:center"><input type="text" name="TITLE7DJ" id="TITLE7DJ" value="${pd.TITLE7DJ}" title="单价" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE7M1" id="TITLE7M1" value="${pd.TITLE7M1}" title="拾" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE7M2" id="TITLE7M2" value="${pd.TITLE7M2}" title="万" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE7M3" id="TITLE7M3" value="${pd.TITLE7M3}" title="千" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE7M4" id="TITLE7M4" value="${pd.TITLE7M4}" title="百" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE7M5" id="TITLE7M5" value="${pd.TITLE7M5}" title="十" style="width:100%"/></td>  
					              <td style="height:32px"><input type="text" name="TITLE7M6" id="TITLE7M6" value="${pd.TITLE7M6}" title="元" style="width:100%"/></td>  
					              <td style="height:32px;"><input type="text" name="TITLE7M7" id="TITLE7M7" value="${pd.TITLE7M7}" title="角" style="width:100%"/></td>   
					              <td style="height:32px;"><input type="text" name="TITLE7M8" id="TITLE7M8" value="${pd.TITLE7M8}" title="分" style="width:100%"/></td>    			                  
					            </tr>  
					            <tr>  
					              <td colspan='13' style="height:40px" >
					              	<span >金额合计：</span>
					              	<span style=" margin-left:45px;">壹</span>
					              	<span style=" margin-left:30px;">贰</span>
					              	<span style=" margin-left:20px;">叁</span>
					              	<span style=" margin-left:20px;">肆</span>
					              	<span style=" margin-left:30px;">伍</span>
					              	<span style="margin-left:30px;">陆</span>
					              	<span style="margin-left:40px;">柒</span>
					              	<span style=" margin-left:40px;">捌</span>
					              	<span style=" margin-left:80px;">¥：</span><input type="text" name="MONEY" id="MONEY" value="${pd.MONEY}" title="单位" style="width:90px"/></span>
					              </td>  
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
	
	<c:if test="${msg == 'edit'}">
		<a class="btn btn-mini btn-primary" onclick="edit();">保存</a>								
    </c:if>
    	<c:if test="${msg == 'save'}">
		<a class="btn btn-mini btn-primary" onclick="save();">保存打印</a>								
    </c:if>
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
		//保存
		function save(){
			
			//1.保存打印数据
			
		var params = {
						'DANWEI':$("#DANWEI").val(),'DIANHUA':$("#DIANHUA").val(),'RIQI':$("#RIQI").val(),
						//1
						'TITLE1':$("#TITLE1").val(),
						'TITLE1DW':$("#TITLE1DW").val(),
						'TITLE1SL':$("#TITLE1SL").val(),
						'TITLE1DJ':$("#TITLE1DJ").val(),
						'TITLE1M1':$("#TITLE1M1").val(),
						'TITLE1M2':$("#TITLE1M2").val(),
						'TITLE1M3':$("#TITLE1M3").val(),
						'TITLE1M4':$("#TITLE1M4").val(),
						'TITLE1M5':$("#TITLE1M5").val(),
						'TITLE1M6':$("#TITLE1M6").val(),
						'TITLE1M7':$("#TITLE1M7").val(),
						'TITLE1M8':$("#TITLE1M8").val(),
						//2
						'TITLE2':$("#TITLE2").val(),
						'TITLE2DW':$("#TITLE2DW").val(),
						'TITLE2SL':$("#TITLE2SL").val(),
						'TITLE2DJ':$("#TITLE2DJ").val(),
						'TITLE2M1':$("#TITLE2M1").val(),
						'TITLE2M2':$("#TITLE2M2").val(),
						'TITLE2M3':$("#TITLE2M3").val(),
						'TITLE2M4':$("#TITLE2M4").val(),
						'TITLE2M5':$("#TITLE2M5").val(),
						'TITLE2M6':$("#TITLE2M6").val(),
						'TITLE2M7':$("#TITLE2M7").val(),
						'TITLE2M8':$("#TITLE2M8").val(),
						//3
						'TITLE3':$("#TITLE3").val(),
						'TITLE3DW':$("#TITLE3DW").val(),
						'TITLE3SL':$("#TITLE3SL").val(),
						'TITLE3DJ':$("#TITLE3DJ").val(),
						'TITLE3M1':$("#TITLE3M1").val(),
						'TITLE3M2':$("#TITLE3M2").val(),
						'TITLE3M3':$("#TITLE3M3").val(),
						'TITLE3M4':$("#TITLE3M4").val(),
						'TITLE3M5':$("#TITLE3M5").val(),
						'TITLE3M6':$("#TITLE3M6").val(),
						'TITLE3M7':$("#TITLE3M7").val(),
						'TITLE3M8':$("#TITLE3M8").val(),
						//4
						'TITLE4':$("#TITLE4").val(),
						'TITLE4DW':$("#TITLE4DW").val(),
						'TITLE4SL':$("#TITLE4SL").val(),
						'TITLE4DJ':$("#TITLE4DJ").val(),
						'TITLE4M1':$("#TITLE4M1").val(),
						'TITLE4M2':$("#TITLE4M2").val(),
						'TITLE4M3':$("#TITLE4M3").val(),
						'TITLE4M4':$("#TITLE4M4").val(),
						'TITLE4M5':$("#TITLE4M5").val(),
						'TITLE4M6':$("#TITLE4M6").val(),
						'TITLE4M7':$("#TITLE4M7").val(),
						'TITLE4M8':$("#TITLE4M8").val(),
						//5
						'TITLE5':$("#TITLE5").val(),
						'TITLE5DW':$("#TITLE5DW").val(),
						'TITLE5SL':$("#TITLE5SL").val(),
						'TITLE5DJ':$("#TITLE5DJ").val(),
						'TITLE5M1':$("#TITLE5M1").val(),
						'TITLE5M2':$("#TITLE5M2").val(),
						'TITLE5M3':$("#TITLE5M3").val(),
						'TITLE5M4':$("#TITLE5M4").val(),
						'TITLE5M5':$("#TITLE5M5").val(),
						'TITLE5M6':$("#TITLE5M6").val(),
						'TITLE5M7':$("#TITLE5M7").val(),
						'TITLE5M8':$("#TITLE5M8").val(),
						//6
						'TITLE6':$("#TITLE6").val(),
						'TITLE6DW':$("#TITLE6DW").val(),
						'TITLE6SL':$("#TITLE6SL").val(),
						'TITLE6DJ':$("#TITLE6DJ").val(),
						'TITLE6M1':$("#TITLE6M1").val(),
						'TITLE6M2':$("#TITLE6M2").val(),
						'TITLE6M3':$("#TITLE6M3").val(),
						'TITLE6M4':$("#TITLE6M4").val(),
						'TITLE6M5':$("#TITLE6M5").val(),
						'TITLE6M6':$("#TITLE6M6").val(),
						'TITLE6M7':$("#TITLE6M7").val(),
						'TITLE6M8':$("#TITLE6M8").val(),
						//7
						'TITLE7':$("#TITLE7").val(),
						'TITLE7DW':$("#TITLE7DW").val(),
						'TITLE7SL':$("#TITLE7SL").val(),
						'TITLE7DJ':$("#TITLE7DJ").val(),
						'TITLE7M1':$("#TITLE7M1").val(),
						'TITLE7M2':$("#TITLE7M2").val(),
						'TITLE7M3':$("#TITLE7M3").val(),
						'TITLE7M4':$("#TITLE7M4").val(),
						'TITLE7M5':$("#TITLE7M5").val(),
						'TITLE7M6':$("#TITLE7M6").val(),
						'TITLE7M7':$("#TITLE7M7").val(),
						'TITLE7M8':$("#TITLE7M8").val(),
						//
						'MONEY':$("#MONEY").val(),
						
						
			         };
		
		$.ajax({
			type:"POST",
			async:false,
			url:'<%=basePath%>piaoju/save.do',
			data:params,
			success:function(data){
				if("success" == data.result){
					
					var piaojuID = data.piaojuId;
					
					//保存数据成功后打印预览
					 top.jzts();
					 var diag = new top.Dialog();
					 diag.Drag=true;
					 diag.Title ="保存打印";
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
									
				}else if("false" == data.result){
					top.hangge();
					bootbox.dialog({
						message: "<span class='bigger-110'>保存出货单异常!</span>",
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
			}
			
		});
			
		}
		
		function edit(){

			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
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