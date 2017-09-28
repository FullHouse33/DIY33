package com.sesoc.test.dao;

import java.util.ArrayList;
import java.util.Map;

import com.sesoc.test.vo.CompanyVO;
import com.sesoc.test.vo.UserVO;

public interface UserDao {
	
	///////////////////관리자///////////////////
	//일반 회원 목록, 검색
	public ArrayList<UserVO> userList(Map<String, String> userMap, int startRecord, int countPerPage);
	
	//페이징_일반
	public int userPaging(Map<String, String> userMapPage);
	
	//기업 회원 목록, 검색
	public ArrayList<CompanyVO> companyList(Map<String, String> companyMap, int startRecord, int countPerPage);
	
	//페이징_기업
	public int companyPaging(Map<String, String> companyMapPage);
	
	//기업 회원 승인
	public int setAuthority(String coId);

	//기업 회원 승인 철회
	public int setAuthorityRemove(String coId);
	
	///////////////////일반회원///////////////////
	//회원 가입
	public int joinUser(UserVO user);

	//로그인
	public UserVO loginUser(UserVO user);
	
	//회원 정보 수정
	public int modifyUser(UserVO user);
	
	//아이디 찾기
	public ArrayList<UserVO> searchUserId(UserVO vo);
		
	//비밀번호 찾기
	public UserVO userPwd(UserVO vo);
	
	///////////////////기업회원///////////////////
	//회원 가입
	public int joinCompany(CompanyVO company);
	
	//로그인
	public CompanyVO loginCompany(CompanyVO company);
	
	//회원 정보 수정
	public int modifyCompany(CompanyVO company);
	
	//아이디 찾기
	public ArrayList<CompanyVO> searchCompanyId(CompanyVO vo);
		
	//비밀번호 찾기
	public CompanyVO companyPwd(CompanyVO vo);
	
	///////////////////공통///////////////////
	//일반 회원 열람
	public UserVO userRead(String id);

	//기업 회원 열람
	public CompanyVO companyRead(String id);
	
	//일반 회원 삭제
	public int userDelete(String id);

	//기업 회원 삭제
	public int companyDelete(String id);
	
}