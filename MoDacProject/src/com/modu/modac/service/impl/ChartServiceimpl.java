package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.ChartService;

@Service("chartService")
public class ChartServiceimpl implements ChartService{
	
	@Resource(name="chartDao")
	private ChartDao dao;

	@Override
	public List<Map> dayList(Map map) {
		System.out.println("서비스로 들어옴");
		System.out.println(map.get("pid"));
		return dao.dayList(map);
	}//dayList

}
