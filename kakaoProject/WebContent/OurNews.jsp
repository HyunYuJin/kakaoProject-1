<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.kakao.VO.MemberVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="images/lion.png" type="image/x-icon">
<link rel="stylesheet" href="css/index.css?ver = 1" type="text/css">
<link rel="stylesheet" href="css/OurNews.css?ver = 1" type="text/css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/typed.js"></script>
<script src="js/typing.js"></script>
<title>카카오 뉴스</title>
</head>
<body>
	<div id="wrap">
		<header>
			<%@ include file="header.jsp" %>
      	</header>
      	<section class="title">
      		<div>
      			<img src="images/news1.jpg">
      		</div>
      		<div class="news_content">
      			<span id="typed1"></span>
      		</div>
      		<div class="tubo">
      			<img src="images/tuboNews.png">
      		</div>
      	</section>
      	<section class="content1">
      		<div>
      			'세계 행복의 날'이라는 기념일을 들어보신 적 있나요? 2012년 국제연합(UN)이 모든 사람들이 행복하게 살 수 있도록 전 세계가 함께 노력하자는 취지로 매년 3월 20일을 '세계 행복의 날'로 정했는데요. <br>
      			모두의 행복을 바라는 같이가치 with Kakao에서 '세계 행복의 날'을 기념하여 여러분의 '안녕'과 '행복'을 위한 '안녕하세요' 캠페인을 진행합니다! <br>
      			2017년 국제연합(UN)의 조사에 따르면 우리나라의 행복지수는 전세계 155개국 중 55위라고 합니다. <br>
      			바로 이 행복지수를 산출하는 원리로 카카오와 서울대학교 행복연구센터가 함께 '안녕지수' 테스트를 만들었어요. 누구나 일상 속에서 자신의 '안녕'과 '행복'을 측정하고 마음 속 문제를 해결할 수 있길 바라는 마음이 담겨있습니다. <br>
      			지난 6개월 동안 안녕지수 테스트에 참여한 횟수는 무려 70만 건입니다. 이 데이터는 우리나라의 행복지도를 만들어 나가는 연구에 귀하게 쓰이고 있습니다.
      		</div>
      		<div>
      			<img src="images/apeach_10.png" class="apeach">
      			<img src="images/news2.png" class="news2_image">
      		</div>
      	</section>
      	<section class="content2">
      		<div>
      			# '마음건강 프로젝트'를 위한 연중 모금 캠페인 "안녕하세요" 👋<br>
      			같이가치에서는 도움이 필요한 소외계층을 위한 마음 서비스를 지원하는 연중 캠페인 #안녕하세요 를 진행합니다. <br>
      			#안녕하세요 캠페인을 통해 마음에 상처가 있는 이웃들을 위한 심리상담 사업, 그림이나 음악을 통한 정서지원 사업 등 '마음건강 프로젝트'들을 지원합니다.<br>
      			우리 이웃들의 마음을 토닥토닥 따뜻하게 위로해보세요. 기부쿠폰은 물론 여러분의 댓글, 응원, 공유에도 카카오가 대신 기부합니다.<br>
      			지금, '안녕하세요' 캠페인 페이지에서 따뜻한 마음을 전해보세요.
      		</div>
      		<div>
      			<img src="images/news4.png">
      		</div>
      	</section>
      	<footer>
            <%@ include file="footer.jsp" %>
        </footer>
	</div>
</body>
</html>