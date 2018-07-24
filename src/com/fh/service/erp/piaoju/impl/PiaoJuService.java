package com.fh.service.erp.piaoju.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;
import com.fh.service.erp.goodbook.GoodbookManager;
import com.fh.service.erp.goods.GoodsManager;
import com.fh.service.erp.orderbook.OrderbookManager;
import com.fh.service.erp.piaoju.PiaoJuManager;

/** 
 * 说明： 票据管理
 * 创建人：
 * 创建时间：
 * @version
 */
@Service("piaojuService")
public class PiaoJuService implements PiaoJuManager{

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**新增
	 * @param pd
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception{
		dao.save("PiaoJuMapper.save", pd);
	}
	
	/**删除
	 * @param pd
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception{
		dao.delete("PiaoJuMapper.delete", pd);
	}
	
	/**修改
	 * @param pd
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception{
		dao.update("PiaoJuMapper.edit", pd);
	}
	

	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("PiaoJuMapper.datalistPage", page);
	}
	
	/**列表(全部)
	 * @param pd
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("PiaoJuMapper.listAll", pd);
	}
	
	
	
	/**通过id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("PiaoJuMapper.findById", pd);
	}
	

	/**批量删除
	 * @param ArrayDATA_IDS
	 * @throws Exception
	 */
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("PiaoJuMapper.deleteAll", ArrayDATA_IDS);
	}
	

	
}

