package com.sesoc.test.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.sesoc.test.dao.FileDao;
import com.sesoc.test.util.PageNavigator;
import com.sesoc.test.vo.CompanyVO;
import com.sesoc.test.vo.FurnitureVO;
import com.sesoc.test.vo.ImgVO;

@Service
public class FileServiceImpl implements FileService{
	
	@Autowired
	private FileDao dao;
	private final int countPerPage = 10;
	private final int pagePerGroup = 5;
	
	//??
	@Override
	public void find(Model model) {
		ArrayList<CompanyVO> list = new ArrayList<>();
		list=dao.find();
		model.addAttribute("company", list);
	}

	//파일 저장
	@Override
	public void fileSaved(FurnitureVO vo, List<MultipartFile> files, String path,String path1) {
		dao.fileSaved(vo);
		
		File paths = new File(path);
		File paths1 = new File(path1);
		
		// 저장 디렉토리가 없다면 생성
		if (!paths.isDirectory()) paths.mkdir();
		if (!paths1.isDirectory()) paths1.mkdir();
		
		String originalFileName1 = files.get(0).getOriginalFilename();
		String originalFileName2 = files.get(1).getOriginalFilename();
		String originalFileName3 = files.get(2).getOriginalFilename();
		
		String savedFileName1 = originalFileName1; // HDD에 저장되는 파일명 : filename + "_" + UUID +
		String savedFileName2 = originalFileName2; 
		String savedFileName3 = originalFileName3; 
		File serverFile = new File(path+ savedFileName1);
		try {
			// HDD 저장
			files.get(0).transferTo(serverFile);
		} catch (Exception e) {
		}
		File serverFile2 = new File(path+ savedFileName2);
		try {
			// HDD 저장
			files.get(1).transferTo(serverFile2);
		} catch (Exception e) {
		}
		File serverFile3 = new File(path+ savedFileName3);
		try {
			// HDD 저장
			files.get(2).transferTo(serverFile3);
		} catch (Exception e) {
		}
		
		String originalFileName4 =files.get(3).getOriginalFilename();
		String originalFileName5 =files.get(4).getOriginalFilename();
		String originalFileName6 =files.get(5).getOriginalFilename();
		String originalFileName7 =files.get(6).getOriginalFilename();
		
		String savedFileName4 = originalFileName4; // HDD에 저장되는 파일명 : filename + "_" + UUID +
		String savedFileName5 = originalFileName5; 
		String savedFileName6 = originalFileName6; 
		String savedFileName7 = originalFileName7; 
		File serverFile4 = new File(path1+ savedFileName4);
		try {
			// HDD 저장
			files.get(3).transferTo(serverFile4);
		} catch (Exception e) {
		}
		File serverFile5 = new File(path1+ savedFileName5);
		try {
			// HDD 저장
			files.get(4).transferTo(serverFile5);
		} catch (Exception e) {
		}
		File serverFile6 = new File(path1+ savedFileName6);
		try {
			// HDD 저장
			files.get(5).transferTo(serverFile6);
		} catch (Exception e) {
		}
		File serverFile7 = new File(path1+ savedFileName7);
		try {
			// HDD 저장
			files.get(6).transferTo(serverFile7);
		} catch (Exception e) {
		}
	}

	//페이징
	@Override
	public PageNavigator libraryNavi(int currentPage, Map<String, String> libraryMap) {
		int totalRecordsCount = dao.libraryPaging(libraryMap);
		PageNavigator libraryNavi = new PageNavigator(countPerPage,pagePerGroup,currentPage,totalRecordsCount);
		return libraryNavi;
	}

	//가구 라이브러리 목록
	@Override
	public ArrayList<FurnitureVO> getLibraryList(Map<String, String> libraryMap, PageNavigator libraryNavi) {
		return dao.libraryList(libraryMap, libraryNavi.getStartRecord(), libraryNavi.getCountPerPage());
	}

	//가구 라이브러리 열람
	@Override
	public FurnitureVO libraryRead(int furnitureNum) {
		return dao.libraryRead(furnitureNum);
	}

	//가구 라이브러리 삭제
	@Override
	public FurnitureVO furniturnDelete(int furnitureNum, String path, String path1) {
		FurnitureVO vo = dao.furniturDelete(furnitureNum);
		
		String fullpath1 = path+vo.getObjPath();
		String fullpath2 = path+vo.getMtlPath();
		String fullpath3 = path+vo.getImgPath();
		String fullpath4 = path1+vo.getObjTexture1();
		String fullpath5 = path1+vo.getObjTexture2();
		String fullpath6 = path1+vo.getObjTexture3();
		String fullpath7 = path1+vo.getObjTexture4();
	
		File delFile1 = new File(fullpath1);
		if(delFile1.isFile()){
			delFile1.delete();
		}
		
		File delFile2 = new File(fullpath2);
		if(delFile2.isFile()){
			delFile2.delete();
		}
		
		File delFile3 = new File(fullpath3);
		if(delFile3.isFile()){
			delFile3.delete();
		}
		
		File delFile4 = new File(fullpath4);
		if(delFile4.isFile()){
			delFile4.delete();
		}
		
		File delFile5 = new File(fullpath5);
		if(delFile5.isFile()){
			delFile5.delete();
		}
		
		File delFile6 = new File(fullpath6);
		if(delFile6.isFile()){
			delFile6.delete();
		}
		
		File delFile7 = new File(fullpath7);
		if(delFile7.isFile()){
			delFile7.delete();
		}
		
		return vo;
	}

	//가구 작업창 표시용
	@Override
	public ArrayList<FurnitureVO> getFurnitureList() {
		return dao.getFurnitureList();
	}

	//img 파일 업로드 테스트용
	@Override
	public void uploadImg(ImgVO imgVO) {
		dao.uploadImg(imgVO);
	}
}