package com.fh.service.erp.customer;

import java.util.List;
import com.fh.entity.Page;
import com.fh.util.PageData;

/** 
 * 说明： 客户管理接口
 * 创建人：FH Q313596790
 * 创建时间：2017-02-18
 * @version
 */
public interface CustomerManager{

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
	
	/**列表-关联客户
	 * @param page
	 * @throws Exception
	 */
	public List<PageData> listCompany(Page page)throws Exception;
	
	/**列表(全部)
	 * @param pd
	 * @throws Exception
	 */
	public List<PageData> listAll(PageData pd)throws Exception;
	
	/**列表-关联客户(全部)
	 * @param pd
	 * @throws Exception
	 */
	public List<PageData> listCompanyAll(PageData pd)throws Exception;
	
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
	
	/**当天结算信息统计
	 * @param pd
	 * @throws Exception
	 */
	public PageData dayBillSum(PageData pd) throws Exception;
	
	/**N天内结算信息统计
	 * @param pd
	 * @throws Exception
	 */
	public PageData manyDaySum(PageData pd) throws Exception;
	
	/**列表-账单
	 * @param page
	 * @throws Exception
	 */
	public List<PageData> billList(Page page)throws Exception;
	
}

