package com.fh.controller.erp.outku;

import java.io.PrintWriter;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.AppUtil;
import com.fh.util.Jurisdiction;
import com.fh.util.Tools;
import com.fh.service.erp.goods.GoodsManager;
import com.fh.service.erp.level.LevelManager;
import com.fh.service.erp.outku.OutKuManager;
import com.fh.service.erp.receiver.ReceiverManager;
import com.fh.service.erp.remarks.RemarksManager;

/** 
 * 说明：商品出库
 * 创建人：FH Q313596790
 * 创建时间：2017-02-22
 */
@Controller
@RequestMapping(value="/outku")
public class OutKuController extends BaseController {
	
	String menuUrl = "outku/list.do"; //菜单地址(权限用)
	@Resource(name="outkuService")
	private OutKuManager outkuService;
	@Resource(name="goodsService")
	private GoodsManager goodsService;
	@Resource(name="receiverService")
	private ReceiverManager receiverService;
	@Resource(name="levelService")
	private LevelManager levelService;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增OutKu");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		PageData goodpd = new PageData();
		goodpd = goodsService.findById(pd);
		
		pd.put("OUTKU_ID", this.get32UUID());				//主键
		pd.put("OUTTIME", Tools.date2Str(new Date()));		//出库时间
		pd.put("GOODS_NAME", goodpd.getString("TITLE"));	//商品名称
		pd.put("SN", goodpd.getString("DESCRIPTION"));	//SN号
		pd.put("USERNAME", Jurisdiction.getUsername());		//用户名
		pd.put("INCOUNT", pd.getString("OUTCOUNT"));		//数量
		pd.put("PRICE", pd.getString("OUTFEE"));		//出货价
		
		//初始化退货管理数据-退货量，退货价，退货总价
		pd.put("BACKCOUNT", 0);
		pd.put("BACKPRICE", 0);
		pd.put("BACKALLPRICE", 0);
		
		outkuService.save(pd);
		
		//更新商品信息（消减库存，出库数量累加）
		
		//库存-出库数量=库存量
		int zs = Integer.parseInt(goodpd.get("ZCOUNT").toString())-Integer.parseInt(pd.get("OUTCOUNT").toString());
		//出库数量 = 出库数量+新出库
		int out = Integer.parseInt(goodpd.get("OUTCOUNT").toString())+Integer.parseInt(pd.get("OUTCOUNT").toString());
		goodpd.put("ZCOUNT", zs);
		goodpd.put("OUTCOUNT", out);
		goodsService.editKuCun(goodpd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**删除
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"删除OutKu");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		outkuService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改结算状态
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改OutKu");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		outkuService.editBill(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表OutKu");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		String lastStart = pd.getString("lastStart");	//开始时间
		String lastEnd = pd.getString("lastEnd");		//结束时间
		if(lastStart != null && !"".equals(lastStart)){
			pd.put("lastStart", lastStart+" 00:00:00");
		}
		if(lastEnd != null && !"".equals(lastEnd)){
			pd.put("lastEnd", lastEnd+" 00:00:00");
		} 
		pd.put("USERNAME", Jurisdiction.getUsername());
		PageData jinepd = outkuService.priceSum(pd);	//总金额
		String zprice = "0";
		if(null != jinepd){
			zprice = jinepd.get("ZPRICE").toString();
		}
		page.setPd(pd);
		List<PageData>	varList = outkuService.list(page);	//列出OutKu列表
		
		//收款人
		List<PageData>	receiverList = receiverService.listAll(pd);
		
		//结算状态
		List<PageData>	billList = levelService.listAll(pd);
		
		mv.setViewName("erp/outku/outku_list");
		mv.addObject("varList", varList);
		mv.addObject("receiverList", receiverList);
		mv.addObject("billList", billList);
		mv.addObject("pd", pd);
		mv.addObject("zprice", zprice);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	/**商品销售报表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/salesReport")
	public ModelAndView salesReport(Page page) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"销售报表");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		String lastStart = pd.getString("lastStart");	//开始时间
		String lastEnd = pd.getString("lastEnd");		//结束时间
		if(lastStart != null && !"".equals(lastStart)){
			pd.put("lastStart", lastStart+" 00:00:00");
		}
		if(lastEnd != null && !"".equals(lastEnd)){
			pd.put("lastEnd", lastEnd+" 00:00:00");
		} 
		pd.put("USERNAME", Jurisdiction.getUsername());
		page.setPd(pd);
		List<PageData>	varList = outkuService.salesReport(page);
		
		//销售总利润
		double allIncome = 0;
		if(varList!=null) {
			for(PageData aa : varList) {
				 if(aa.get("ZINCOME")!=null) {
					double income = (double)aa.get("ZINCOME");					
					allIncome = allIncome + income;
				 }
			}
		}
		
		
		mv.setViewName("erp/outku/salesReport");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("allIncome", allIncome);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	/**去新增页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("USERNAME", Jurisdiction.getUsername());
		List<PageData> goodsList = goodsService.listAll(pd);
		mv.setViewName("erp/outku/outku_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		mv.addObject("goodsList", goodsList);
		return mv;
	}	
	
	/**商品列表操作出库页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goOut")
	public ModelAndView goOut()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		pd = goodsService.findById(pd);	//根据ID读取商品
		
		//收款人
		List<PageData>	receiverList = receiverService.listAll(pd);
		
		//结算状态
		List<PageData>	billList = levelService.listAll(pd);
		
		pd.put("USERNAME", Jurisdiction.getUsername());
		List<PageData> goodsList = goodsService.listAll(pd);
		mv.setViewName("erp/outku/outku_edit2");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		mv.addObject("goodsList", goodsList);
		mv.addObject("receiverList", receiverList);
		mv.addObject("billList", billList);
		return mv;
	}	
	
	
	 /**去修改结算状态页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = outkuService.findById(pd);	//根据ID读取
		
		//结算状态
		List<PageData>	billList = levelService.listAll(pd);
		
		mv.setViewName("erp/outku/outku_bill");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("billList", billList);
		return mv;
	}	
	
	/**
	 * 异步获取单价
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/getPrice")
	@ResponseBody
	public Object getPrice() throws Exception{
		
		Map<String,Object> map = new HashMap<String,Object>();
		PageData pd = new PageData();
		pd = this.getPageData();
	
		
		pd = goodsService.findById(pd);	//根据ID读取
		//出货价
		map.put("price", pd.get("OUTFEE")==null?"0":pd.get("OUTFEE").toString());
		//进货价
		map.put("inprice", pd.get("INFEE")==null?"0":pd.get("INFEE").toString());
		//库存量
		map.put("zcount", pd.get("ZCOUNT")==null?"0":pd.get("ZCOUNT").toString());
		return AppUtil.returnObject(new PageData(), map);
	}
	
	 /**去退货页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goBack")
	public ModelAndView goBack()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = outkuService.findById(pd);	//根据ID读取
//		List<PageData> spbrandList = spbrandService.listAll(Jurisdiction.getUsername()); 	//品牌列表
//		List<PageData> sptypeList = sptypeService.listAll(Jurisdiction.getUsername()); 		//类别列表
//		List<PageData> spunitList = spunitService.listAll(Jurisdiction.getUsername()); 		//计量单位列表
//		List<PageData> materialList = materialService.listAll(Jurisdiction.getUsername()); 		//使用耗材
//		List<PageData> degreeList = degreeService.listAll(Jurisdiction.getUsername()); 		//成色
		
		mv.setViewName("erp/outku/backGoods_edit");
		mv.addObject("msg", "editBack");
		mv.addObject("pd", pd);
//		mv.addObject("spbrandList", spbrandList);
//		mv.addObject("sptypeList", sptypeList);
//		mv.addObject("spunitList", spunitList);
//		mv.addObject("materialList", materialList);
//		mv.addObject("degreeList", degreeList);
		return mv;
	}
	
	/**修改退货信息
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/editBack")
	public ModelAndView editBack() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改出库表退货信息");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		//获取前台的数据
		pd = this.getPageData();
		
		//获取出库表的数据
		PageData outku = outkuService.findById(pd);
		//获取商品表
		PageData goods = goodsService.findById(pd);
		
		
		//重新计算利润
		
		//前台-退货总价
		BigDecimal tuihuozongjia = pd.get("BACKALLPRICE")==null?BigDecimal.ZERO:new BigDecimal(pd.get("BACKALLPRICE").toString());
		//前台-退货量
		BigDecimal tuihuoliang = pd.get("NEWBACKCOUNT")==null?BigDecimal.ZERO:new BigDecimal(pd.get("NEWBACKCOUNT").toString());
		//进货价
		BigDecimal jinhuojia = goods.get("INFEE")==null?BigDecimal.ZERO:new BigDecimal(goods.get("INFEE").toString());
		
		//数据库-退货总价 
		BigDecimal thzj = outku.get("BACKALLPRICE")==null?BigDecimal.ZERO:new BigDecimal(outku.get("BACKALLPRICE").toString());
		//数据库-退货量
		BigDecimal thl = outku.get("BACKCOUNT")==null?BigDecimal.ZERO:new BigDecimal(outku.get("BACKCOUNT").toString());
		//数据库-利润
		BigDecimal lr = outku.get("INCOME")==null?BigDecimal.ZERO:new BigDecimal(outku.get("INCOME").toString());
		
		/**
		 * 重新计算：退货总价，退货量，利润
		 */
		//退货总价
		pd.put("BACKALLPRICE", tuihuozongjia.add(thzj).toString());
		//退货量
		pd.put("BACKCOUNT", tuihuoliang.add(thl).toString());
		//利润（利润=原利润-【退货总价-退货量*进货价】）
		pd.put("INCOME", (lr.subtract(tuihuozongjia.subtract(tuihuoliang.multiply(jinhuojia)))).toString());
		
		/**
		 * 修改商品的退货数量
		 */
		
		//修改了入库数量更新库存量(库存量=入库数量-出库数量+退货数量)
		String a1 = "0";
		String a2 = "0";
		int a3 = 0;
		if(goods.get("INCOUNT")!=null && !"".equals(goods.get("INCOUNT"))) {
			a1 = goods.get("INCOUNT").toString();
		}
		
		if(goods.get("OUTCOUNT")!=null && !"".equals(goods.get("OUTCOUNT"))) {
			a2 = goods.get("OUTCOUNT").toString();
		}
		

		if(goods.get("BACKCOUNT")!=null && !"".equals(goods.get("BACKCOUNT"))) {			
			a3 = Integer.parseInt(goods.get("BACKCOUNT").toString());
			//操作退货时，退货数量累加
			if(pd.get("NEWBACKCOUNT")!=null && !"".equals(pd.get("NEWBACKCOUNT"))) {	
				a3 = a3+Integer.parseInt(pd.get("NEWBACKCOUNT").toString());
			}
		}
		goods.put("BACKCOUNT", a3);
		
		int zs = Integer.parseInt(a1)-Integer.parseInt(a2)+a3;
		goods.put("ZCOUNT", zs);
		
		
		goodsService.edit(goods);
		
		
		//修改了入库数量更新库存量(库存量=入库数量-出库数量+退货数量)
//		String a1 = "0";
//		String a2 = "0";
//		int a3 = 0;
//		if(pd.get("INCOUNT")!=null && !"".equals(pd.get("INCOUNT"))) {
//			a1 = pd.get("INCOUNT").toString();
//		}
//		
//		if(pd.get("OUTCOUNT")!=null && !"".equals(pd.get("OUTCOUNT"))) {
//			a2 = pd.get("OUTCOUNT").toString();
//		}
//		pd.put("OUTCOUNT", a2);
//
//		if(pd.get("BACKCOUNT")!=null && !"".equals(pd.get("BACKCOUNT"))) {			
//			a3 = Integer.parseInt(pd.get("BACKCOUNT").toString());
//			//操作退货时，退货数量累加
//			if(pd.get("NEWBACKCOUNT")!=null && !"".equals(pd.get("NEWBACKCOUNT"))) {	
//				a3 = a3+Integer.parseInt(pd.get("NEWBACKCOUNT").toString());
//			}
//		}
//		pd.put("BACKCOUNT", a3);
//		
//		int zs = Integer.parseInt(a1)-Integer.parseInt(a2)+a3;
//		pd.put("ZCOUNT", zs);
		
		
		outkuService.editBack(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	
	
	
	
	 /**导出到excel
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"导出OutKu到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("商品ID");	//1
		titles.add("数量");	//2
		titles.add("单价");	//3
		titles.add("总价");	//4
		titles.add("出库时间");	//5
		titles.add("商品名称");	//6
		titles.add("用户名");	//7
		dataMap.put("titles", titles);
		List<PageData> varOList = outkuService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("GOODS_ID"));	    //1
			vpd.put("var2", varOList.get(i).get("INCOUNT").toString());	//2
			vpd.put("var3", varOList.get(i).get("PRICE").toString());	//3
			vpd.put("var4", varOList.get(i).get("ZPRICE").toString());	//4
			vpd.put("var5", varOList.get(i).getString("OUTTIME"));	    //5
			vpd.put("var6", varOList.get(i).getString("GOODS_NAME"));	    //6
			vpd.put("var7", varOList.get(i).getString("USERNAME"));	    //7
			varList.add(vpd);
		}
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();
		mv = new ModelAndView(erv,dataMap);
		return mv;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
