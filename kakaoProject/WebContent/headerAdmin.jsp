<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.kakao.VO.MemberVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kakao_Admin</title>
	<link rel="icon" href="images/lion.png" type="image/x-icon">
	<link rel="stylesheet" href="css/indexAdmin.css?ver=1" type="text/css">
	<link rel="stylesheet" href="css/login.css?ver=1" type="text/css">
</head>
<body>
	<a href="indexAdmin.jsp"><img src="images/logo.gif" alt="logo"></a>
	<div class="gnb">
		<span><a href="index.jsp">Hello Kakao</a><a href="#">Korea</a></span>
                	<span><a href="adminLoginProcess.do">Logout</a></span>
	</div>
	<nav>
                <ul>
                    <li><a href="userAdmin.jsp">회원관리</a></li>
                    <li><a href="ApplyAdmin.jsp">지원서관리</a></li>
                    <li><a href="ProductAdmin.jsp">상품관리</a></li>
                    <li><a href="orderAdmin.jsp">주문목록</a></li>
                    <li><a href="FieldAdmin.jsp">필드관리</a></li>
                </ul>
    </nav>
</body>
</html>