<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/index.css">
    <title>기업소개</title>
    <link rel="icon" href="images/lion.png" type="image/x-icon">
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <link rel="stylesheet" href="css/aboutus.css" type="text/css">
</head>
<body>
    <div id="wrap">
        <header>
            <%@ include file = "header.jsp"%>
        </header>
           <section>
             <div id="section_wrap">
              <article>
                  <h2 class="about_us">“Connect Everything” 새로운 연결, 더 나은 세상</h2>
                  <div id="keyimage">
                      <img src="images/AboutUS1.jpg">
                  </div>
                  <div class="vision">
                      <p class="title">비전</p>
                      <p class="titleContent">카카오는 새로운 연결을 통해 더 편리하고 즐거운 세상을 꿈꿉니다. <br> 사람과 사람, 사람과 기술을 한층 가깝게 연결함으로써 세상을 어제보다 더 나은 곳으로 만들기 위해 노력하고 있습니다.</p>
                  </div>
              </article>
              <article>
                  <div>
                      <p class="title">카카오 문화소개</p>
                      <p class="title2">> 카카오크루</p>
                      <p class="titleContent">아무도 가보지 않은 길을 함께 가는 사람들, 카카오크루는 세상의 문제를 새로운 시각과 방식으로 해결하고 싶고, <br>나에게 충분한 권한과 책임을 받아서 신나게 일하고 싶은 기업가정신이 충만한 사람들을 말합니다.</p>
                  </div>
              </article>
              <!-- <article>
                 <div id="method">
                  <h2>일하는 방식</h2>
                  <div class="box">자기주도성</div>
                  <div class="box">공개공유</div>
                  <div class="box">수평 커뮤니케이션</div>
                  </div> 
              </article> -->
              
              <section>
		        <h2 class="method_title">일하는 방식</h2>
		        <svg  id="method_svg">
		            <path d="M50,100 L400,100 L400,300 L50,300 Z" fill="transparent" stroke="#333"/>
		            <path d="M450,100 L800,100 L800,300 L450,300 Z" fill="transparent" stroke="#333"/>
		            <path d="M850,100 L1200,100 L1200,300 L850,300 Z" fill="transparent" stroke="#333"/>
		            <text x="100" y="100" style="font-size: 18pt; font-weight: bold;">
		                <tspan x="170" y="210" fill="#555">자기주도성</tspan>
		                <tspan x="574" y="210" fill="#555">공개 공유</tspan>
		                <tspan x="930" y="210" fill="#555">수평 커뮤니 케이션</tspan>
		            </text>
		        </svg>
		      </section>
              
              <article>
                 <div id="walk">
                  <h2 >걸어온길</h2>
                      <img src="images/AboutUS2.jpg">
                  <p>1995년부터 지금까지, 새로운 연결, 더 나은 세상을 위해 카카오가 걸어온 길입니다.</p>
                  </div>
                  <table>
                      <tr>
                          <th rowspan="3">2016년</th>
                          <td class="num">01</td>
                          <td class="tableContent">(주) 로엔엔터테인먼트(LOEN)인수</td>
                      </tr>
                      <tr>
                          <td class="num">09</td>
                          <td class="tableContent">‘카카오’로 사명변경</td>
                      </tr>
                      <tr>
                          <td class="num">05</td>
                          <td class="tableContent">국민내비 김기사 ‘록앤올’ 인수</td>
                      </tr>
                      <tr>
                         <th>2015년</th>
                          <td class="num">03</td>
                          <td class="tableContent">케이큐브벤처스 계열사 편입</td>
                      </tr>
                      <tr>
                          <th rowspan="3">2014년</th>
                          <td class="num">12</td>
                          <td class="tableContent">투자전문회사 케이벤처그룹 설립</td>
                      </tr>
                      <tr>
                          <td class="num">10</td>
                          <td class="tableContent">다음카카오 통합법인 출범</td>
                      </tr>
                      <tr>
                          <td class="num">05</td>
                          <td class="tableContent">다음 커뮤니케이션 - 카카오 합병 발표</td>
                      </tr>
                      <tr>
                          <th>2010년</th>
                          <td class="num">09</td>
                          <td class="tableContent">(주)아이위랩, (주)카카오로 사명 변경</td>
                      </tr>
                      <tr>
                          <th>2006년</th>
                          <td class="num">12</td>
                          <td class="tableContent">(구)카카오 전신인 (주)아이위랩 설립</td>
                      </tr>
                      <tr>
                          <th>1995년</th>
                          <td class="num">02</td>
                          <td class="tableContent">(주)다음커뮤니케이션 설립</td>
                      </tr>
                  </table>
              </article>
              </div>
        </section>
        <footer>
            <%@ include file = "footer.jsp"%>
        </footer>
    </div>
    
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/vivus.min.js"></script>
    <script src="js/svg.js"></script>
    
</body>
</html>