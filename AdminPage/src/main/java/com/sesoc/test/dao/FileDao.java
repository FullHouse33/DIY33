package com.sesoc.test.dao;

import java.util.ArrayList;
import java.util.Map;

import com.sesoc.test.vo.CompanyVO;
import com.sesoc.test.vo.FurnitureVO;
import com.sesoc.test.vo.ImgVO;

public interface FileDao {

	public ArrayList<CompanyVO> find();//??

	public int fileSaved(FurnitureVO vo);//파일 저장

	public int libraryPaging(Map<String, String> libraryMap);//페이징

	public ArrayList<FurnitureVO> libraryList(Map<String, String> libraryMap, int startRecord, int countPerPage);//가구 라이브러리 목록

	public FurnitureVO libraryRead(int furnitureNum);//가구 라이브러리 열람

	public FurnitureVO furniturDelete(int furnitureNum);//가구 라이브러리 삭제
	
	public ArrayList<FurnitureVO> getFurnitureList();//가구 작업창 표시용

	public void uploadImg(ImgVO imgVO);//img 파일 업로드 테스트용

}