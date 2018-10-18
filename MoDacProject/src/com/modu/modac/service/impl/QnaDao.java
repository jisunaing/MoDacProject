package com.modu.modac.service.impl;
            
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.QnaDto;
import com.modu.modac.service.QnaService;
import com.modu.modac.service.TestService;

/* Repository어노테이션 */
@Repository
public class QnaDao implements QnaService {
	/* SqlSessionTeplate선언 - 리소스 등록 */
	@Resource(name="template")
	private SqlSessionTemplate template;

	/* 메소드 오버라이딩 */
	@Override
	public List<QnaDto> selectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public QnaDto selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Map map) {
		return template.insert("qnaInsert",map);
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reply(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

}