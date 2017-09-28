package com.sesoc.test.dao;

import java.util.ArrayList;
import java.util.Map;

import com.sesoc.test.vo.GalleryVO;
import com.sesoc.test.vo.ReplyVO;

public interface BoardDao {

	//게시글 목록
	public ArrayList<GalleryVO> boardList(Map<String, String> map, int startRecord, int countPerPage);
	
	//게시글 작성
	public int writeBoard(GalleryVO gallery); 
	
	//게시글 읽기
	public GalleryVO readBoard(int galleryNum);
	
	//게시글 수정
	public int modifyBoard(GalleryVO gallery);
	
	//게시글 삭제
	public void deleteBoard(int galleryNum);

	//조회 수
	public void addhit(int galleryNum);
	
	//페이징
	public int getTotal(Map<String, String> map);

	//댓글 목록
	public ArrayList<ReplyVO> getReplyList(int galleryNum);

	//댓글 작성
	public void writeReply(ReplyVO vo);

	//댓글 삭제
	public void deleteReply(int replyNum);
	
	//댓글 수
	public int countReply(int galleryNum);

}