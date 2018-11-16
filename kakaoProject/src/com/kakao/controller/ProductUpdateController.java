package com.kakao.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.VO.ProductVO;
import com.kakao.service.ImageService;
import com.kakao.service.ProductService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductService service = ProductService.serviceGetInstance();
		ImageService service_2 = ImageService.getInstance();
		req.setCharacterEncoding("UTF-8");
		int maxSize = 3 * 1024 * 1024;
		String encoding = "UTF-8";
		String saveDir = "C:\\git\\kakaoProject\\WebContent\\쇼핑몰\\쇼핑몰\\test";
		MultipartRequest multi = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		
		ProductVO vo = new ProductVO();
		int num = Integer.parseInt(multi.getParameter("num"));
		String name = multi.getParameter("name");
		int price = Integer.parseInt(multi.getParameter("price"));
		String detail = multi.getParameter("detail");
		String category = multi.getParameter("category");
		String cha = multi.getParameter("cha");
		vo.setName(name);
		vo.setDetail(detail);
		vo.setPrice(price);
		vo.setCategory(category);
		vo.setCha(cha);
		service.updateProduct(vo,num);
		
		String realSaveDir = "쇼핑몰/쇼핑몰/test";
		ArrayList<String> fileNames = null;
		String formname;
		String fileName;
		Enumeration form = multi.getFileNames();
		/*while(form.hasMoreElements())
		{
			formname = (String) form.nextElement();
			fileName = multi.getFilesystemName(formname);
			if(fileName != null)
				fileNames.add(fileName); //null이아니면 fileNames에 추가 
		}
		for(int x = 1 ; x < 7 ; x++)
		{
			if(multi.getParameter("file"+x) == "-1")
			{
				if(fileNames == null)
				{
					fileNames = new ArrayList<String>();					
				}
				fileNames.add()
			}
				
				
				
		}*/
		HttpUtil.forward(req, res,"ProductAdmin.jsp");
		return;
	}

}
