<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.kakao.controller.HttpUtil" %>
<!DOCTYPE html>
<html lang="ko">
<head>
     <meta http-equiv="Content-Type" http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>입사지원</title>
    <link rel="icon" href="images/lion.png" type="image/x-icon">
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <link rel="stylesheet" href="css/apply.css" type="text/css">
    <style>
    	.path5 { animation: dash 10s linear infinite; } @-webkit-keyframes dash { to { stroke-dashoffset: 0; } }
    </style>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
            $(function(){
                $('.step1').hover(
                function(){
                    $(this).animate({top: 30}, 500);
                    },
                function(){
                    $(this).animate({top: 66}, 500);
                });
                /*$('.step2').hover(
                function(){
                    $(this).animate({top: 30}, 500);
                    },
                function(){
                    $(this).animate({top: 0}, 500);

                });*/
                $('.step3').hover(
                function(){
                    $(this).animate({top: 30}, 500);
                    },
                function(){
                    $(this).animate({top: 90}, 500);

                });
                /*$('.step4').hover(
                function(){
                    $(this).animate({right: 30}, 500);
                    },
                function(){
                    $(this).animate({right: 70}, 500);

                });*/
            });
        </script>
</head>
<%
	if(session.getAttribute("cUser") == null)
	{
		out.println("<script type=\"text/javascript\">");
		out.println("alert('로그인이 필요합니디.');");
		out.println("location='login.jsp';");
		out.println("</script>");
	}
%>
<body>
    <div id="wrap">
        <header>
            <%@ include file="header.jsp" %>
        </header>
        <section>
            <article>
               <div id="keyimage">
                   <img src="images/applykey.gif">
               </div>
            </article>
            
            <section id="applyProcess">
           		<h3>영입절차</h3>
		        <svg class="applyProcess_chart" style="enable-background:new 0 0 512 512;" version="1.1" viewBox="0 0 512 512" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
			        <style type="text/css">
						.st0{fill:#ffffff;}
						.st1{fill:#9bbbd4;}
						.st2{fill:#fef01b;}
						.st3{fill:#556677;}
						.st4{fill:#302727;}
						.st5{fill:#fff;}
					</style>
			   		<g><g>
		            <path d="M0,05 L512,0 L512,510 L0,510 z" fill="transparent" stroke="#DDCFA7" stroke-width="2px" stroke-dasharray="2042 300" stroke-dashoffset="2342" class="path5" />
			   		<circle class="st0" cx="256" cy="256" id="XMLID_13_" r="250"/>
			   		<path class="st1" d="M480.4,355.9c1.5,0,3,0.4,4.4,1C498.4,326,506,291.9,506,256c0-98.5-57-183.7-139.8-224.4    v324.3H480.4z" id="XMLID_12_"/>
			   		<path class="st2" d="M156.1,366.2v114.2c0,1.5-0.4,3-1,4.4C186,498.4,220.1,506,256,506    c98.5,0,183.7-57,224.4-139.8H156.1z" id="XMLID_11_"/>
			   		<path class="st3" d="M31.6,156.1c-1.5,0-3-0.4-4.4-1C13.6,186,6,220.1,6,256c0,98.5,57,183.7,139.8,224.4V156.1    H31.6z" id="XMLID_10_"/>
			   		<path class="st4" d="M355.9,31.6c0-1.5,0.4-3,1-4.4C326,13.6,291.9,6,256,6C157.5,6,72.3,63,31.6,145.8h324.3V31.6z    " id="XMLID_9_"/>
			   		</g>
			   		<text x="100" y="100" style="font-size: 18pt; font-weight: bold;">
		                <tspan class="st5" x="170" y="100">A. 서류전형</tspan>
		                <tspan class="st5" x="430" y="130" writing-mode="tb-rl">B. 1 차 인터뷰</tspan>
		                <tspan class="st5" x="220" y="440">C. 2차 인터뷰</tspan>
		                <tspan class="st5" x="85" y="210" writing-mode="tb-rl">D. 입사확정</tspan>
		                <tspan x="190" y="270" fill="#444">카카오 크루!</tspan>
		            </text>
			   		</g>
		   		</svg>
		    </section>
            
            <article>
                <div id="applyMenu">
                    <h3>카카오크루가 되어주세요.</h3>
                    <a href="ApplyNotice.jsp">
                    <div class="applyNotice">
                       <img src="images/applynotice.PNG">
                        <p>채용공고</p>
                        <p>현재 진행중인 공고</p>
                    </div>
                    </a>
                    <a href="ApplyWrite.jsp">
                    <div class="writeApply">
                       <img src="images/apply.PNG">
                        <p>지원서 작성하기</p>
                        <p>원하는 분야의 지원서 작성</p>
                    </div>
                    </a>
                    <a href="MyApply.jsp">
                    <div class="myApple">
                       <img src="images/myapply.PNG">
                        <p>나의 지원서</p>
                        <p>작성한 지원서 관리</p>
                    </div>
                    </a>
                </div>
            </article>
        </section>
        <footer>
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
</body>
</html>