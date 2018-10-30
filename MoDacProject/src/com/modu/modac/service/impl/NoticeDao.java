package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.NoticeDto;
import com.modu.modac.service.NoticeService;


@Repository
public class NoticeDao implements NoticeService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<NoticeDto> selectList(Map map) {
		return template.selectList("noticeSelectList", map);
	}

	@Override
	public NoticeDto selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(NoticeDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(NoticeDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(NoticeDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
