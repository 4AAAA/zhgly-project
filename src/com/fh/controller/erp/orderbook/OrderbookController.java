package com.fh.controller.erp.orderbook;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
import com.fh.util.AppUtil;
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.fh.util.Jurisdiction;
import com.fh.service.erp.degree.DegreeManager;
import com.fh.service.erp.goods.GoodsManager;
import com.fh.service.erp.material.MaterialManager;
import com.fh.service.erp.orderbook.OrderbookManager;
import com.fh.service.erp.pay.PayManager;
import com.fh.service.erp.spbrand.SpbrandManager;
import com.fh.service.erp.sptype.SptypeManager;
import com.fh.service.erp.spunit.SpunitManager;
import com.fh.service.information.pictures.PicturesManager;

/** 
 * 说明：订单记事本
 * 创建人：FH Q313596790
 * 创建时间：2016-09-09
 */
@Controller
@RequestMapping(value="/orderbook")
public class OrderbookController extends BaseController {
	
	String menuUrl = "orderbook/list.do"; //菜单地址(权限用)
	@Resource(name="orderbookService")
	private OrderbookManager orderbookService;
	@Resource(name="picturesService")
	private PicturesManager picturesService;
	@Resource(name="spbrandService")
	private SpbrandManager spbrandService;
	@Resource(name="sptypeService")
	private SptypeManager sptypeService;
	@Resource(name="spunitService")
	private SpunitManager spunitService;
	@Resource(name="materialService")
	private MaterialManager materialService;
	@Resource(name="degreeService")
	private DegreeManager degreeService;
	
	//支付方式
	@Resource(name="payService")
	private PayManager payService;
	
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增Goods");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("GOODS_ID", this.get32UUID());	//主键 
//		pd.put("ZCOUNT", pd.get("INCOUNT"));					//库存
		pd.put("OUTCOUNT", 0);					//出库数量
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		pd.put("CTIME", Tools.date2Str(new Date()));	//创建时间
		orderbookService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**删除
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	@ResponseBody
	public Object delete() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"删除Goods");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null ;} //校验权限
		Map<String,String> map = new HashMap<String,String>();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		orderbookService.delete(pd);
	
		String errInfo = "success";
		
		map.put("result", errInfo);
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改Goods");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		//修改了入库数量更新库存量
//		String a1 = "0";
//		String a2 = "0";
//		if(pd.get("INCOUNT")!=null && !"".equals(pd.get("INCOUNT"))) {
//			a1 = pd.get("INCOUNT").toString();
//		}
//		
//		if(pd.get("OUTCOUNT")!=null && !"".equals(pd.get("OUTCOUNT"))) {
//			a2 = pd.get("OUTCOUNT").toString();
//		}
//		pd.put("OUTCOUNT", a2);
//
//		int zs = Integer.parseInt(a1)-Integer.parseInt(a2);
//		pd.put("ZCOUNT", zs);
		
		orderbookService.edit(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"列表Goods");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		pd.put("USERNAME", "admin".equals(Jurisdiction.getUsername())?"":Jurisdiction.getUsername());
		
		//进货总价
		PageData feeSumData =  orderbookService.inFeeSum(pd);
		String feeSum = "0";
		if(feeSumData!=null) {
			feeSum = feeSumData.get("INFEE").toString();
		}
		
		System.out.println("我要计算总进货价===========>"+feeSum);
		
		
		page.setPd(pd);
		List<PageData>	varList = orderbookService.list(page);	//列出Goods列表
		List<PageData> spbrandList = spbrandService.listAll(Jurisdiction.getUsername()); 	//品牌列表
		List<PageData> sptypeList = sptypeService.listAll(Jurisdiction.getUsername()); 		//类别列表
		List<PageData> spunitList = spunitService.listAll(Jurisdiction.getUsername()); 		//计量单位列表
		List<PageData> materialList = materialService.listAll(Jurisdiction.getUsername()); 		//使用耗材
		List<PageData> degreeList = degreeService.listAll(Jurisdiction.getUsername()); 		//成色
		
		
		//付款方式
		List<PageData> payList = payService.listAll(pd);
		
		mv.setViewName("erp/orderbook/orderbook_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("spbrandList", spbrandList);
		mv.addObject("sptypeList", sptypeList);
		mv.addObject("spunitList", spunitList);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		mv.addObject("materialList", materialList);
		mv.addObject("degreeList", degreeList);
		
		mv.addObject("payList", payList);
		mv.addObject("feeSum", feeSum);
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
		List<PageData> spbrandList = spbrandService.listAll(Jurisdiction.getUsername()); 	//品牌列表
		List<PageData> sptypeList = sptypeService.listAll(Jurisdiction.getUsername()); 		//类别列表
		List<PageData> spunitList = spunitService.listAll(Jurisdiction.getUsername()); 		//计量单位列表
		List<PageData> materialList = materialService.listAll(Jurisdiction.getUsername()); 		//使用耗材
		List<PageData> degreeList = degreeService.listAll(Jurisdiction.getUsername()); 		//成色
		
		//付款方式
		pd.put("USERNAME", Jurisdiction.getUsername());	
		List<PageData> payList = payService.listAll(pd);
		
		mv.setViewName("erp/orderbook/orderbook_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		mv.addObject("spbrandList", spbrandList);
		mv.addObject("sptypeList", sptypeList);
		mv.addObject("spunitList", spunitList);
		mv.addObject("materialList", materialList);
		mv.addObject("degreeList", degreeList);
		
		mv.addObject("payList", payList);
		return mv;
	}	
	
	 /**去修改页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = orderbookService.findById(pd);	//根据ID读取
		List<PageData> spbrandList = spbrandService.listAll(Jurisdiction.getUsername()); 	//品牌列表
		List<PageData> sptypeList = sptypeService.listAll(Jurisdiction.getUsername()); 		//类别列表
		List<PageData> spunitList = spunitService.listAll(Jurisdiction.getUsername()); 		//计量单位列表
		List<PageData> materialList = materialService.listAll(Jurisdiction.getUsername()); 		//使用耗材
		List<PageData> degreeList = degreeService.listAll(Jurisdiction.getUsername()); 		//成色
		
		//付款方式
		pd.put("USERNAME", Jurisdiction.getUsername());	
		List<PageData> payList = payService.listAll(pd);
		
		mv.setViewName("erp/orderbook/orderbook_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("spbrandList", spbrandList);
		mv.addObject("sptypeList", sptypeList);
		mv.addObject("spunitList", spunitList);
		mv.addObject("materialList", materialList);
		mv.addObject("degreeList", degreeList);
		mv.addObject("payList", payList);
		return mv;
	}
	
	 /**去查看商品页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goView")
	public ModelAndView goView()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = orderbookService.findByIdToCha(pd);	//根据ID读取
		mv.setViewName("erp/goods/goods_view");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		return mv;
	}	
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
