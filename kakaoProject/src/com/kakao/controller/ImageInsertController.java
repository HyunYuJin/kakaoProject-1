package com.kakao.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.VO.ImageVO;
import com.kakao.service.ImageService;

public class ImageInsertController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//이미지슬라이드 추가창에서는 서브의 이미지만 추가가능하다
		req.setCharacterEncoding("UTF-8");
		ImageService service = ImageService.getInstance();
		String src = req.getParameter("src");
		if(src == null || req.getParameter("num") == null)
		{
			System.out.println("삽입실패");
			HttpUtil.forward(req, res,"ProductAdmin.jsp");
			return;
		}
		int productNum = Integer.parseInt(req.getParameter("num"));
		ImageVO image = new ImageVO();
		image.setSrc(src);
		image.setProductNum(productNum);
		service.insertImage(image);
		System.out.println("삽입완료");
		HttpUtil.forward(req, res,"ProductAdmin.jsp");
		return;
	}

	
}
