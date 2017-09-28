package com.sesoc.test.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.test.service.StatsService;
import com.sesoc.test.service.UserService;
import com.sesoc.test.util.Mail;
import com.sesoc.test.util.PageNavigator;
import com.sesoc.test.vo.CompanyVO;
import com.sesoc.test.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private Mail mail;
	
	@Autowired
	private UserService service;
	
	@Autowired
	private StatsService sservice;
	
	//동근추가 - 작업창
	@RequestMapping(value="workSpace")
	public String workSpace(){
		return "workSpace";
	}
	
	//관리자//
	//일반 회원 목록
	@RequestMapping(value = "userList")
	public String getUserList(
			@RequestParam(value="currentPage", defaultValue="1") int currentPage,
     		@RequestParam(value="userKeyword", defaultValue="") String userKeyword,
			String userCondition,
			Map<String, String> userMap,
			Model model) {
		userMap.put("userKeyword", userKeyword);
		userMap.put("userCondition", userCondition);
		
		PageNavigator userNavi = service.userNavi(currentPage, userMap);
		model.addAttribute("userList", service.getUserList(userMap, userNavi));
		model.addAttribute("userNavi", userNavi);
		model.addAttribute("userKeyword", userKeyword);
		model.addAttribute("userCondition", userCondition);
		
		return "/User/userList";
	}
	//기업 회원 목록
	@RequestMapping(value = "companyList")
	public String getCompanyList(
			@RequestParam(value="currentPage", defaultValue="1") int currentPage,
     		@RequestParam(value="companyKeyword", defaultValue="") String companyKeyword,
			String companyCondition,
			Map<String, String> companyMap,
			Model model) {
		companyMap.put("companyKeyword", companyKeyword);
		companyMap.put("companyCondition", companyCondition);
		
		PageNavigator companyNavi = service.companyNavi(currentPage, companyMap);
		model.addAttribute("companyList", service.getCompanyList(companyMap, companyNavi));
		model.addAttribute("companyNavi", companyNavi);
		model.addAttribute("companyKeyword", companyKeyword);
		model.addAttribute("companyCondition", companyCondition);
		
		return "/Company/companyList";
	}
	//기업 회원 승인
	@RequestMapping(value = "authority")
	public String authority(String coId, Model model) {
		model.addAttribute("autho", service.setAuthority(coId));
		return "redirect:companyList";
	}
	//기업 회원 승인 철회
	@RequestMapping(value = "authorityRemove")
	public String authorityRemove(String coId, Model model) {
		model.addAttribute("authoRemove", service.setAuthorityRemove(coId));
		return "redirect:companyList";
	}
	
	//일반//
	//회원 가입
	@RequestMapping(value="division", method=RequestMethod.GET)
	public String join(){
		return "division";
	}
	@RequestMapping(value="joinUserForm", method=RequestMethod.GET)
	public String joinUserForm(){
		return "/User/userJoinForm";
	}
	@RequestMapping(value="joinUser", method=RequestMethod.POST)
	public String joinUser(UserVO user){
		service.joinUser(user);	
		return "home";
	}
	//아이디 중복체크
	@RequestMapping(value = "idCheck", method = RequestMethod.POST)
	@ResponseBody
	public boolean idCheck(UserVO vo) {
		return service.idCheck(vo);		
	}
	//로그인
	@RequestMapping(value="loginUser", method = RequestMethod.GET)
	public String loginUser(UserVO user, HttpSession session, Model model) {
		UserVO result = service.loginUser(user);
		
		if(result != null){
			session.setAttribute("id", result.getId());
			session.setAttribute("pwd", result.getPwd());
			
			sservice.genFurnitureList(model, result);//로그인한 특정 유저에 맞는 추천 제품
		}
		
		sservice.bestFurnitureList(model);//유저에게 가장 인기 많은 제품
		
		return "home";
	}
	
	/*@RequestMapping(value="connectedUser", method=RequestMethod.GET)
	public String connectedUser(){
		return "/User/connectedUser";
	}*/
	
	//일반 회원 아이디 찾기
	@RequestMapping(value = "idSearch", method = RequestMethod.GET)
	public String idSearch() {
		return "idDivision";		
	}
	@RequestMapping(value = "userIdSearch", method = RequestMethod.GET)
	public String userIdSearch() {
		return "/User/userIdSearchForm";		
	}
	@RequestMapping(value = "userIdSearchAction", method = RequestMethod.POST)
	public String userIdSearchAction(Model model, UserVO vo) {
		service.searchUserId(model, vo);
		return "/User/userIdSearchForm";		
	}
	
	/*@RequestMapping(value = "userPage", method = RequestMethod.GET)
	public String userPage() {
		return "/User/userPageMenu";
	}*/
	
	//회원 정보 수정
	@RequestMapping(value = "userUpdateForm", method = RequestMethod.GET)
	public String userUpdateForm(String id, Model model) {
		model.addAttribute("userRead", service.userRead(id));
		return "/User/userUpdate";
	}
	@RequestMapping(value = "userUpdate")
	public String userUpdate(UserVO user, Model model) {
		model.addAttribute("user", service.modifyUser(user));
		return "/User/userPageMenu";
	}
	
	//기업//
	//회원가입
	@RequestMapping(value="joinCompanyForm", method=RequestMethod.GET)
	public String joinCompanyForm(){
		return "/Company/joinCompanyForm";
	}
	@RequestMapping(value="joinCompany", method=RequestMethod.POST)
	public String joinCompany(CompanyVO company){
		service.joinCompany(company);
		return "home";
	}
	//아이디 중복체크
	@RequestMapping(value = "coIdCheck", method = RequestMethod.POST)
	@ResponseBody
	public boolean coIdCheck(CompanyVO vo) {
		return service.coIdCheck(vo);		
	}
	//로그인
	@RequestMapping(value="loginCompany")
	public String loginCompany(CompanyVO company, HttpSession session) {
		CompanyVO result = service.loginCompany(company);
		
		if(result != null){
			session.setAttribute("CoId", result.getCoId());
			session.setAttribute("coName", result.getCoName());
			session.setAttribute("coPwd", result.getCoPwd());
			session.setAttribute("coAuth", result.getCoAuthority());
		}
		
		return "redirect:/";
	}
	
	/*@RequestMapping(value="connectedCompany", method=RequestMethod.GET)
	public String connectedCompany(){
		return "/Company/connectedCompany";
	}*/
	
	//기업 회원 아이디 찾기
	@RequestMapping(value = "companyIdSearch", method = RequestMethod.GET)
	public String companyIdSearch() {
		return "/Company/companyIdSearchForm";		
	}
	@RequestMapping(value = "companyIdSearchAction", method = RequestMethod.POST)
	public String companyIdSearchAction(Model model, CompanyVO vo) {
		service.searchCompanyId(vo, model);
		return "/Company/companyIdSearchForm";		
	}
	
	/*@RequestMapping(value = "companyPage", method = RequestMethod.GET)
	public String companyPage() {
		return "/Company/companyPageMenu";
	}*/
	
	//회원 정보 수정
	@RequestMapping(value = "companyUpdateForm", method = RequestMethod.GET)
	public String companyUpdateForm(String coId, Model model) {
		model.addAttribute("companyRead", service.companyRead(coId));
		return "/Company/companyUpdate";
	}
	@RequestMapping(value = "companyUpdate")
	public String companyUpdate(CompanyVO company, Model model) {
		model.addAttribute("company", service.modifyCompany(company));
		return "/Company/companyPageMenu";
	}

	//공통//
	//로그아웃
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	//일반 회원 열람
	@RequestMapping(value = "userRead", method = RequestMethod.GET)
	public String userRead(String id, Model model) {
		model.addAttribute("userRead", service.userRead(id));
		return "/User/userRead";
	}
	//기업 회원 열람
	@RequestMapping(value = "companyRead", method = RequestMethod.GET)
	public String companyRead(String CoId, Model model) {
		model.addAttribute("companyRead", service.companyRead(CoId));
		return "/Company/companyRead";
	}
	//일반 회원 삭제
	@RequestMapping(value = "userDelete", method = RequestMethod.GET)
	public String userDelete(String id, HttpSession session) {
		String user = (String) session.getAttribute("id");
		boolean result = service.userDelete(id);
		if(user.equals("admin")){
			if(result){
				return "redirect:userList";
			}
		}else if(user.equals(id)){
			if(result){
				return "redirect:/";
			}
		}
		return "redirect:userList";
	}
	//기업 회원 삭제
	@RequestMapping(value = "companyDelete", method = RequestMethod.GET)
	public String companyDelete(String coId, HttpSession session) {
		String user = (String) session.getAttribute("id");
		boolean result = service.companyDelete(coId);
		if(user.equals(coId)){
			if(result){
				return "redirect:/";
			}
		}
		return "redirect:companyList";
	}
	//메일 인증
	@RequestMapping(value = "mail")
	@ResponseBody
	public int mail(HttpSession session, String email) {
		int result = mail.sendMail(email);
		return result;
	}
	//비밀번호 찾기 폼
	@RequestMapping(value = "pwdSearch", method = RequestMethod.GET)
	public String  pwdSearch() {
		return "pwdSearchForm";		
	}
	//일반 회원 비밀번호 찾기
	@RequestMapping(value = "userPwd", method = RequestMethod.GET)
	public String  userPwd(String id, String email) {
		service.userPwd(id, email);
		return "home";		
	}
	//기업 회원 비밀번호 찾기
	@RequestMapping(value = "companyPwd", method = RequestMethod.GET)
	public String  companyPwd(String coId, String coManagerEmail) {
		service.companyPwd(coId, coManagerEmail);
		return "home";		
	}
	
}