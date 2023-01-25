package com.multi.www.local;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LocalController2 {

	// 1. ������
	@Autowired
	Local_touristdestinationDAO2 dao;

	// 1-1) ���
	@RequestMapping(value =  "tour_insert", method = RequestMethod.POST)
	public String insert1(Local_touristdestinationVO vo) {
		dao.insert(vo);
		return "redirect:http://localhost:8888/www/localEdit_tour_s.jsp";
	}

	// 1-2) ��ȸ
	@RequestMapping("localEditV/tour_search")
	public void one1(Local_touristdestinationVO vo, Model model) {
		Local_touristdestinationVO result = dao.one(vo);
		model.addAttribute("vo", result);
	}

	// 1-3) ����
	// 1-3-1) ���������� �̵�, ������ ���� ������ ����
	@RequestMapping(value = "tour_update", method = RequestMethod.GET)
	public String getupdate1(Local_touristdestinationVO vo, Model model) {
		Local_touristdestinationVO result = dao.one(vo);
		model.addAttribute("vo", result);
		return "localEditV/tour_update";
	}
	
	// 1-3-2) �����Ͽ� db�� ������
	@RequestMapping(value = "tour_update", method = RequestMethod.POST)
	public String postupdate1(Local_touristdestinationVO vo) {
		dao.update(vo);
		return "redirect:http://localhost:8888/www/localEdit_tour_s.jsp";
	}

	// 1-4) ����
	// 1-4-1) ���������� �̵�, ������ ���� ������ ����
	@RequestMapping(value = "tour_delete", method = RequestMethod.GET)
	public String getdelete1(Local_touristdestinationVO vo, Model model) {
		Local_touristdestinationVO result = dao.one(vo);
		model.addAttribute("vo", result);
		return "localEditV/tour_delete";
	}
	
	// 1-4-2) Ȯ�� �� db���� �����ϱ�
	@RequestMapping(value = "tour_delete", method = RequestMethod.POST)
	public String postdelete1(Local_touristdestinationVO vo) {
		dao.delete(vo);
		return "redirect:http://localhost:8888/www/localEdit_tour_s.jsp";
	}

	// 2. ����
	@Autowired
	Local_accommodationDAO2 dao2;

	// 2-1) ���
	@RequestMapping(value =  "acco_insert", method = RequestMethod.POST)
	public String insert2(Local_accommodationVO vo) {
		dao2.insert(vo);
		return "redirect:http://localhost:8888/www/localEdit_acco_s.jsp";
	}

	// 2-2) ��ȸ
	@RequestMapping("localEditV/acco_search")
	public void one2(Local_accommodationVO vo, Model model) {
		Local_accommodationVO result = dao2.one(vo);
		model.addAttribute("vo", result);
	}

	// 2-3) ����
	// 2-3-1) ���������� �̵�, ������ ���� ������ ����
	@RequestMapping(value = "acco_update", method = RequestMethod.GET)
	public String getupdate2(Local_accommodationVO vo, Model model) {
		Local_accommodationVO result = dao2.one(vo);
		model.addAttribute("vo", result);
		return "localEditV/acco_update";
	}
	
	// 2-3-2) �����Ͽ� db�� ������
	@RequestMapping(value = "acco_update", method = RequestMethod.POST)
	public String postupdate2(Local_accommodationVO vo) {
		dao2.update(vo);
		return "redirect:http://localhost:8888/www/localEdit_acco_s.jsp";
	}

	// 2-4) ����
	// 2-4-1) ���������� �̵�, ������ ���� ������ ����
	@RequestMapping(value = "acco_delete", method = RequestMethod.GET)
	public String getdelete2(Local_accommodationVO vo, Model model) {
		Local_accommodationVO result = dao2.one(vo);
		model.addAttribute("vo", result);
		return "localEditV/acco_delete";
	}
	
	// 2-4-2) Ȯ�� �� db���� �����ϱ�
	@RequestMapping(value = "acco_delete", method = RequestMethod.POST)
	public String postdelete1(Local_accommodationVO vo) {
		dao2.delete(vo);
		return "redirect:http://localhost:8888/www/localEdit_acco_s.jsp";
	}
	
	// 3. ������
	@Autowired
	Local_restaurantDAO2 dao3;

	// 3-1) ���
	@RequestMapping(value =  "rest_insert", method = RequestMethod.POST)
	public String insert3(Local_restaurantVO vo) {
		dao3.insert(vo);
		return "redirect:http://localhost:8888/www/localEdit_rest_s.jsp";
	}

	// 3-2) ��ȸ
	@RequestMapping("localEditV/rest_search")
	public void one3(Local_restaurantVO vo, Model model) {
		Local_restaurantVO result = dao3.one(vo);
		model.addAttribute("vo", result);
	}

	// 3-3) ����
	// 3-3-1) ���������� �̵�, ������ ���� ������ ����
	@RequestMapping(value = "rest_update", method = RequestMethod.GET)
	public String getupdate3(Local_restaurantVO vo, Model model) {
		Local_restaurantVO result = dao3.one(vo);
		model.addAttribute("vo", result);
		return "localEditV/rest_update";
	}
	
	// 3-3-2) �����Ͽ� db�� ������
	@RequestMapping(value = "rest_update", method = RequestMethod.POST)
	public String postupdate3(Local_restaurantVO vo) {
		dao3.update(vo);
		return "redirect:http://localhost:8888/www/localEdit_rest_s.jsp";
	}

	// 3-4) ����
	// 3-4-1) ���������� �̵�, ������ ���� ������ ����
	@RequestMapping(value = "rest_delete", method = RequestMethod.GET)
	public String getdelete3(Local_restaurantVO vo, Model model) {
		Local_restaurantVO result = dao3.one(vo);
		model.addAttribute("vo", result);
		return "localEditV/rest_delete";
	}
	
	// 3-4-2) Ȯ�� �� db���� �����ϱ�
	@RequestMapping(value = "rest_delete", method = RequestMethod.POST)
	public String postdelete1(Local_restaurantVO vo) {
		dao3.delete(vo);
		return "redirect:http://localhost:8888/www/localEdit_rest_s.jsp";
	}

}
