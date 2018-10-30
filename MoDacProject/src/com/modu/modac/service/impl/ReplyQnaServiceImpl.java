package com.modu.modac.service.impl;              

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.ReplyQnaService;
import com.modu.modac.service.TestService;

/* service어노테이션 */
@Service("replyqnaService")
public class ReplyQnaServiceImpl implements ReplyQnaService{
	/* dao 리소스 등록 */
	@Resource(name="replyQnaDao")
	private ReplyQnaDao dao;

	/* 메소드 오버라이딩 */
	@Override
	public List<Map> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public void insert(Map map) {
		dao.insert(map);
	}

	@Override
	public void delete(Map map) {
		dao.delete(map);
	}

	@Override
	public void update(Map map) {
		dao.update(map);
	}

}
