package com.kakao.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.service.MemberService;

public class IdCheckController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("idcheck 실행");
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset = UTF-8");
		MemberService service = MemberService.serviceGetInstance();
		PrintWriter out = res.getWriter();
		String id = req.getParameter("id");
		System.out.println("id : " + id);
		boolean value = service.idCheckService(id);
		System.out.println("value : " + value);
		if(!value)
		{
			res.getWriter().write("0"); //아이디 중복 존재
			//return;
		}
		/*req.setAttribute("id",id);
		req.setAttribute("msg","사용할 수 있는 아이디입니다.");
		HttpUtil.forward(req, res,"join.jsp");*/
		else
		{
			res.getWriter().write("1");
		}//아이디 사용 가능
		/*out.println("<script language = 'javascript'>");
		out.print("alert('사용가능한 아이디입니다.');");
		out.print("history.back(-1)");
		out.println("</script>");
		out.close();*/
		return;
	}

	
}
