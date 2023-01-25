package com.multi.www.free;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

@Controller
public class BarrierFreeController {
	@Autowired
	BarrierFreeService service;	
	
	@Autowired
	PageService page;
	
	
	
	
	
	@RequestMapping("barrierFreeDetail")
	public void barrierFreeDetail(BarrierFree2VO vo, Model model) {
		BarrierFree2VO one = service.one(vo);
		BarrierFreeVO img = service.oneimg(vo);
		BarrierFree4VO overview = service.oneoverview(vo);
		BarrierFreeVO title = service.onetitle(vo);
		
		model.addAttribute("one", one);
		model.addAttribute("oneimg", img);
		model.addAttribute("oneoverview", overview);
		model.addAttribute("onetitle", title);
	}
	
	
	@RequestMapping("barrierFreePage2")
	public void all2(PageVO vo, Model model) {
		vo.setStartEnd(vo.getPage());
		List<BarrierFreeVO> list = service.all(vo);
		int count = service.count();
		System.out.println("all count>> " + count);
		int pages = count / 10 + 1;
		model.addAttribute("list", list);
	}
	@RequestMapping("free/barrierFreePage")
	public void all(PageVO vo, Model model) {
		vo.setStartEnd(vo.getPage());
		List<BarrierFreeVO> list = service.all(vo);
		int count = service.count();
		System.out.println("all count>> " + count);
		int pages = count / 10 + 1;
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
	}
	@RequestMapping("search")
	public void search(Model model) {
		System.out.println("1");
		List<BarrierFreeVO> list = service.search();
		System.out.println("11");
		System.out.println(list.size());
		System.out.println(list);
		model.addAttribute("list", list);
	}
	@RequestMapping("search2")
	public void search2(Model model) {
		List<BarrierFreeVO> list = service.search2();
		model.addAttribute("list", list);
	}
	
	
}
