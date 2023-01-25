package com.multi.www.barrierFree;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BarrierFreeController {
	@Autowired
	BarrierFreeService service;	
	
	@Autowired
	PageService2 page;
	
	@RequestMapping("barrierFreeDetail")
	public void barrierFreeDetail(BarrierFree2VO vo, Model model) {
		BarrierFree2VO one = service.one(vo);
		BarrierFreeVO img = service.oneimg(vo);
		BarrierFree4VO overview = service.oneoverview(vo);
		
		model.addAttribute("one", one);
		model.addAttribute("oneimg", img);
		model.addAttribute("oneoverview", overview);
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
	
	///barrierFree/barrierFreePage?page=1
	@RequestMapping("barrierFree/barrierFreePage")
	public String all(PageVO vo, Model model) {
		System.out.println(vo + "=============");
		vo.setStartEnd(vo.getPage());
		List<BarrierFreeVO> list = service.all(vo);
		int count = service.count();
		System.out.println("all count>> " + count);
		int pages = count / 10 + 1;
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
		
		return "barrierFree/barrierFreePage";
		//return "redirect:../main/main.jsp";
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
