package com.sesoc.test.dao;

import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.test.vo.Graph1VO;
import com.sesoc.test.vo.Graph2VO;
import com.sesoc.test.vo.Graph4VO;
import com.sesoc.test.vo.RankVO;
import com.sesoc.test.vo.StatVO;
import com.sesoc.test.vo.UserVO;

@Repository
public class StatsDaoImpl implements StatsDao {
	
	@Autowired
	private SqlSession sqlsession;

	//유저에게 가장 인기 많은 제품
	@Override
	public ArrayList<RankVO> bestFurnitureList() {
		StatsMapper mapper = sqlsession.getMapper(StatsMapper.class);
		ArrayList<RankVO> list = mapper.bestFurnitureList();
		return list;
	}

	//성별, 연령별 인기 제품
	@Override
	   public ArrayList<RankVO> genFurnitureList(UserVO user) {
	      StatsMapper mapper = sqlsession.getMapper(StatsMapper.class);
	      ArrayList<RankVO> list = mapper.genFurnitureList(user);
	      return list;
	}
	
	//관리자가 전체, 기업별 좋아요 순으로 목록 조회
	@Override
	public ArrayList<StatVO> companyListAll(String stat) {
		StatsMapper mapper = sqlsession.getMapper(StatsMapper.class);
		ArrayList<StatVO> listAll= mapper.companyListAll(stat);
		return listAll;
	}

	//기업 회원이 자사 좋아요 순으로 목록 조회
	@Override
	public ArrayList<StatVO> companyStatistics(String coId) {
		StatsMapper mapper = sqlsession.getMapper(StatsMapper.class);
		ArrayList<StatVO> listAll= mapper.companyListAll(coId);
		return listAll;
	}

	//연도별 회사 통계
	@Override
	public ArrayList<Graph1VO> Graph1() {
		StatsMapper mapper = sqlsession.getMapper(StatsMapper.class);
		ArrayList<Graph1VO> list = mapper.Graph1();
		return list;
	}
	
	//회사별 가구 통계
	@Override
	public ArrayList<Graph2VO> Graph2() {
		StatsMapper mapper = sqlsession.getMapper(StatsMapper.class);
		ArrayList<Graph2VO> list = mapper.Graph2();
		return list;
	}
	
	//연도-월별 회사 통계
	@Override
	public ArrayList<Graph4VO> Graph4() {
		StatsMapper mapper = sqlsession.getMapper(StatsMapper.class);
		ArrayList<Graph4VO> list = mapper.Graph4();
		return list;
	}

}