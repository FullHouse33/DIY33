package com.sesoc.test.dao;

import java.util.ArrayList;

import com.sesoc.test.vo.Graph1VO;
import com.sesoc.test.vo.Graph2VO;
import com.sesoc.test.vo.Graph4VO;
import com.sesoc.test.vo.RankVO;
import com.sesoc.test.vo.StatVO;
import com.sesoc.test.vo.UserVO;

public interface StatsMapper {
	
	public ArrayList<RankVO> bestFurnitureList();//유저에게 가장 인기 많은 제품
	
	public ArrayList<RankVO> genFurnitureList(UserVO user);//성별, 연령별 인기 제품
	
	public ArrayList<Graph1VO> Graph1();//연도별 회사 통계
	
	public ArrayList<Graph2VO> Graph2();//회사별 가구 통계
	
	public ArrayList<Graph4VO> Graph4();//연도-월별 회사 통계

	public ArrayList<StatVO> companyListAll(String stat);//관리자가 전체, 기업별 좋아요 순으로 목록 조회

}