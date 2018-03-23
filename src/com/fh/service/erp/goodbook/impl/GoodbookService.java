package com.fh.service.erp.goodbook.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;
import com.fh.service.erp.goodbook.GoodbookManager;
import com.fh.service.erp.goods.GoodsManager;
import com.fh.service.erp.orderbook.OrderbookManager;

/** 
 * 说明： 商品记事本
 * 创建人：FH Q313596790
 * 创建时间：2016-09-09
 * @version
 */
@Service("goodbookService")
public class GoodbookService implements GoodbookManager{

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**新增
	 * @param pd
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception{
		dao.save("GoodbookMapper.save", pd);
	}
	
	/**删除
	 * @param pd
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception{
		dao.delete("GoodbookMapper.delete", pd);
	}
	
	/**修改
	 * @param pd
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception{
		dao.update("GoodbookMapper.edit", pd);
	}
	
	/**修改库存
	 * @param pd
	 * @throws Exception
	 */
	public void editKuCun(PageData pd)throws Exception{
		dao.update("GoodbookMapper.editKuCun", pd);
	}
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("GoodbookMapper.datalistPage", page);
	}
	
	/**列表(全部)
	 * @param pd
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("GoodbookMapper.listAll", pd);
	}
	
	/**通过产品编码
	 * @param pd
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> listByBm(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("GoodbookMapper.listByBm", pd);
	}
	
	/**通过id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("GoodbookMapper.findById", pd);
	}
	
	/**通过id获取数据(查看详细信息)
	 * @param pd
	 * @throws Exception
	 */
	public PageData findByIdToCha(PageData pd)throws Exception{
		return (PageData)dao.findForObject("GoodbookMapper.findByIdToCha", pd);
	}
	
	/**批量删除
	 * @param ArrayDATA_IDS
	 * @throws Exception
	 */
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("GoodbookMapper.deleteAll", ArrayDATA_IDS);
	}
	
	/**商品入库，增加库存
	 * @param pd
	 * @throws Exception
	 */
	public void editZCOUNT(PageData pd)throws Exception{
		dao.update("GoodbookMapper.editZCOUNT", pd);
	}
	
	/**进货总价
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public PageData inFeeSum(PageData pd) throws Exception {
		return (PageData)dao.findForObject("GoodbookMapper.inFeeSum", pd);
	}
	
}

