package com.multi.www.local;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Local_touristdestinationDAO2 {
	
	@Autowired
	SqlSessionTemplate my;

	public int insert(Local_touristdestinationVO vo) {
		System.out.println("dao" + vo);
		return my.insert("localEdit.insert1", vo);
	}

	public Local_touristdestinationVO one(Local_touristdestinationVO vo) {
		return my.selectOne("localEdit.one1", vo);
	}

	public int update(Local_touristdestinationVO vo) {
		return my.update("localEdit.update1", vo);
	}

	public int delete(Local_touristdestinationVO vo) {
		return my.delete("localEdit.delete1", vo);
	}

}
