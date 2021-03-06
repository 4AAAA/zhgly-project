package com.fh.service.erp.outku;

import java.util.List;

import com.fh.entity.Page;
import com.fh.util.PageData;

/** 
 * 说明： 商品出库接口
 * 创建人：FH Q313596790
 * 创建时间：2016-09-21
 * @version
 */
public interface OutKuManager{

	/**新增
	 * @param pd
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception;
	
	/**删除
	 * @param pd
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception;
	
	/**修改
	 * @param pd
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception;
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	public List<PageData> list(Page page)throws Exception;
	
	/**商品销售报表
	 * @param page
	 * @throws Exception
	 */
	public List<PageData> salesReport(Page page)throws Exception;
	
	/**列表(全部)
	 * @param pd
	 * @throws Exception
	 */
	public List<PageData> listAll(PageData pd)throws Exception;
	
	/**通过id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findById(PageData pd)throws Exception;
	
	/**批量删除
	 * @param ArrayDATA_IDS
	 * @throws Exception
	 */
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception;
	
	/**总金额
	 * @param pd
	 * @throws Exception
	 */
	public PageData priceSum(PageData pd) throws Exception;
	
	/**N天内商品销售统计
	 * @param pd
	 * @throws Exception
	 */
	public PageData manyDaySum(PageData pd) throws Exception;
	
	/**当月商品销售统计
	 * @param pd
	 * @throws Exception
	 */
	public PageData thisMonth(PageData pd) throws Exception;
	
	/**上月商品销售统计
	 * @param pd
	 * @throws Exception
	 */
	public PageData lastMonth(PageData pd) throws Exception;
	
	/**修改结算状态
	 * @param pd
	 * @throws Exception
	 */
	public void editBill(PageData pd)throws Exception;
	
	/**修改退货信息
	 * @param pd
	 * @throws Exception
	 */
	public void editBack(PageData pd)throws Exception;
	
}

