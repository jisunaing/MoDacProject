package com.modu.modac.service.impl;
         
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.modu.modac.service.PartnerNAdminQnACommentService;


@Service("partnerNAdminQnACommentService")
public class PartnerNAdminQnACommentServiceImpl implements PartnerNAdminQnACommentService{
	
	@Resource(name="partnerNAdminQnACommentDao")
	private PartnerNAdminQnACommentDao dao;

	@Override
	public List<Map> selectList(Map map) { return dao.selectList(map); }

	@Override
	public void insert(Map map) { dao.insert(map); }

	@Override
	public void delete(Map map) { dao.delete(map); }

	@Override
	public void update(Map map) { dao.update(map); }


	
	
	

}//PartnerNAdminQnAServiceImpl
