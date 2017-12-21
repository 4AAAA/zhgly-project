package com.fh.controller.erp.customer;

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
import com.fh.service.erp.attachment.AttachmentManager;
import com.fh.service.erp.company.CompanyManager;
import com.fh.service.erp.customer.CustomerManager;
import com.fh.service.erp.customerimg.CustomerImgManager;
import com.fh.service.erp.device.DeviceManager;
import com.fh.service.erp.device.impl.DeviceService;
import com.fh.service.erp.level.LevelManager;
import com.fh.service.erp.pay.PayManager;
import com.fh.service.erp.plan.PlanManager;
import com.fh.service.erp.remarks.RemarksManager;

/** 
 * 说明：客户管理
 * 创建人：FH Q313596790
 * 创建时间：2017-02-18
 */
@Controller
@RequestMapping(value="/customer")
public class CustomerController extends BaseController {
	
	String menuUrl = "customer/list.do"; //菜单地址(权限用)
	@Resource(name="customerService")
	private CustomerManager customerService;
	@Resource(name="remarksService")
	private RemarksManager remarksService;
	@Resource(name="levelService")
	private LevelManager levelService;
	@Resource(name="deviceService")
	private DeviceManager deviceService;
	@Resource(name="planService")
	private PlanManager planService;
	@Resource(name="payService")
	private PayManager payService;
	@Resource(name="attachmentService")
	private AttachmentManager attachmentService;
	@Resource(name="customerimgService")
	private CustomerImgManager customerimgService;
	@Resource(name="companyService")
	private CompanyManager companyService;
	
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
		pd.put("NAME",CodeRandomUtil.getCode());
		pd.put("CUSTOMER_ID", this.get32UUID());		//主键
		pd.put("CTIME", Tools.date2Str(new Date()));	//建档时间
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名

		//新建客户+订单=>模式		
		if("1".equals(pd.getString("COMPANY_MODEL"))) {
			//新增客户的ID
			String companyId = this.get32UUID();
			//新建客户
			PageData companyPd = new PageData();
			
			
			companyPd.put("CODE",CodeRandomUtil.getCompanyCode());		//编号
			companyPd.put("COMPANY_ID", companyId);		//主键
			companyPd.put("CTIME", Tools.date2Str(new Date()));	//建档时间
			companyPd.put("USERNAME", Jurisdiction.getUsername());	//用户名
			
			//客户名称
			companyPd.put("NAME", pd.getString("WEIXIN"));
			companyPd.put("PHONE", pd.getString("PHONE"));

			//累计金额初始化为0
			companyPd.put("MONEY", "0.0");	
			companyPd.put("INCOME", "0.0");	
			companyPd.put("OUTMONEY", "0.0");	
			companyPd.put("BILLFEE", "0.0");	
			companyPd.put("COUNTBILL", "0");
			companyService.save(companyPd);
			//新的客户关联订单
			pd.put("COMPANY_ID", companyId);
		} 
		
		
		

		if(!"".equals(pd.getString("COMPANY_ID"))) {
			PageData company = companyService.findById(pd);
			pd.put("WEIXIN", company.getString("NAME"));
			pd.put("PHONE", company.getString("PHONE"));
		}

		//金额初始化为0
		if("".equals(pd.getString("QQ"))||pd.getString("QQ").isEmpty()) {
			pd.put("QQ", 0);
		}
		if("".equals(pd.getString("MONEY"))||pd.getString("MONEY").isEmpty()) {
			pd.put("MONEY", 0);
		}
		if("".equals(pd.getString("INCOME"))||pd.getString("INCOME").isEmpty()) {
			pd.put("INCOME", 0);
		}
		if("".equals(pd.getString("OUTMONEY"))||pd.getString("OUTMONEY").isEmpty()) {
			pd.put("OUTMONEY", 0);
		}
		if("".equals(pd.getString("BILLFEE"))||pd.getString("BILLFEE").isEmpty()) {
			pd.put("BILLFEE", 0);
		}
		
		//结算状态初始化为：未结0
		pd.put("BILLSTATUS", "0");
		
		customerService.save(pd);
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
		List<PageData>	varList = customerimgService.list(page);	//列出CustomerImg列表
		
		//当订单下有设备跟踪信息则不能删除
		if(varList.size()>0){
			errInfo = "false";
		}else{
			customerService.delete(pd);
		}
		map.put("result", errInfo);
		
		
//		out.write("success");
//		out.close();
		
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
		
		//通过结算标识判断是否结算操作，添加结算管理的结算时间
		if("COUNTBILL".equals(pd.getString("FINDBILL"))) {
			
			pd.put("BILLTIME", Tools.date2Str(new Date()));	//结算时间
			
		}
		
		
		customerService.edit(pd);
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
				
		//订单类型
		List<PageData>	levelList = levelService.listAll(pd);
		//维修进度
		List<PageData>	planList = planService.listAll(pd);
		//维修员
		List<PageData>	peopleList = remarksService.listAll(pd);
		page.setPd(pd);
		List<PageData>	varList = customerService.list(page);	//列出Customer列表
		mv.setViewName("erp/customer/customer_list");
		mv.addObject("varList", varList);
		mv.addObject("levelList", levelList);
		mv.addObject("planList", planList);
		mv.addObject("peopleList", peopleList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	/**列表-结算账单
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/billList")
	public ModelAndView billList(Page page) throws Exception{
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
				
		//订单类型
		List<PageData>	levelList = levelService.listAll(pd);
		//维修进度
		List<PageData>	planList = planService.listAll(pd);
		//维修员
		List<PageData>	peopleList = remarksService.listAll(pd);
		page.setPd(pd);
		List<PageData>	varList = customerService.billList(page);	//列出Customer列表
		mv.setViewName("erp/customer/bill_list");
		mv.addObject("varList", varList);
		mv.addObject("levelList", levelList);
		mv.addObject("planList", planList);
		mv.addObject("peopleList", peopleList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	/**列表-维修员
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/taskList")
	public ModelAndView listEmp(Page page) throws Exception{
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
		pd.put("USERNAME", "a1");
		
		pd.put("REMARKS1", "d581e40da6eb44878a27e84bfe55a59e");
		
		//订单类型
		List<PageData>	levelList = levelService.listAll(pd);
		//维修进度
		List<PageData>	planList = planService.listAll(pd);
		//维修员
		List<PageData>	peopleList = remarksService.listAll(pd);
		page.setPd(pd);
		List<PageData>	varList = customerService.list(page);	//列出Customer列表
		mv.setViewName("erp/customer/customer_list");
		mv.addObject("varList", varList);
		mv.addObject("levelList", levelList);
		mv.addObject("planList", planList);
		mv.addObject("peopleList", peopleList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	
	
	
	/**列表-关联客户
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/listCompany")
	public ModelAndView listCompany(Page page) throws Exception{
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
		//客户类型
		List<PageData>	levelList = levelService.listAll(pd);
		//维修进度
		List<PageData>	planList = planService.listAll(pd);
		page.setPd(pd);
		List<PageData>	varList = customerService.listCompany(page);	//列出关联客户的订单列表
		mv.setViewName("erp/company/customer_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("levelList", levelList);
		mv.addObject("planList", planList);
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
		List<PageData>	varList = remarksService.listAll(pd);
		List<PageData>	varListL = levelService.listAll(pd);
		//维修设备
		List<PageData> deviceList = deviceService.listAll(pd);
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		//付款方式
		List<PageData> payList = payService.listAll(pd);
		//随机附件
		List<PageData> attachmentList = attachmentService.listAll(pd);
//		Page page = new Page();
//		page.setPd(pd);
//		page.setShowCount(20);
		//客户列表
		List<PageData>	companyList = companyService.listAll(pd);	//列出Customer列表
		
		mv.setViewName("erp/customer/customer_editFaster");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		mv.addObject("varList", varList);
		mv.addObject("varListL", varListL);
		mv.addObject("deviceList",deviceList);
		mv.addObject("planList",planList);
		mv.addObject("payList",payList);
		mv.addObject("companyList",companyList);
		mv.addObject("attachmentList",attachmentList);
		return mv;
	}	
	
	
	/**去新增页面-快捷订单
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goAddFaster")
	public ModelAndView goAddFaster()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		List<PageData>	varList = remarksService.listAll(pd);
		List<PageData>	varListL = levelService.listAll(pd);
		//维修设备
		List<PageData> deviceList = deviceService.listAll(pd);
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		//付款方式
		List<PageData> payList = payService.listAll(pd);
		//随机附件
		List<PageData> attachmentList = attachmentService.listAll(pd);
		Page page = new Page();
		page.setPd(pd);
		//客户列表
		List<PageData>	companyList = companyService.list(page);	//列出Customer列表
		
		mv.setViewName("erp/customer/customer_editFaster");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		mv.addObject("varList", varList);
		mv.addObject("varListL", varListL);
		mv.addObject("deviceList",deviceList);
		mv.addObject("planList",planList);
		mv.addObject("payList",payList);
		mv.addObject("companyList",companyList);
		mv.addObject("attachmentList",attachmentList);
		return mv;
	}	
	
	
	/**去新增页面-关联客户
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goAddCompany")
	public ModelAndView goAddCompany()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		List<PageData>	varList = remarksService.listAll(pd);
		List<PageData>	varListL = levelService.listAll(pd);
		//维修设备
		List<PageData> deviceList = deviceService.listAll(pd);
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		//付款方式
		List<PageData> payList = payService.listAll(pd);
		//随机附件
		List<PageData> attachmentList = attachmentService.listAll(pd);
		mv.setViewName("erp/company/customer_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		mv.addObject("varList", varList);
		mv.addObject("varListL", varListL);
		mv.addObject("deviceList",deviceList);
		mv.addObject("planList",planList);
		mv.addObject("payList",payList);
		mv.addObject("attachmentList",attachmentList);
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
		pd = customerService.findById(pd);	//根据ID读取
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		
		Page page = new Page();
		page.setPd(pd);
		List<PageData>	varList = remarksService.listAll(pd);
		List<PageData>	varListL = levelService.listAll(pd);
		//维修设备
		List<PageData>	deviceList = deviceService.listAll(pd);
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		//付款方式
		List<PageData> payList = payService.listAll(pd);
		//随机附件
		List<PageData> attachmentList = attachmentService.listAll(pd);
		//客户列表
		List<PageData>	companyList = companyService.listAll(pd);	//列出Customer列表
		
		mv.setViewName("erp/customer/customer_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("varList", varList);
		mv.addObject("varListL", varListL);
		mv.addObject("deviceList",deviceList);
		mv.addObject("planList",planList);
		mv.addObject("payList",payList);
		mv.addObject("attachmentList",attachmentList);
		mv.addObject("companyList",companyList);
		return mv;
	}	
	
	 /**去结算页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goCount")
	public ModelAndView goCount()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = customerService.findById(pd);	//根据ID读取
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		
		Page page = new Page();
		page.setPd(pd);
		List<PageData>	varList = remarksService.listAll(pd);
		List<PageData>	varListL = levelService.listAll(pd);
		//维修设备
		List<PageData>	deviceList = deviceService.listAll(pd);
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		//付款方式
		List<PageData> payList = payService.listAll(pd);
		//随机附件
		List<PageData> attachmentList = attachmentService.listAll(pd);
		//客户列表
		List<PageData>	companyList = companyService.list(page);	//列出Customer列表
		
		mv.setViewName("erp/customer/customer_count");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("varList", varList);
		mv.addObject("varListL", varListL);
		mv.addObject("deviceList",deviceList);
		mv.addObject("planList",planList);
		mv.addObject("payList",payList);
		mv.addObject("attachmentList",attachmentList);
		mv.addObject("companyList",companyList);
		return mv;
	}	
	
	
	
	
	
	 /**去修改页面-关联客户
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goEditCompany")
	public ModelAndView goEditCompany()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = customerService.findById(pd);	//根据ID读取
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		List<PageData>	varList = remarksService.listAll(pd);
		List<PageData>	varListL = levelService.listAll(pd);
		//维修设备
		List<PageData>	deviceList = deviceService.listAll(pd);
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		//付款方式
		List<PageData> payList = payService.listAll(pd);
		//随机附件
		List<PageData> attachmentList = attachmentService.listAll(pd);
		mv.setViewName("erp/company/customer_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("varList", varList);
		mv.addObject("varListL", varListL);
		mv.addObject("deviceList",deviceList);
		mv.addObject("planList",planList);
		mv.addObject("payList",payList);
		mv.addObject("attachmentList",attachmentList);
		return mv;
	}	
	
	
	 /**去结算页面-关联客户
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goCountCompany")
	public ModelAndView goCountCompany()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = customerService.findById(pd);	//根据ID读取
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		List<PageData>	varList = remarksService.listAll(pd);
		List<PageData>	varListL = levelService.listAll(pd);
		//维修设备
		List<PageData>	deviceList = deviceService.listAll(pd);
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		//付款方式
		List<PageData> payList = payService.listAll(pd);
		//随机附件
		List<PageData> attachmentList = attachmentService.listAll(pd);
		mv.setViewName("erp/company/customer_count");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("varList", varList);
		mv.addObject("varListL", varListL);
		mv.addObject("deviceList",deviceList);
		mv.addObject("planList",planList);
		mv.addObject("payList",payList);
		mv.addObject("attachmentList",attachmentList);
		return mv;
	}	
	
	
	 /**查看页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goView")
	public ModelAndView goView()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = customerService.findById(pd);	//根据ID读取
		List<PageData>	varList = remarksService.listAll(pd);
		List<PageData>	varListL = levelService.listAll(pd);
		List<PageData>	planList = planService.listAll(pd);
		mv.setViewName("erp/customer/customer_view");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("varList", varList);
		mv.addObject("varListL", varListL);
		mv.addObject("planList", planList);
		return mv;
	}
	
	 /**查看页面-关联客户
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goViewCompany")
	public ModelAndView goViewCompany()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = customerService.findById(pd);	//根据ID读取
		List<PageData>	varList = remarksService.listAll(pd);
		List<PageData>	varListL = levelService.listAll(pd);
		List<PageData>	planList = planService.listAll(pd);
		mv.setViewName("erp/company/customer_view");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("varList", varList);
		mv.addObject("varListL", varListL);
		mv.addObject("planList", planList);
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
			customerService.deleteAll(ArrayDATA_IDS);
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
		List<PageData> varOList = customerService.listAll(pd);
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
