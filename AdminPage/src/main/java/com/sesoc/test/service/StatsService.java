package com.sesoc.test.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.sesoc.test.vo.StatVO;
import com.sesoc.test.vo.UserVO;

public interface StatsService {

	public void bestFurnitureList(Model model);//유저에게 가장 인기 많은 제품
	
	public void genFurnitureList(Model model, UserVO user);//유저의 성별, 연령별 인기 제품

	public void Graph1(Model model);//연도별 회사 통계 >> 전체 가구를 대상으로 한 연도별 좋아요 수
	
	public void Graph2(Model model);//회사별 가구 통계 >> 전체 회사를 대상으로 한 타입별 좋아요 수
	
	public void Graph4(Model model);//연도-월별 회사 통계

	public ArrayList<StatVO> companyListAll(String stat);//관리자가 전체, 기업별 좋아요 순으로 목록 조회

	public void companyStatistics(Model model, String coId);//기업 회원이 자사 좋아요 순으로 목록 조회

}