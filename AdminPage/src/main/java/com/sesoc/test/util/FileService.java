package com.sesoc.test.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class FileService {
	
	private static final String FILE_PATH="C:/fileupload/";
	
	public static String saveFile(MultipartFile uploadFile){
		
		String savedFileName=UUID.randomUUID().toString();
		
		try{
		uploadFile.transferTo(new File("C:/fileupload/"+savedFileName));
		}catch(Exception e){
			e.printStackTrace();
		}
		return savedFileName;
	
	}
	
	public static void deleteFile(String savedFileName){
		File file = new File(FILE_PATH+savedFileName);
		if(file.exists()) file.delete();
	}
}
