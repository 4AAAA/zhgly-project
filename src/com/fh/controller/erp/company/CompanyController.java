package com.fh.controller.erp.company;

import java.io.PrintWriter;
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
import com.fh.util.AppUtil;
import com.fh.util.CodeRandomUtil;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.Jurisdiction;
import com.fh.util.Tools;
import com.fh.service.erp.company.CompanyManager;
import com.fh.service.erp.companytype.CompanyTypeManager;
import com.fh.service.erp.customer.CustomerManager;
import com.fh.service.erp.level.LevelManager;
import com.fh.service.erp.remarks.RemarksManager;

/** 
 * 说明：客户管理
 * 创建人：liuyw	
 * 创建时间：2017-12-06
 */
@Controller
@RequestMapping(value="/company")
public class CompanyController extends BaseController {
	
	String menuUrl = "company/list.do"; //菜单地址(权限用)
	@Resource(name="companyService")
	private CompanyManager companyService;
	@Resource(name="companyTypeService")
	private CompanyTypeManager companyTypeService;
	@Resource(name="customerService")
	private CustomerManager customerService;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增Customer");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();		
		pd.put("CODE",CodeRandomUtil.getCompanyCode());		//编号
		pd.put("COMPANY_ID", this.get32UUID());		//主键
		pd.put("CTIME", Tools.date2Str(new Date()));	//建档时间
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		//累计金额初始化为0
		pd.put("MONEY", "0.0");	
		pd.put("INCOME", "0.0");	
		pd.put("OUTMONEY", "0.0");	
		pd.put("BILLFEE", "0.0");	
		pd.put("COUNTBILL", "0");
		companyService.save(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"删除Customer");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		
		Map<String,String> map = new HashMap<String,String>();
		String errInfo = "success";
		
		PageData pd = new PageData();
		pd = this.getPageData();
		
		Page page = new Page();
		page.setPd(pd);
		
		List<PageData>	varList = customerService.listCompany(page);	//列出CustomerImg列表
		//当客户下有订单信息则不能删除
		if(varList.size()>0){
			errInfo = "false";
		}else{
			companyService.delete(pd);
		}
		map.put("result", errInfo);
				
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**随机抽取
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/random")
	@ResponseBody
	public Object random() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"随机抽取一位客户");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		
		Map<String,String> map = new HashMap<String,String>();
		String errInfo = "false";
				
		PageData pds = new PageData();
		pds.put("USERNAME", Jurisdiction.getUsername());
		
		
		List<PageData>	varList1 = companyService.listAll(pds);	//列出Customer列表
		
		//随机生成数组下标、
		int num = (int)(Math.random() * 1000);
	
		while (num>varList1.size()-1) {
		    if (num<=varList1.size()-1) {
		break;
		}
		     num = (int)(Math.random() * 1000);	
		}
		
		map.put("result", errInfo);
		
		System.out.println("卧槽------是我是我是我是我-----》"+varList1.get(num).getString("NAME"));
		
		map.put("name", varList1.get(num).getString("NAME"));
		
		return AppUtil.returnObject(new PageData(), map);
	}
	
	
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改Customer");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		companyService.edit(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"列表Customer");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		String lastLoginStart = pd.getString("lastStart");	//开始时间
		String lastLoginEnd = pd.getString("lastEnd");		//结束时间
		if(lastLoginStart != null && !"".equals(lastLoginStart)){
			pd.put("lastStart", lastLoginStart+" 00:00:00");
		}
		if(lastLoginEnd != null && !"".equals(lastLoginEnd)){
			pd.put("lastEnd", lastLoginEnd+" 00:00:00");
		} 
		pd.put("USERNAME", Jurisdiction.getUsername());
		List<PageData>	companyTypeList = companyTypeService.listAll(pd);
		page.setPd(pd);
		List<PageData>	varList = companyService.list(page);	//列出Customer列表
		mv.setViewName("erp/company/company_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("companyTypeList", companyTypeList);
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
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		List<PageData>	companyTypeList = companyTypeService.listAll(pd);
		mv.setViewName("erp/company/company_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		mv.addObject("companyTypeList", companyTypeList);
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
		pd = companyService.findById(pd);	//根据ID读取
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		List<PageData>	companyTypeList = companyTypeService.listAll(pd);
		mv.setViewName("erp/company/company_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("companyTypeList", companyTypeList);
		return mv;
	}	
	
	 /**查看页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goView")
	public ModelAndView goView()throws Exception{
		ModelAndView mv = this.getModelAndView();
		//查询客户订单份数
		PageData pds = new PageData();
		pds = this.getPageData();
		//得到客户信息
		PageData pd = new PageData();
		pd = companyService.findById(pds);	//根据ID读取
		//订单信息统计

		
		List<PageData>	varList = customerService.listCompanyAll(pds);	//列出该客户的所有订单
		pd.put("COUNTBILL", varList.size());
		//累计订单金额
		double money = 0;
		//累计实收金额
		double income = 0;
		//累计欠费
		double outmoney = 0;
		//累计利润
		double billfee = 0;
		//累计成本
		double baseMoney = 0;
		for(PageData a : varList) {
			 money= money+ (Double)a.get("MONEY");
			 income= income+(Double)a.get("INCOME");
			 outmoney=outmoney+ (Double)a.get("OUTMONEY");
			 billfee=billfee+ (Double)a.get("BILLFEE");
			 baseMoney = baseMoney + (Double)a.get("QQ");
		}
		
		pd.put("MONEY", money);
		pd.put("INCOME", income);
		pd.put("OUTMONEY", outmoney);
		pd.put("BILLFEE", billfee);
		pd.put("BASEMONEY", baseMoney);
		companyService.edit(pd);
		
		//统计后重新获取值
		pd = companyService.findById(pd);
		
		List<PageData>	varListL = companyTypeService.listAll(pd);
		mv.setViewName("erp/company/company_view");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("varListL", varListL);
		return mv;
	}
	
	 /**批量删除
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"批量删除Customer");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			companyService.deleteAll(ArrayDATA_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	
	 /**导出到excel
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"导出Customer到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("姓名");	//1
		titles.add("年龄");	//2
		titles.add("手机");	//3
		titles.add("地址");	//4
		titles.add("QQ");	//5
		titles.add("微信");	//6
		titles.add("建档时间");	//7
		titles.add("消费金额");	//8
		titles.add("级别");	//9
		titles.add("备注1");	//10
		titles.add("备注2");	//11
		dataMap.put("titles", titles);
		pd.put("USERNAME", Jurisdiction.getUsername());
		List<PageData> varOList = companyService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("NAME"));	    //1
			vpd.put("var2", varOList.get(i).getString("AGE"));	    //2
			vpd.put("var3", varOList.get(i).get("PHONE").toString());	//3
			vpd.put("var4", varOList.get(i).getString("ADDRESS"));	    //4
			vpd.put("var5", varOList.get(i).get("QQ").toString());	//5
			vpd.put("var6", varOList.get(i).getString("WEIXIN"));	    //6
			vpd.put("var7", varOList.get(i).getString("CTIME"));	    //7
			vpd.put("var8", varOList.get(i).get("MONEY").toString());	//8
			vpd.put("var9", varOList.get(i).getString("LEVEL"));	    //9
			vpd.put("var10", varOList.get(i).getString("REMARKS1"));	    //10
			vpd.put("var11", varOList.get(i).getString("REMARKS2"));	    //11
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
