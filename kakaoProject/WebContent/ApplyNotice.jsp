<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.kakao.service.FieldService" %>
<%@ page import = "com.kakao.VO.FieldVO" %>
<%@ page import = "java.util.ArrayList"
import = "com.kakao.controller.HttpUtil" %>
<%
if(session.getAttribute("cUser") == null)
{
	HttpUtil.forward(request, response,"index.jsp");
	return;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>채용공고</title>
    <link rel="icon" href="images/lion.png" type="image/x-icon">
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <link rel="stylesheet" href="css/ApplyNotice.css" type="text/css">
</head>
<body>
<%
	FieldService service = FieldService.getInstance();
	ArrayList<FieldVO> list = null;
	ArrayList<FieldVO> slist = null;
	if(service.getFieldList() != null)
	{
		list = service.getFieldList();
	}
	if(request.getAttribute("searchList") != null)
	{
		slist = (ArrayList<FieldVO>) request.getAttribute("searchList");
	}
%>
    <div id="wrap">
        <header>
            <%@ include file = "header.jsp" %>
        </header>
        <section id="Applykeyimage">
        	<img src="images/applyNoticeKey.png">
        	<span class="keyimage_title">제주라이프</span>
        	<span class="keyimage-content1">많은 카카오 크루들이 이곳에 처음 오면 충격에 빠지곤 해요. '아니 대한민국에 이런 기업이 있다니!', <br>'텃밭도 있고~ 드론도 날리고~ 실내에서 암벽등반까지?'
        	<br>무엇을 상상하든 그 이상의  임팩트를 주는 곳! 맑은 공기와 함께 자연을 느낄 수 있는 이곳은?</span>
        	<span class="keyimage-content2">돌하르방과 함께 자연과 함께 일할 수 있는 곳, <b>제주 스페이스</b>입니다.
        	<br><b>Life@제주</b>, 직접 느껴보세요!</span>
		</section>
        <section id="category_group">
        	<ul>
                <%
                for(int x = 0 ; x < list.size() ; x++)
                {
 					FieldVO vo = list.get(x);
 					int y;
 					for(y = 0; y < x ; y++)
 					{
 						if(vo.getDivision().equals((list.get(y).getDivision())))
 						{
 							System.out.println("vo : " + vo.getDivision() + " list : " + (list.get(y)).getDivision());
 							break;
 						}
 					}
 					if(x == y)
 					{%>
                	<li><a href="fieldSearchDivision.do?division=<%=vo.getDivision()%>"><%=vo.getDivision()%></a></li>            
                	<%}
                }%>
            
              </ul>
         </section>
         <section id="Apply_table">
                <table>
                    <tr>
                        <th>이름</th>
                        <th>내용</th>
                        <th>구분</th>
                    </tr>
                    
                   <%
                    if(slist == null)
                    {
                    	for(FieldVO vo : list)
                    	{
                    		System.out.println("applyNotice vo fieldname : " + vo.getName());
                    		
                    		%>
                    		<tr>
                    		<td><a href = "Technique.jsp?name=<%=vo.getName()%>"><%=vo.getName()%></a></td>
                        	<td>
                            <form action = "ApplyWrite.jsp">
                            <p><%=vo.getEmployeeType()%></p>
                            <p><%=vo.getWorkPlace()%></p>
                            <p><%=vo.getRecruitNum()%>명</p>
                            <input type = "hidden" value = "<%=vo.getName()%>" name = "field">
                            <p><input type="submit" value="지원하기" class="apply"></p>
                            </form>
                        </td>
                        <td>
                        <%=vo.getDivision()%>
                        </td>
                        </tr>
                    	<%}
                    }
                    else
                    {
                    	for(FieldVO vo : slist)
                    	{
                    		System.out.println("applyNotice vo fieldname : " + vo.getName());
                    	%>
                    		<tr>
                    		<td><a href = "Technique.jsp?name=<%=vo.getName()%>"><%=vo.getName()%></a></td>
                        	<td>
                            <form action = "ApplyWrite.jsp">
                            <p><%=vo.getEmployeeType()%></p>
                            <p><%=vo.getWorkPlace()%></p>
                            <p><%=vo.getRecruitNum()%>명</p>
                            <input type = "hidden" value = "<%=vo.getName()%>" name = "field">
                            <p><input type="submit" value="지원하기" class="apply"></p>
                            </form>
	                        </td>
	                        <td>
	                        <%=vo.getDivision()%>
	                        </td>
	                        </tr>
	                        
                   	<%}
                    }
                    %>
                </table>
            </section>
        
        <footer>
            <%@ include file = "footer.jsp" %>
        </footer>
    </div>
</body>
</html>