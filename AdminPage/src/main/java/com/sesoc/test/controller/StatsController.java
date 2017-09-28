package com.sesoc.test.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.test.service.StatsService;
import com.sesoc.test.vo.StatVO;

@Controller
@RequestMapping("/stats")
public class StatsController {

	@Autowired
	private StatsService service;
	
	//관리자가 전체, 기업별 좋아요 순으로 목록 조회
	@RequestMapping(value="statistics")
	@ResponseBody
	public ArrayList<StatVO> statistics(String stat){
		return service.companyListAll(stat);
	}
	
	//기업 회원이 자사 좋아요 순으로 목록 조회
	@RequestMapping(value="companyStatistics")
	public String companyStatistics(Model model, String coId){
		service.companyStatistics(model, coId);
		return "/Stats/statistics";
	}
	
	//연도별 회사 통계 >> 전체 가구를 대상으로 한 연도별 좋아요 수 
	@RequestMapping(value = "graph1")
	public String graph1(Model model) {
		service.Graph1(model);
		return	"/Stats/Graph1";	
	}
	
	//회사별 가구 통계 >> 전체 회사를 대상으로 한 타입별 좋아요 수(그물망)
	@RequestMapping(value = "graph2")
	public String graph2(Model model) {
		service.Graph2(model);
		return	"/Stats/Graph2";	
	}
	
	//회사별 가구 통계 >> 전체 회사를 대상으로 한 타입별 좋아요 수(막대)
	@RequestMapping(value = "graph3")
	public String graph3(Model model) {
		service.Graph2(model);
		return	"/Stats/Graph3";	
	}
	
	//연도-월별 회사 통계 >> 2012년
	@RequestMapping(value = "graph4")
	public String graph4(Model model) {
		service.Graph4(model);
		return	"/Stats/Graph4";	
	}
	
	//연도-월별 회사 통계 >> 2013년
	@RequestMapping(value = "graph5")
	public String graph5(Model model) {
		service.Graph4(model);
		return	"/Stats/Graph5";	
	}
	
	//연도-월별 회사 통계 >> 2014년
	@RequestMapping(value = "graph6")
	public String graph6(Model model) {
		service.Graph4(model);
		return	"/Stats/Graph6";	
	}
	
	//연도-월별 회사 통계 >> 2015년
	@RequestMapping(value = "graph7")
	public String graph7(Model model) {
		service.Graph4(model);
		return	"/Stats/Graph7";	
	}
	
	//연도-월별 회사 통계 >> 2016년
	@RequestMapping(value = "graph8")
	public String graph8(Model model) {
		service.Graph4(model);
		return	"/Stats/Graph8";	
	}
	
}