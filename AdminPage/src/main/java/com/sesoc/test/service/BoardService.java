package com.sesoc.test.service;

import java.util.ArrayList;

import java.util.Map;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.sesoc.test.util.PageNavigator;
import com.sesoc.test.vo.GalleryVO;
import com.sesoc.test.vo.ReplyVO;

public interface BoardService {

	public ArrayList<GalleryVO> boardList(Map<String, String> map, PageNavigator navi);//게시글 목록

	public void writeBoard(GalleryVO vo, MultipartFile uploadFile);//게시글 읽기

	public void readBoard(int galleryNum, Model model);//게시글 작성

	public void modifyBoard(GalleryVO gallery,MultipartFile uploadFile);//게시글 수정
	
	public void deleteBoard(int galleryNum);//게시글 삭제
	
	public PageNavigator getNavi(int currentPage, Map<String, String> map);//페이징

	public ArrayList<ReplyVO> getReplyList(int boardNum);//댓글 목록

	public void writeReply(ReplyVO vo);//댓글 작성

	public void deleteReply(int replyNum);//댓글 삭제

}