package com.modu.modac.service.impl;

           
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.modu.modac.service.PartnerNAdminQnACommentService;



@Repository
public class PartnerNAdminQnACommentDao implements PartnerNAdminQnACommentService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<Map> selectList(Map map) {
		
		return template.selectList("ReCommentList",map);
	}

	@Override
	public void insert(Map map) {
		
		template.insert("ReCommentInsert",map);
		
	}

	@Override
	public void delete(Map map) {
	
		template.delete("ReCommentDelete",map);
		
	}

	@Override
	public void update(Map map) {
		template.update("ReCommentUpdate",map);
		
	}


	
	
	
	
}
