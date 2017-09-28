package com.sesoc.test.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.test.vo.CompanyVO;
import com.sesoc.test.vo.UserVO;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession sqlsession;
	
	//일반 회원 가입
	@Override
	public int joinUser(UserVO user) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.joinUser(user);
	}
	
	//기업 회원 가입
	@Override
	public int joinCompany(CompanyVO company) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.joinCompany(company);
	}
	
	//일반 회원 로그인
	@Override
	public UserVO loginUser(UserVO user) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.loginUser(user);
	}
	
	//기업 회원 로그인
	@Override
	public CompanyVO loginCompany(CompanyVO company) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.loginCompany(company);
	}
	
	//일반 회원 목록, 검색
	@Override
	public ArrayList<UserVO> userList(Map<String, String> userMap, int startRecord, int countPerPage) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		RowBounds userRb = new RowBounds(startRecord, countPerPage);
		return mapper.userList(userMap, userRb);
	}

	//페이징_일반
	@Override
	public int userPaging(Map<String, String> userMapPage) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.userPaging(userMapPage);
	}
	
	//기업 회원 목록, 검색
	@Override
	public ArrayList<CompanyVO> companyList(Map<String, String> companyMap, int startRecord, int countPerPage) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		RowBounds companyRb = new RowBounds(startRecord, countPerPage);
		return mapper.companyList(companyMap, companyRb);
	}

	//페이징_기업
	@Override
	public int companyPaging(Map<String, String> companyMapPage) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.companyPaging(companyMapPage);
	}
	
	//일반 회원 열람
	@Override
	public UserVO userRead(String id) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.userRead(id);
	}

	//기업 회원 열람
	@Override
	public CompanyVO companyRead(String id) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.companyRead(id);
	}

	//일반 회원 정보 수정
	@Override
	public int modifyUser(UserVO user) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.modifyUser(user);
	}

	//기업 회원 정보 수정
	@Override
	public int modifyCompany(CompanyVO company) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.modifyCompany(company);
	}
	
	//일반 회원 삭제
	@Override
	public int userDelete(String id) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.userDelete(id);
	}
	
	//기업 회원 삭제
	@Override
	public int companyDelete(String id) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.companyDelete(id);
	}

	//기업 회원 승인
	@Override
	public int setAuthority(String coId) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.setAuthority(coId);
	}
	
	//기업 회원 승인 철회
	@Override
	public int setAuthorityRemove(String coId) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.setAuthorityRemove(coId);
	}

	//일반 회원 아이디 찾기
	@Override
	public ArrayList<UserVO> searchUserId(UserVO vo) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.searchUserId(vo);
	}
	
	//일반 회원 비밀번호 찾기
	@Override
	public UserVO userPwd(UserVO vo) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.userPwd(vo);
	}
	
	//기업 회원 아이디 찾기
	@Override
	public ArrayList<CompanyVO> searchCompanyId(CompanyVO vo) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.searchCompanyId(vo);
	}

	//기업 회원 비밀번호 찾기
	@Override
	public CompanyVO companyPwd(CompanyVO vo) {
		UserMapper mapper = sqlsession.getMapper(UserMapper.class);
		return mapper.companyPwd(vo);
	}

}