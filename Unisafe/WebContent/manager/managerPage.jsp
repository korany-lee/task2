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
<!-- 카카오 제공 js -->
<link rel="stylesheet" type="text/css" href="css/managerPage.css" >
<link rel="stylesheet" type="text/css" href="css/default.css" >
<link rel="stylesheet" type="text/css" href="css/intro.css" >
  <link rel="icon" type="image/png" href="images/favicon.png" />
<script src="js/view-resource1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('input').addClass('out');
		$('input').mouseover(function(){
			$(this).removeClass('out');
			$(this).addClass('over');
		});
		$('input').mouseout(function(){
			$(this).removeClass('over');
			$(this).addClass('out');
		});
	});
	
	function userMg() {
		location.href="userList.mg";
	}
	function userMall() {
		location.href="safemall.sm";
	}
	function userAdopt() {
		location.href="admin.ad";
	}
</script>
</head>
<body>

<div id="wrap" >
    
    <!-- 헤더시작 -->
<jsp:include page="../Unisafe/header_m.jsp"></jsp:include>
     <!-- 왼쪽 영역 -->
     		
	<!-- 후원소개 -->

	<!--// 후원소개 -->

     <!-- 메인 컨텐츠 -->
     <div id="content" align="center">
     	<h1>관리자 페이지</h1>
     	<br />
     	<input type="button" value="회원 관리" onclick="userMg()" />
     	<input type="button" value="상품 관리" onclick="userMall()" />
     	<input type="button" value="입양 관리" onclick="userAdopt()" />
     </div>
    
     <!-- 오른쪽 영역 -->
       
     <!-- footer영역 -->
     
<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
   </div>
</body>
</html>