package com.fh.controller.erp.piaoju;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
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
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.fh.util.Jurisdiction;
import com.fh.service.erp.degree.DegreeManager;
import com.fh.service.erp.goodbook.GoodbookManager;
import com.fh.service.erp.goods.GoodsManager;
import com.fh.service.erp.material.MaterialManager;
import com.fh.service.erp.orderbook.OrderbookManager;
import com.fh.service.erp.pay.PayManager;
import com.fh.service.erp.piaoju.PiaoJuManager;
import com.fh.service.erp.spbrand.SpbrandManager;
import com.fh.service.erp.sptype.SptypeManager;
import com.fh.service.erp.spunit.SpunitManager;
import com.fh.service.information.pictures.PicturesManager;

/**
 * 说明：票据管理 创建人：liuyw 创建时间：2018-06-09
 */
@Controller
@RequestMapping(value = "/piaoju")
public class PiaoJuController extends BaseController {

	String menuUrl = "piaoju/list.do"; // 菜单地址(权限用)
	@Resource(name = "piaojuService")
	private PiaoJuManager piaojuService;

	/**
	 * 列表
	 * 
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value = "/list")
	public ModelAndView list(Page page) throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "列表Goods");
		// if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		// //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords"); // 关键词检索条件
		if (null != keywords && !"".equals(keywords)) {
			pd.put("keywords", keywords.trim());
		}

		pd.put("USERNAME", "admin".equals(Jurisdiction.getUsername()) ? "" : Jurisdiction.getUsername());
		page.setPd(pd);

		List<PageData> varList = piaojuService.list(page); // 票据列表

		mv.setViewName("erp/piaoju/piaoju_allList");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);

		mv.addObject("QX", Jurisdiction.getHC()); // 按钮权限

		return mv;
	}

	/**
	 * 异步保存
	 * 
	 * @param
	 * @throws Exception
	 */
	// @RequestMapping(value="/save")
	// @ResponseBody
	// public Object save() throws Exception{
	// logBefore(logger, Jurisdiction.getUsername()+"新增票据");
	// if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
	// PageData pd = new PageData();
	// pd = this.getPageData();
	//
	// //编号，金额，日期
	// //主键
	// String findId = this.get32UUID();
	// pd.put("PIAOJU_ID", findId); //主键
	// pd.put("USERNAME", Jurisdiction.getUsername()); //用户名
	//
	// piaojuService.save(pd);
	//
	//
	//
	// Map<String,String> map = new HashMap<String,String>();
	// String errInfo = "success";
	// map.put("result", errInfo);
	// map.put("piaojuId", findId);
	// return AppUtil.returnObject(new PageData(), map);
	// }

	/**
	 * 保存
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/save")
	public ModelAndView save() throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "新增票据");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "add")) {
			return null;
		} // 校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();

		// //编号，金额，日期
		// //主键
		String findId = this.get32UUID();
		pd.put("PIAOJU_ID", findId); // 主键
		pd.put("PIAOJU_CODE", CodeRandomUtil.getPiaojuCode()); // 编号
		pd.put("USERNAME", Jurisdiction.getUsername()); // 用户名
		pd.put("CTIME", Tools.date2Str(new Date())); // 建档时间

		piaojuService.save(pd);

		mv.addObject("msg", "success");
		mv.setViewName("save_result");
		return mv;
	}

	/**
	 * 查看页面
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/goView")
	public ModelAndView goView() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = piaojuService.findById(pd); // 根据ID读取

		mv.setViewName("erp/piaoju/piaoju_view");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		return mv;
	}

	/**
	 * 打印
	 * 
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value = "/print")
	public ModelAndView print(Page page) throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "列表Goods");
		// if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		// //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();

		pd = piaojuService.findById(pd); // 根据ID读取

		// 年月日
		pd.put("YEAR", "");
		pd.put("MONTH", "");
		pd.put("DAY", "");

		String riqi = pd.getString("RIQI");

		if (riqi != null) {
			Calendar cal = Calendar.getInstance();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date parse = dateFormat.parse(riqi);
			cal.setTime(parse);
			int month = cal.get(Calendar.MONTH); // 注意月份是从0开始的,比如当前7月，获得的month为6
			int months = month + 1;
			pd.put("MONTH", months);
			int day = cal.get(Calendar.DATE); // 注意月份是从0开始的,比如当前7月，获得的month为6
			pd.put("DAY", day);
			int year = cal.get(Calendar.YEAR); // 注意月份是从0开始的,比如当前7月，获得的month为6
			int years = year % 10;
			pd.put("YEAR", years);
		}

		mv.setViewName("erp/piaoju/piaoju_print");
		mv.addObject("pd", pd);
		mv.addObject("QX", Jurisdiction.getHC()); // 按钮权限
		return mv;
	}

	/**
	 * 去修改页面
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/goEdit")
	public ModelAndView goEdit() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = piaojuService.findById(pd); // 根据ID读取

		mv.setViewName("erp/piaoju/piaoju_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);

		return mv;
	}

	/**
	 * 修改
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/edit")
	public ModelAndView edit() throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "修改票据");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "edit")) {
			return null;
		} // 校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();

		piaojuService.edit(pd);
		mv.addObject("msg", "success");
		mv.setViewName("save_result");
		return mv;
	}

	/**
	 * 删除
	 * 
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete() throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "删除Goods");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "del")) {
			return null;
		} // 校验权限
		Map<String, String> map = new HashMap<String, String>();
		PageData pd = new PageData();
		pd = this.getPageData();

		piaojuService.delete(pd);

		String errInfo = "success";

		map.put("result", errInfo);
		return AppUtil.returnObject(new PageData(), map);
	}

	/**
	 * 去新增页面
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/goAdd")
	public ModelAndView goAdd() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();

		mv.setViewName("erp/piaoju/piaoju_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);

		return mv;
	}

	/**
	 * 异步计算金额
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/count")
	@ResponseBody
	public Object count() throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "新增票据");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "add")) {
			return null;
		} // 校验权限
		PageData pd = new PageData();
		pd = this.getPageData();

		double sum = 0;

		for (int i = 1; i < 8; i++) {
			String shuliang = pd.getString("TITLE" + i + "SL");
			System.out.println("数量：" + shuliang);
			String danjia = pd.getString("TITLE" + i + "DJ");
			System.out.println("单价:" + danjia);

			if (!"".equals(shuliang) && shuliang != null && !"".equals(danjia) && danjia != null) {
				double sd = (Double.valueOf(danjia)) * (Double.valueOf(shuliang));

				// 结算合计
				sum = sd + sum;
				// 小数固定2位
				DecimalFormat df = new DecimalFormat("######0.00");
				String sds = df.format(sd);

				System.out.println("合计：" + sds);
				Map<String, String> money = findMonyNum(String.valueOf(sds));

				System.out.println("数量：" + shuliang + ";单价:" + danjia + ";合计：" + sd + ";集合:" + money);

				pd.put("TITLE" + i + "M2", money.get("万"));
				pd.put("TITLE" + i + "M3", money.get("千"));
				pd.put("TITLE" + i + "M4", money.get("百"));
				pd.put("TITLE" + i + "M5", money.get("十"));
				pd.put("TITLE" + i + "M6", money.get("元"));
				pd.put("TITLE" + i + "M7", money.get("角"));
				pd.put("TITLE" + i + "M8", money.get("分"));
			}

		}

		DecimalFormat df = new DecimalFormat("######0.00");
		String sums = df.format(sum);
		// 结算合计
		pd.put("MONEY", String.valueOf(sums));

		// 金额大写
		Map<String, String> bigMoney = findMonyNum(sums);
		pd.put("DX1", "零");
		pd.put("DX2", toBigMoney(bigMoney.get("万")));
		pd.put("DX3", toBigMoney(bigMoney.get("千")));
		pd.put("DX4", toBigMoney(bigMoney.get("百")));
		pd.put("DX5", toBigMoney(bigMoney.get("十")));
		pd.put("DX6", toBigMoney(bigMoney.get("元")));
		pd.put("DX7", toBigMoney(bigMoney.get("角")));
		pd.put("DX8", toBigMoney(bigMoney.get("分")));

		// //编号，金额，日期
		// //主键
		// String findId = this.get32UUID();
		// pd.put("PIAOJU_ID", findId); //主键
		// pd.put("USERNAME", Jurisdiction.getUsername()); //用户名
		//
		// piaojuService.save(pd);

		Map<String, Object> map = new HashMap<String, Object>();
		String errInfo = "success";
		map.put("result", errInfo);
		map.put("pd", pd);
		// map.put("piaojuId", findId);
		return AppUtil.returnObject(new PageData(), map);
	}

	/**
	 * 计算小格子金额
	 * 
	 * @param valStr
	 * @return
	 */
	public static Map<String, String> findMonyNum(String valStr) {

		Map<String, String> hashMap = new HashMap<String, String>();

		hashMap.put("万", "");
		hashMap.put("千", "");
		hashMap.put("百", "");
		hashMap.put("十", "");
		hashMap.put("元", "");
		hashMap.put("角", "");
		hashMap.put("分", "");

		// String valStr = "183105";

		String head = null; // 整数部分
		String rail = null; // 小数部分

		if (valStr != null && valStr.indexOf(".") != -1) {
			head = valStr.substring(0, valStr.indexOf(".")); // 取整数部分
			System.out.println("整数：" + head);
			rail = valStr.substring(valStr.indexOf(".") + 1, valStr.length()); // 取小数部分,只取小数点后两位
			System.out.println("小数：" + rail);

		} else {
			head = valStr;
		}

		if (head != null) {
			int s = Integer.parseInt(head);

			hashMap.put("万", String.valueOf(s / 10000 % 10));
			hashMap.put("千", String.valueOf(s / 1000 % 10));
			hashMap.put("百", String.valueOf(s / 100 % 10));
			hashMap.put("十", String.valueOf(s / 10 % 10));
			hashMap.put("元", String.valueOf(s % 10));

		}

		if (rail != null) {
			int xiao = Integer.parseInt(rail);
			int fen = xiao % 10;
			int jiao = xiao / 10 % 10;
			hashMap.put("角", String.valueOf(xiao / 10 % 10));
			hashMap.put("分", String.valueOf(xiao % 10));

		}

		return hashMap;
	}

	/**
	 * 金额转换大写
	 * 
	 * @param smallNum
	 * @return
	 */
	public static String toBigMoney(String smallNum) {
		switch (smallNum) {
		case "0":
			return "零";
		case "1":
			return "壹";
		case "2":
			return "贰";
		case "3":
			return "叁";
		case "4":
			return "肆";
		case "5":
			return "伍";
		case "6":
			return "陆";
		case "7":
			return "柒";
		case "8":
			return "捌";
		case "9":
			return "玖";

		default:
			return "";
		}
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format, true));
	}
}
