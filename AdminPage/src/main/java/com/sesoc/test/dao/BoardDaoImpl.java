package com.sesoc.test.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.test.vo.GalleryVO;
import com.sesoc.test.vo.ReplyVO;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired
	private SqlSession sqlsession;

	//게시글 목록
	@Override
	public ArrayList<GalleryVO> boardList(Map<String, String> map, int startRecord, int countPerPage) {
		BoardMapper mapper= sqlsession.getMapper(BoardMapper.class);
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		return mapper.boardList(map,rb);
	}

	//페이징
	@Override
	public int getTotal(Map<String, String> map) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		return mapper.getTotal(map);
	}
	
	//게시글 작성
	@Override
	public int writeBoard(GalleryVO gallery) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		return mapper.writeBoard(gallery);
	
	}

	//게시글 읽기
	@Override
	public GalleryVO readBoard(int galleryNum) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		return mapper.readBoard(galleryNum);
	}

	//게시글 수정
	@Override
	public int modifyBoard(GalleryVO gallery) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		return mapper.modifyBoard(gallery);
	}

	//게시글 삭제
	@Override
	public void deleteBoard(int galleryNum) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		mapper.deleteBoard(galleryNum);
	}

	//조회 수
	@Override
	public void addhit(int galleryNum) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		mapper.addhit(galleryNum);
	}

	//댓글 목록
	@Override
	public ArrayList<ReplyVO> getReplyList(int galleryNum) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		return mapper.getReplyList(galleryNum);
	}

	//댓글 작성
	@Override
	public void writeReply(ReplyVO vo) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		mapper.writeReply(vo);
	}

	//댓글 삭제
	@Override
	public void deleteReply(int replyNum) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		mapper.deleteReply(replyNum);
	}
	
	//댓글 수
	@Override
	public int countReply(int galleryNum) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		return mapper.countReply(galleryNum);
	}

}