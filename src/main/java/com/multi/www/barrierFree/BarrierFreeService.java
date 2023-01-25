package com.multi.www.barrierFree;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Component;

@Service
public class BarrierFreeService {

	@Autowired
	BarrierFreeDAO dao;

	public void insert(BarrierFreeVO vo) {
		dao.insert(vo);
	}

	public void insert2(BarrierFree2VO vo) {
		dao.insert2(vo);
	}
	
	public void insert4(BarrierFree4VO vo) {
		dao.insert4(vo);
	}
//	public List<BarrierFreeVO> list(PageVO vo) {
//		return dao.list(vo);
//	}
	
	public BarrierFree2VO one(BarrierFree2VO vo) {
		return dao.one(vo);
	}
	public List<BarrierFreeVO> all(PageVO vo) {
		return dao.all(vo);
	}
	public List<BarrierFreeVO> search() {
		System.out.println("111");
		return dao.search();
	}
	public List<BarrierFreeVO>  search2() {
		return dao.search2();
	}
	
	public BarrierFreeVO oneimg(BarrierFree2VO vo) {
		return dao.oneimg(vo);
	}
	public BarrierFree4VO oneoverview(BarrierFree2VO vo) {
		return dao.oneoverview(vo);
	}
	
	public int count() {
		return dao.count();
	}
	
	public List<BarrierFreeVO> contentid(){
		return dao.contentid();
	}
}
