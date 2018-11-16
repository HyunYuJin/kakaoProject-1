package com.kakao.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.service.ImageService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ImageUploadController implements Controller{

	HashMap<String,String> list_cha = null;
	HashMap<String,String> list_cate = null;
	
	public void initList()
	{
		list_cha = new HashMap<String,String>();
		list_cate = new HashMap<String,String>();
		list_cha.put("lion","1라이언");
		list_cha.put("apeach","2어피치");
		list_cha.put("neo","3네오");
		list_cha.put("muzi","4무지");
		list_cha.put("tubo","5튜브");
		list_cha.put("jay_g","6제이지");
		list_cha.put("frado","7프로도");
		
		list_cate.put("stationery","문구");
		list_cate.put("clothes","의류");
		list_cate.put("doll","인형");
		list_cate.put("goods","잡화");
		list_cate.put("jewelry","쥬얼리");
	}
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		if(list_cha == null && list_cate == null)
			initList();
		
		ImageService service = ImageService.getInstance();
		//ServletContext context = req.getServletContext();
		req.setCharacterEncoding("UTF-8");
		//String saveDir = context.getContextPath();		
		String cha = list_cha.get(req.getParameter("cha"));
		String category = list_cate.get(req.getParameter("category"));
		String saveDir = "C:\\git\\kakaoProject\\WebContent\\쇼핑몰\\쇼핑몰\\" + cha + "\\" + category;
		int maxSize = 3 * 1024 * 1024;
		String encoding = "UTF-8";
		MultipartRequest multi = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String formname;
		String fileName;
		ArrayList<String> fileNames = new ArrayList<String>(); //dao에 보내져서 실질적으로 db에 저장될 파일 이름들 -> savedir과 함계 보내짐
		Enumeration form = multi.getFileNames();
		while(form.hasMoreElements())
		{
			formname = (String) form.nextElement();
			fileName = multi.getFilesystemName(formname);
			if(!fileName.isEmpty())
				fileNames.add(fileName); //null이아니면 fileNames에 추가 
		}
		service.insertImages(saveDir,fileNames);
		//service.uploadImage(saveDir + "\\" + );
	}

}
