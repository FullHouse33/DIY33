package com.sesoc.test.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.ui.Model;

import com.sesoc.test.util.PageNavigator;
import com.sesoc.test.vo.CompanyVO;
import com.sesoc.test.vo.UserVO;

public interface UserService {
	//관리자
	public ArrayList<UserVO> getUserList(Map<String, String> userMap, PageNavigator userNavi);//일반 회원 목록, 검색
	public PageNavigator userNavi(int currentPage, Map<String, String> userMap);//페이징_일반
	public ArrayList<CompanyVO> getCompanyList(Map<String, String> companyMap, PageNavigator companyNavi);//기업 회원 목록, 검색
	public PageNavigator companyNavi(int currentPage, Map<String, String> companyMap);//페이징_기업
	public boolean setAuthority(String coId);//기업 회원 승인
	public boolean setAuthorityRemove(String coId);//기업 회원 승인 철회

	//일반
	public void joinUser(UserVO user);//회원 가입
	public UserVO loginUser(UserVO user);//로그인
	public boolean modifyUser(UserVO user);//회원 정보 수정
	public boolean idCheck(UserVO vo);//id 중복 검사
	public void searchUserId(Model model, UserVO vo);//아이디 찾기
	public boolean userPwd(String id, String email);//비밀번호 찾기
	
	//기업
	public void joinCompany(CompanyVO company);//회원 가입
	public CompanyVO loginCompany(CompanyVO company);//로그인
	public boolean modifyCompany(CompanyVO company);//회원 정보 수정
	public boolean coIdCheck(CompanyVO vo);//id 중복검사
	public void searchCompanyId(CompanyVO vo, Model model);//아이디 찾기
	public boolean companyPwd(String coId, String coManagerEmail);//비밀번호 찾기
	
	//공통
	public UserVO userRead(String id);//일반 회원 열람
	public CompanyVO companyRead(String id);//기업 회원 열람
	public boolean userDelete(String id);//일반 회원 삭제
	public boolean companyDelete(String id);//기업 회원 삭제
	
}