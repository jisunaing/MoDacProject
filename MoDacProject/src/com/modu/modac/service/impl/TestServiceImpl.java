package com.modu.modac.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.TestService;

/* service어노테이션 */
@Service("testService")
public class TestServiceImpl implements TestService {
	/* dao 리소스 등록 */
	@Resource(name="testDao")
	private TestDao dao;

	/* 메소드 오버라이딩 */
	@Override
	public int testdb() {
		return dao.testdb();
	}

}
