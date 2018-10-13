package com.modu.modac.service.impl;
            
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.TestService;

/* Repository어노테이션 */
@Repository
public class TestDao implements TestService {
	/* SqlSessionTeplate선언 - 리소스 등록 */
	@Resource(name="template")
	private SqlSessionTemplate template;

	/* 메소드 오버라이딩 */
	@Override
	public int testdb() {
		return template.selectOne("dbtest");
	}


}