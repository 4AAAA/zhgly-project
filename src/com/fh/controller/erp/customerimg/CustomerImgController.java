package com.fh.controller.erp.customerimg;

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
import com.fh.service.erp.customerimg.CustomerImgManager;
import com.fh.service.erp.plan.PlanManager;

/** 
 * 说明：客户跟踪描述
 * 创建人：FH Q313596790
 * 创建时间：2017-03-04
 */
@Controller
@RequestMapping(value="/customerimg")
public class CustomerImgController extends BaseController {
	
	String menuUrl = "customerimg/list.do"; //菜单地址(权限用)
	@Resource(name="customerimgService")
	private CustomerImgManager customerimgService;
	@Resource(name="planService")
	private PlanManager planService;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增CustomerImg");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("CUSTOMERIMG_ID", this.get32UUID());	//主键
		pd.put("CTIME", Tools.date2Str(new Date()));	//记录日期
		//设备编号
		pd.put("CODE",CodeRandomUtil.getDeviceCode());
		customerimgService.save(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"删除CustomerImg");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		customerimgService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改CustomerImg");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		customerimgService.edit(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"列表CustomerImg");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		page.setPd(pd);
		List<PageData>	varList = customerimgService.list(page);	//列出CustomerImg列表
		mv.setViewName("erp/customerimg/customerimg_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
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
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		
		mv.setViewName("erp/customerimg/customerimg_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		mv.addObject("planList",planList);
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
		pd = customerimgService.findById(pd);	//根据ID读取
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		
		mv.setViewName("erp/customerimg/customerimg_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("planList",planList);
		return mv;
	}	
	
	 /**查看详情
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/viewC")
	public ModelAndView viewC()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = customerimgService.findById(pd);	//根据ID读取
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		//维修进度
		List<PageData> planList = planService.listAll(pd);
		
		mv.setViewName("erp/customerimg/customerimg_view");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		mv.addObject("planList",planList);
		return mv;
	}
	
	 /**批量删除
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"批量删除CustomerImg");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			customerimgService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, Jurisdiction.getUsername()+"导出CustomerImg到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("USERNAME", Jurisdiction.getUsername());	//用户名
		Page page = new Page();
		page.setPd(pd);
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		//表头
		titles.add("序号");
		titles.add("机器编码");
		titles.add("主板");
		titles.add("显卡");
		titles.add("光存储");
		titles.add("CPU");
		titles.add("内存");
		titles.add("硬盘");
		titles.add("声卡");
		titles.add("显示器");
		titles.add("鼠标键盘");
		titles.add("散热器");
		titles.add("打印机");
		titles.add("备注1");
		titles.add("备注2");
		
		dataMap.put("titles", titles);
//		List<PageData> varOList = customerimgService.listAll(pd);
		List<PageData>	varOList = customerimgService.list(page);	//列出CustomerImg列表
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", String.valueOf(i+1));	    //1
			vpd.put("var2", varOList.get(i).getString("CODE")==null?"":varOList.get(i).getString("CODE"));	    //2
			vpd.put("var3", varOList.get(i).getString("MAINBOARD")==null?"":varOList.get(i).getString("MAINBOARD"));	    //3
			vpd.put("var4", varOList.get(i).getString("DISPLAYCARD")==null?"":varOList.get(i).getString("DISPLAYCARD"));	    //4
			vpd.put("var5", varOList.get(i).getString("STORAGE")==null?"":varOList.get(i).getString("STORAGE"));	    //5
			vpd.put("var6", varOList.get(i).getString("CPU")==null?"":varOList.get(i).getString("CPU"));	    //6
			vpd.put("var7", varOList.get(i).getString("MEMORY")==null?"":varOList.get(i).getString("MEMORY"));	    //7
			vpd.put("var8", varOList.get(i).getString("DISK")==null?"":varOList.get(i).getString("DISK"));	    //8
			vpd.put("var9", varOList.get(i).getString("VOIDCARD")==null?"":varOList.get(i).getString("VOIDCARD"));	    //9
			vpd.put("var10", varOList.get(i).getString("DISPLAYER")==null?"":varOList.get(i).getString("DISPLAYER"));	    //10
			vpd.put("var11", varOList.get(i).getString("KEYBOARD")==null?"":varOList.get(i).getString("KEYBOARD"));	    //11
			vpd.put("var12", varOList.get(i).getString("RADIATOR")==null?"":varOList.get(i).getString("RADIATOR"));	    //12
			vpd.put("var13", varOList.get(i).getString("PRINTER")==null?"":varOList.get(i).getString("PRINTER"));	    //13
			vpd.put("var14", varOList.get(i).getString("REMARK1")==null?"":varOList.get(i).getString("REMARK1"));	    //14
			vpd.put("var15", varOList.get(i).getString("REMARK2")==null?"":varOList.get(i).getString("REMARK2"));	    //15
			
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
