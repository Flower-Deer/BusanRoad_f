package com.multi.www.openAPIXMLtoJSON;

import java.util.List;

public interface tourDAOinter {

	void insert(TourVO vo);

	List<TourVO> list(TourVO vo);

	List<TourVO> search(TourVO vo);

}