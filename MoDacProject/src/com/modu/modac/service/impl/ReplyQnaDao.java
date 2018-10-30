package com.modu.modac.service.impl;
            
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.ReplyQnaService;
import com.modu.modac.service.TestService;

/* Repository어노테이션 */
@Repository
public class ReplyQnaDao implements ReplyQnaService {
	/* SqlSessionTeplate선언 - 리소스 등록 */
	@Resource(name="template")
	private SqlSessionTemplate template;

	/* 메소드 오버라이딩 */
	@Override
	public List<Map> selectList(Map map) {
		return template.selectList("replyqnaSelectList", map);
	}

	@Override
	public void insert(Map map) {
		template.insert("replyqnaInsert", map);
	}

	@Override
	public void delete(Map map) {
		template.delete("replyqnaDelete", map);
	}

	@Override
	public void update(Map map) {
		template.update("replyqnaUpdate",map);
	}

}