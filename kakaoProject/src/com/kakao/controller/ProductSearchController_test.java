package com.kakao.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.VO.ProductVO;
import com.kakao.service.ProductService;

public class ProductSearchController_test implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		res.setContentType("text/html; charset = UTF-8");
		PrintWriter out = res.getWriter();
		req.setCharacterEncoding("UTF-8");
		ProductService service = ProductService.serviceGetInstance();
		String name = req.getParameter("name");
		System.out.println("name : " + name);
		ArrayList<ProductVO> list = service.searchProduct(name);
		if(list==null)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('검색 결과 존재하지않습니다.');");
			out.println("location='ProductAdmin.jsp';");
			out.println("</script>");
			return;
		}
		for(ProductVO vo : list)
		{
			System.out.println("name : " + vo.getName());
		}
		req.setAttribute("slist",list);
		HttpUtil.forward(req, res,"ProductAdmin.jsp");
		return;
	}

}
