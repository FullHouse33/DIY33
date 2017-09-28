package com.sesoc.test.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.sesoc.test.dao.BoardDao;
import com.sesoc.test.util.PageNavigator;
import com.sesoc.test.vo.GalleryVO;
import com.sesoc.test.vo.ReplyVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao dao;
	private final int countPerPage = 9;
	private final int pagePerGroup = 10;

	//게시글 목록
	@Override
	public ArrayList<GalleryVO> boardList(Map<String, String> map, PageNavigator navi) {
		return dao.boardList(map, navi.getStartRecord(), navi.getCountPerPage());
	}
	
	//페이징
	@Override
	public PageNavigator getNavi(int currentPage, Map<String, String> map) {
		int totalRecordsCount = dao.getTotal(map);
		PageNavigator navi = new PageNavigator(countPerPage,pagePerGroup,currentPage,totalRecordsCount);
		return navi;
	}
	
	//게시글 읽기
	@Override
	public void readBoard(int galleryNum, Model model) {
		dao.addhit(galleryNum);
		GalleryVO vo = dao.readBoard(galleryNum);
		int count = dao.countReply(galleryNum);
		
		model.addAttribute("read", vo);
		model.addAttribute("count", count);
	}

	//게시글 작성
	@Override
	public void writeBoard(GalleryVO gallery, MultipartFile uploadFile) {
		String img = uploadFile.getOriginalFilename();
		gallery.setImgUuid(img);
		dao.writeBoard(gallery);
	}

	//게시글 삭제
	@Override
	public void deleteBoard(int galleryNum) {
		dao.deleteBoard(galleryNum);
	}

	//게시글 수정
	@Override
	public void modifyBoard(GalleryVO gallery,MultipartFile uploadFile) {
		String img = uploadFile.getOriginalFilename();
		gallery.setImgUuid(img);
		dao.modifyBoard(gallery);
	}

	//댓글 목록
	@Override
	public ArrayList<ReplyVO> getReplyList(int galleryNum) {
		return dao.getReplyList(galleryNum);
	}

	//댓글 작성
	@Override
	public void writeReply(ReplyVO vo) {
		dao.writeReply(vo);
	}

	//댓글 삭제
	@Override
	public void deleteReply(int replyNum) {
		dao.deleteReply(replyNum);
	}
	
}