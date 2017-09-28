package com.sesoc.test.controller;

import java.util.ArrayList;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.sesoc.test.service.BoardService;
import com.sesoc.test.util.PageNavigator;
import com.sesoc.test.vo.GalleryVO;
import com.sesoc.test.vo.ReplyVO;

@Controller
@RequestMapping("/board")
public class BoardController<ReplyVo> {
	
	@Autowired
	private BoardService service;
	
	//갤러리 리스트
	@RequestMapping(value = "gallery")
	public String gallery(Model model,
			@RequestParam(value="currentPage", defaultValue="1") int currentPage,
			@RequestParam(value="searchKeyword", defaultValue="") String searchKeyword,
			String searchkeyCondition,
			String searchCondition,
			Map<String, String> map
			){
		map.put("searchKeyword", searchKeyword);
		map.put("searchkeyCondition", searchkeyCondition);
		map.put("searchCondition", searchCondition);
		
		PageNavigator navi = service.getNavi(currentPage, map);
		
		model.addAttribute("list", service.boardList(map, navi));
		model.addAttribute("navi", navi);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("searchCondition", searchCondition);
		
		return "/Gallery/galleryForm";
	}
	
	//갤러리 열람
	@RequestMapping(value = "readBoard", method = RequestMethod.GET)
	public String readBoard(int galleryNum,Model model) {
		service.readBoard(galleryNum,model);
		return "/Gallery/readForm";
	}
	
	//갤러리 작성 폼
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write() {
		return "/Gallery/writeForm";
	}
	
	//갤러리 작성
	@RequestMapping(value = "writeBoard", method = RequestMethod.POST)
	public String readBoard(GalleryVO vo,MultipartFile uploadFile) {
		service.writeBoard(vo,uploadFile);
		return "redirect:/board/gallery";
	}
	
	//갤러리 삭제
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(int galleryNum) {
		service.deleteBoard(galleryNum);
		return "redirect:/board/gallery";
	}
	
	//갤러리 수정 폼
	@RequestMapping(value = "modifyform", method = RequestMethod.GET)
	public String modifyForm(int galleryNum,Model model) {
		service.readBoard(galleryNum,model);
		return "/Gallery/modifyForm";
	}
	//갤러리 수정
	@RequestMapping(value = "modifyBoard", method = RequestMethod.POST)
	public String modifyBoard(GalleryVO gallery,MultipartFile uploadFile) {
		service.modifyBoard(gallery, uploadFile);
		return "redirect:/board/gallery";
	}
	
	//댓글 리스트
	@RequestMapping(value = "getReplyList", method = RequestMethod.POST)
	@ResponseBody 
	public ArrayList<ReplyVO> getReplyList(int galleryNum) {
		return service.getReplyList(galleryNum);
	}
	
	//댓글 작성
	@RequestMapping(value = "writeReply", method = RequestMethod.POST)
	@ResponseBody
	public void writeReply(ReplyVO vo) {
		service.writeReply(vo);
	}
	
	//댓글 삭제
	@RequestMapping(value = "deleteReply")
	@ResponseBody
	public void deleteReply(int replyNum) {
		service.deleteReply(replyNum);
	}
	
}