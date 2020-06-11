<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>

<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<!-- 카카오 제공 css -->
<link rel="stylesheet" type="text/css" href="css/view.min.css" >
<!-- 내부 css 반출 -->
<link rel="stylesheet" type="text/css" href="css/welcome.css" >
<link rel="stylesheet" type="text/css" href="css/main.css" >

<!-- 카카오 제공 js -->
<script src="js/view-resource1.min.js"></script>
<!-- favicon -->
  <link rel="icon" type="image/png" href="images/favicon.png" />
</head>
<body data-locale="utf-8">

<!-- 관리자 로그인 되었을때 -->
  <div id="wrap" >
    
    <!-- 헤더시작 -->
     <jsp:include page="../Unisafe/header_m.jsp"></jsp:include>
     <!-- 왼쪽 영역 -->
     <div id="left"><span>left</span></div>
     
     <!-- 메인 컨텐츠 -->
     <div id="content"><span>content</span></div>
    
     <!-- 오른쪽 영역 -->
       <div id="right"><span>right</span></div>
     <!-- footer영역 -->
     
    	 <div id="footer">
			<div class="footerBox">
				
				<div class="footerBottom">
					<ul>
						<li><a href="#">유니세이프 소개</a></li>
						<li><a href="#">저작권 안내</a></li>
						<li><a href="#"><strong>개인정보 처리방침</strong></a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">연락처</a></li>
					</ul>
					<ul>
						<li>단체명 : 사단법인 유니세이프  (고유번호: 102-82-07271)</li>
						<li>주소 : [07271] 사단법인 유니세이프 ｜ 서울시 영등포구 양산로 53(양평동)</li>
						<li>대표자 : 김이박</li>
					</ul>
					<p>COPYRIGHT @ THE KOREAN COMMITTEE FOR UNISAFE. ALL RIGHT RESERVED
					
					</p>
				</div>
			</div>
		</div>
   </div>
</body>
</html>