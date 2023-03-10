package com.multi.www.beach;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BeachController implements BeachInterface {

 
	@Autowired
	BeachService beachService;
	
	
	@Override
	@RequestMapping("beach/beach2.do")
	public void all(Model model) {
		List<BeachVO> list = beachService.all();
		model.addAttribute("list", list);
	}
	
	@Override
	@RequestMapping("beach/one")
	public void one(BeachVO vo, Model model) {
		BeachVO result =  beachService.one(vo); // bookVO
		model.addAttribute("vo", result);
	}
	
}
