package com.multi.www.free;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Component;

@Repository
public class BarrierFreeDAO {

	@Autowired
	SqlSessionTemplate my;

	public void insert(BarrierFreeVO vo) {
		my.insert("barrierFree.addfree", vo);
	}

	public void insert2(BarrierFree2VO vo) {
		my.insert("barrierFree.addfree2", vo);
	}
	
	public void insert4(BarrierFree4VO vo) {
		my.insert("barrierFree.addfree4", vo);
	}
	
	public BarrierFree2VO one(BarrierFree2VO vo) {
		return my.selectOne("barrierFree.one",vo);
	}
	
	public BarrierFreeVO onetitle(BarrierFree2VO vo) {
		return my.selectOne("barrierFree.onetitle",vo);
	}
	
	public BarrierFreeVO oneimg(BarrierFree2VO vo) {
		return my.selectOne("barrierFree.oneimg",vo);
	}
	
	public BarrierFree4VO oneoverview(BarrierFree2VO vo) {
		return my.selectOne("barrierFree.oneoverview",vo);
	}
	
	public List<BarrierFreeVO> all(PageVO vo) {
		return my.selectList("barrierFree.all", vo);
	}
	
	public List<BarrierFreeVO> search() {
		System.out.println("1111");
		return  my.selectList("barrierFree.search");
	}
	public List<BarrierFreeVO> search2() {
		return  my.selectList("barrierFree.search2");
	}
	public int count() {
		return my.selectOne("barrierFree.count");
	}
	
	public List<BarrierFreeVO> contentid(){
		return my.selectList("barrierFree.contentid");
	}
}
