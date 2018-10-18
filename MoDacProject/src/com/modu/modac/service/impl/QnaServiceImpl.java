package com.modu.modac.service.impl;              

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.QnaDto;
import com.modu.modac.service.QnaService;
import com.modu.modac.service.TestService;

/* service어노테이션 */
@Service("qnaService")
public class QnaServiceImpl implements QnaService {
	/* dao 리소스 등록 */
	@Resource(name="qnaDao")
	private QnaDao dao;

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
		return dao.insert(map);
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
