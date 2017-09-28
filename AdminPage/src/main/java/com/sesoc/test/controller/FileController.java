package com.sesoc.test.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sesoc.test.service.FileService;
import com.sesoc.test.util.Mail;
import com.sesoc.test.util.PageNavigator;
import com.sesoc.test.vo.CompanyVO;
import com.sesoc.test.vo.FurnitureVO;
import com.sesoc.test.vo.ImgVO;

import sun.misc.BASE64Decoder;

@Controller
@RequestMapping("/file")
public class FileController {
	
	@Autowired
	private FileService service;

	// jincom << 이부분을 바꿔주세요
	// C:/Users/SCITMaster/git/우리레포지터리 이름/AdminPage/src/main/webapp/resources/file/
	// C:/Users/(사용자 이름) /git/우리레포지터리 이름/AdminPage/src/main/webapp/resources/file/
	// C:/Users/(사용자 이름) /git/우리레포지터리 이름/AdminPage/src/main/webapp/resources/file/maps/
	private String path="C:/Users/SCITMASTER/git/DIYFinal/AdminPage/AdminPage/src/main/webapp/resources/file/";
	private String path1="C:/Users/SCITMASTER/git/DIYFinal/AdminPage/AdminPage/src/main/webapp/resources/file/maps/";
	private Mail mail;

	//가구 라이브러리 업로드
	@RequestMapping(value = "furnitureUpload", method = RequestMethod.GET)
	public String furnitureUpload(Model model) {
		service.find(model);
		return "/Company/companyLibraryUpload";
	}
	
	//파일 저장
	@RequestMapping(value = "fileSaved")
	public String fileSaved(FurnitureVO vo,HttpServletRequest request, HttpServletResponse response,HttpSession session){
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest)request;//다중파일 업로드
		List<MultipartFile> files = multipartRequest.getFiles("uploadFile");
		
		String coNAME = (String) session.getAttribute("coName");

		vo.setCoNAME(coNAME);
		vo.setObjPath(files.get(0).getOriginalFilename());
		vo.setMtlPath(files.get(1).getOriginalFilename());
		vo.setImgPath(files.get(2).getOriginalFilename());
		vo.setObjTexture1(files.get(3).getOriginalFilename());
		vo.setObjTexture2(files.get(4).getOriginalFilename());
		vo.setObjTexture3(files.get(5).getOriginalFilename());
		vo.setObjTexture4(files.get(6).getOriginalFilename());
		
		service.fileSaved(vo, files,path,path1);
		return "redirect:/";
	}
	
	//가구 라이브러리 목록(검색, 페이징)
	@RequestMapping(value="library")
	public String library(
			@RequestParam(value="currentPage", defaultValue="1") int currentPage,
			@RequestParam(value="libraryKeyword", defaultValue="") String libraryKeyword,
			String libraryCondition,
			String coNAME,
			Map<String, String> libraryMap,
			Model model
			){
		libraryMap.put("libraryKeyword", libraryKeyword);
		libraryMap.put("libraryCondition", libraryCondition);
		libraryMap.put("CompanyName", coNAME);

		PageNavigator libraryNavi = service.libraryNavi(currentPage, libraryMap);
		model.addAttribute("libraryList", service.getLibraryList(libraryMap, libraryNavi));
		model.addAttribute("libraryNavi", libraryNavi);
		model.addAttribute("libraryKeyword", libraryKeyword);
		model.addAttribute("libraryCondition", libraryCondition);
		
		return "/Company/companyFurnitureList";
	}
	
	//가구 라이브러리 열람
	@RequestMapping(value = "libraryRead", method = RequestMethod.GET)
	public String libraryRead(int furnitureNum, Model model,HttpSession session) {
		session.setAttribute("furnitureNum",service.libraryRead(furnitureNum).getFurnitureNum());  
		model.addAttribute("libraryRead", service.libraryRead(furnitureNum));
		return "/Company/libraryRead";
	}
	
	//메시지 송신 폼
	@RequestMapping(value="sendMessage", method = RequestMethod.GET)
	public String sendMessage(){
		return "/Company/sendMessage";
	}
	//메시지 송신
	@RequestMapping(value="send", method = RequestMethod.POST)
	public String send(String coManagerEmail, String title, String content){
		CompanyVO company = new CompanyVO(); 
		company.setCoManagerEmail(coManagerEmail);

		boolean result = mail.sendMail3(coManagerEmail, title, content);
		if(result){
			return "redirect:/";
		}
		
		return "home";
	}
	
	//가구 라이브러리 삭제
	@RequestMapping(value="furnitureDelete", method = RequestMethod.GET)
	public String furniturnDelete(int furnitureNum){
		FurnitureVO vo = service.furniturnDelete(furnitureNum,path,path1);
		String a = vo.getCoNAME();
		
		if(a == "Ikea"){
			return "redirect:/file/library?coNAME=Ikea";
		}else if(a=="Casamia"){
			return "redirect:/file/library?coNAME=Casamia";
		}else{
			return "redirect:/file/library?coNAME=Hanssem";
		}
	}
	
	//img 파일 업로드 테스트용
	@RequestMapping(value="test", method = RequestMethod.POST)
	@ResponseBody
	public String test(String imgData, HttpServletRequest request, HttpSession session) throws Throwable{
		//저장할 uuid
		String uuid = UUID.randomUUID().toString();
		//로그인 된 아이디
		String id = (String) session.getAttribute("id");
		
		String path = "C:/Users/SCITMASTER/git/DIY/AdminPage/AdminPage/src/main/webapp/resources/upload/";
		String fullpath = "";
		String[] strParts = imgData.split(",");
		String rstStrImg = strParts[1];	//,로 구분하여 뒷 부분 이미지 데이터를 임시저장
		
		DateFormat sdf = new SimpleDateFormat("yyMMddhhmmss");
		Date nowDate = new Date();
		String now = sdf.format(nowDate);
		String filenm = now +"DIY_"+id+"_"+uuid+".png";

//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
		
//		String filenm = sdf.format(new Date()).toString()+"DIY_"+id+"_"+uuid+".png";
		
		BufferedImage image = null;
		byte[] byteImg;
		BASE64Decoder decoder = new BASE64Decoder();
		byteImg = decoder.decodeBuffer(rstStrImg);  //base64 디코더를 이용하여 byte 코드로 변환
		ByteArrayInputStream bis = new ByteArrayInputStream(byteImg);
		image= ImageIO.read(bis);   //BufferedImage형식으로 변환후 저장
		bis.close();
		fullpath=path+filenm;
		File folderObj= new File(imgData);
		if( !folderObj.isDirectory() ) folderObj.mkdir();
		File outputFile= new File(fullpath);  //파일객체 생성
		if( outputFile.exists() ) outputFile.delete();
		
		ImgVO imgVO = new ImgVO(filenm, id, null);
		service.uploadImg(imgVO);
		ImageIO.write(image, "png", outputFile); //서버에 파일로 저장
		return "";
	}
	
	//가구 작업창 표시용	
	@RequestMapping(value="getFurnitureList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<FurnitureVO> getFurnitureList(){
		return service.getFurnitureList();
	}
		
}