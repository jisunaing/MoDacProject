package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.NoticeDto;
import com.modu.modac.service.NoticeService;


@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	@Resource(name="noticeDao")
	private NoticeDao dao;

	@Override
	public List<NoticeDto> selectList(Map map) {
		return dao.selectList(map);
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
