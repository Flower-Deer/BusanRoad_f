package com.multi.www.beach;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public interface BeachInterface {

	void all(Model model);

	void one(BeachVO vo, Model model);

}