package com.multi.www.barrierFree;

import org.springframework.stereotype.Service;

@Service //�̱���
public class PageService2 {

	public int pages(int count) {
		int pages = 0;
		if(count % 10 == 0) {
			pages = count / 10; //120�� --> 12pages
		}else {
			pages = count / 10 + 1; //122�� --> 13pages 
		}
		return pages;
	}
	
}
