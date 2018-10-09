package com.modu.modac.service.impl;


import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.modu.modac.service.PartnerNAdminQnADto;
import com.modu.modac.service.PartnerNAdminQnAService;


@Repository
public class PartnerNAdminQnADao implements PartnerNAdminQnAService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;


	@Override
	public List<PartnerNAdminQnADto> selectList(Map map) {
		return template.selectList("PartnerNAdminQnAList",map);		
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("PartnerNAdminQnATotalRecord",map);
	}

	@Override
	public PartnerNAdminQnADto selectOne(Map map) {
		
		return template.selectOne("PartnerNAdminQnAOne",map);
	}

	@Override
	public int delete(Map map) {
		/*메모 삭제-프로그래밍적으로 혹은 
		   부모 삭제시 자동으로 해당 자식도 삭제하도록 FK설정
		  REFERENCES 부모테이블(PK컬럼) ON CASCADE DELETE
		*/
		//메모글에 따른 코멘트들 삭제]
		template.delete("ReCommentDeleteByNo",map);			
		return template.delete("PartnerNAdminQnADelete",map);
	}

	@Override
	public int insert(Map map) {
		
		return template.insert("PartnerNAdminQnAInsert",map);
	}

	@Override
	public int update(Map map) {
		
		return template.update("PartnerNAdminQnAUpdate",map);
	}

	
	
	
	
}
