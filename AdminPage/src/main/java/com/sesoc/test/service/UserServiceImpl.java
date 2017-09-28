package com.sesoc.test.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sesoc.test.dao.UserDao;
import com.sesoc.test.util.Mail;
import com.sesoc.test.util.PageNavigator;
import com.sesoc.test.vo.CompanyVO;
import com.sesoc.test.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao dao;
	private final int countPerPage = 10;
	private final int pagePerGroup = 5;
	
	//일반 회원 가입
	@Override
	public void joinUser(UserVO user) {
		dao.joinUser(user);
	}
	
	//기업 회원 가입
	@Override
	public void joinCompany(CompanyVO company) {
		dao.joinCompany(company);
	}
	
	//일반 회원 로그인
	@Override
	public UserVO loginUser(UserVO user) {
		return	dao.loginUser(user);
	}
	
	//기업 회원 로그인
	@Override
	public CompanyVO loginCompany(CompanyVO company) {
		return dao.loginCompany(company);
	}
	
	//일반 회원 목록, 검색
	@Override
	public ArrayList<UserVO> getUserList(Map<String, String> userMap, PageNavigator userNavi) {
		return dao.userList(userMap, userNavi.getStartRecord(), userNavi.getCountPerPage());
	}

	//페이징_일반
	@Override
	public PageNavigator userNavi(int currentPage, Map<String, String> userMapPage) {
		int totalRecordsCount = dao.userPaging(userMapPage);
		PageNavigator userNavi = new PageNavigator(countPerPage,pagePerGroup,currentPage,totalRecordsCount);
		return userNavi;
	}
	
	//기업 회원 목록, 검색
	@Override
	public ArrayList<CompanyVO> getCompanyList(Map<String, String> companyMap, PageNavigator companyNavi) {
		return dao.companyList(companyMap, companyNavi.getStartRecord(), companyNavi.getCountPerPage());
	}
	
	//페이징_기업
	@Override
	public PageNavigator companyNavi(int currentPage, Map<String, String> companyMapPage) {
		int totalRecordsCount = dao.companyPaging(companyMapPage);
		PageNavigator companyNavi = new PageNavigator(countPerPage,pagePerGroup,currentPage,totalRecordsCount);
		return companyNavi;
	}

	//일반 회원 열람
	@Override
	public UserVO userRead(String id) {
		return dao.userRead(id);
	}
	
	//기업 회원 열람
	@Override
	public CompanyVO companyRead(String id){
		return dao.companyRead(id);
	}

	//일반 회원 정보 수정
	@Override
	public boolean modifyUser(UserVO user) {
		if(dao.modifyUser(user) != 1) return false;
		return true;
	}

	//기업 회원 정보 수정
	@Override
	public boolean modifyCompany(CompanyVO company) {
		if(dao.modifyCompany(company) != 1) return false;
		return true;
	}
	
	//일반 회원 삭제
	@Override
	public boolean userDelete(String id) {
		if(dao.userDelete(id) != 1) return false;
		return true;
	}

	//기업 회원 삭제
	@Override
	public boolean companyDelete(String id){
		if(dao.companyDelete(id) != 1) return false;
		return true;
	}

	//기업 회원 승인
	@Override
	public boolean setAuthority(String coId) {
		if(dao.setAuthority(coId) != 1) return false;
		return true;
	}
	
	//기업 회원 승인 철회
	@Override
	public boolean setAuthorityRemove(String coId) {
		if(dao.setAuthorityRemove(coId) != 1) return false;
		return true;
	}

	//일반 회원 아이디 중복체크
	@Override
	public boolean idCheck(UserVO vo) {
		if(dao.loginUser(vo)==null){	
			return false;			
		}
		return true;
	}
	
	//기업 회원 아이디 중복체크
	@Override
	public boolean coIdCheck(CompanyVO vo) {
		if(dao.loginCompany(vo) == null){
			return false;
		}
		return true;
	}

	//일반 회원 아이디 찾기
	@Override
	public void searchUserId(Model model, UserVO vo) {
		ArrayList<UserVO> list =dao.searchUserId(vo);
		ArrayList<String> list2 = new ArrayList<>();
		
		for (UserVO userVO : list) {
			String id = userVO.getId();
			StringBuffer newid = new StringBuffer(id);
			newid.replace(2, 6,"****");
			String reid = new String(newid);
			list2.add(reid);
		}
		
		model.addAttribute("list2", list2);
	}

	//기업 회원 아이디 찾기
	@Override
	public void searchCompanyId(CompanyVO vo, Model model) {
		ArrayList<CompanyVO> list =dao.searchCompanyId(vo);
		ArrayList<String> list2 = new ArrayList<>();
		
		for (CompanyVO companyVO : list) {
			String id = companyVO.getCoId();
			StringBuffer newid = new StringBuffer(id);
			newid.replace(2, 6,"****");
			String reid = new String(newid);
			list2.add(reid);
		}
		
		model.addAttribute("list2", list2);
		
	}

	//일반 회원 비밀번호 찾기
	@Override
	public boolean userPwd(String id, String email) {
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setEmail(email);
		UserVO newvo=dao.userPwd(vo);
		
		if(newvo==null){
			return false;
		}else{
			Mail.sendMail2(newvo.getEmail(),newvo.getPwd());
			return true;
		}
	}

	//기업 회원 비밀번호 찾기
	@Override
	public boolean companyPwd(String coId, String coManagerEmail) {
		CompanyVO vo = new CompanyVO();
		vo.setCoId(coId);
		vo.setCoManagerEmail(coManagerEmail);
		CompanyVO newvo=dao.companyPwd(vo);
		
		if(newvo==null){
			return false;
		}else{
			Mail.sendMail2(newvo.getCoManagerEmail(),newvo.getCoPwd());
			return true;
		}
	}

}