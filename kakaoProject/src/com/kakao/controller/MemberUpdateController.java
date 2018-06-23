package com.kakao.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.VO.MemberVO;
import com.kakao.service.MemberService;

public class MemberUpdateController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String phone = req.getParameter("phone");
		String mode = req.getParameter("mode");
		String gender = req.getParameter("gender");
		String birthDate = req.getParameter("birthDate");
		int num = Integer.parseInt(req.getParameter("num"));
		MemberVO member = new MemberVO();
		MemberService service = MemberService.serviceGetInstance();
		member.setNum(num);
		member.setPw(pw);
		member.setName(name);
		member.setEmail(email);
		member.setAddress(address);
		member.setPhone(phone);
		member.setBirthDate(birthDate);
		member.setGender(gender);
		System.out.println("mode : " + mode);
		if(mode.equals("user"))
		{
			service.MemberUpdateService(member);//유저 업데이트
			HttpUtil.forward(req, res, "index.jsp");
			return;
		}
		else
		{
			service.MemberUpdateService(member,num);
			HttpUtil.forward(req, res, "userAdmin.jsp");
			return;
		}
	}

	
}
