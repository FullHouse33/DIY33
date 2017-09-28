package com.sesoc.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sesoc.test.service.StatsService;

@Controller
public class HomeController {
	
	@Autowired
	private StatsService service; 
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		service.bestFurnitureList(model);//유저에게 가장 인기 많은 제품
		return "home";
	}
	
}