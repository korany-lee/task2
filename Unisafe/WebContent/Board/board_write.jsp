<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <title>UNISAFE</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/intro.css" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
   <link rel="icon" type="image/png" href="images/favicon.png" />
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
 
</head>
<body>
   <div id="wrap" >
    
    <!-- 헤더시작 -->
     <div id = "header">
     	<div class="headerBox">	
				<p class="logo active_gnb"><a href="./index.us"><img src="images/UnisafeLogo.png" alt="유니이세프로고" /></a></p>
				<ul class="headerQuick">
					<li><a href="safeLogout.us" >로그아웃</a></li>
					<li><a href="userModify.us">마이페이지</a></li>					
					<li><a href="contact.us">연락처</a></li>
					<li><a href="#">사이트맵</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#"style="background-color: rgb(227, 62, 62); color: rgb(255, 255, 255);">후원하기</a></li>
				</ul>
				<div id="gnb">
					<ul>
						<li ><a href="introduce.us">소개</a></li>
						<li ><a href="adopt.at">입양하기</a></li>
						<li ><a href="safemall.sm">세이프몰</a></li>
						<li ><a href="board.bd">자료실</a></li>					
					</ul>
				</div>
		</div>	
     </div> 
     <!-- 왼쪽 영역 -->
     <div id="container">
			<!-- LNB 시작 -->
<!-- LNB -->
<div id="lnb">
	
	<!-- 유니세프 소개 -->
		<div class="titBox">
			<h1><a href="/intro/idea.asp">자료실<span>REFERENCE</span></a></h1>
			<a href="/intro/idea.asp" class="btnAbs"></a>
		</div>
		<ul class="one_depth">
			<li class="on" style="border-top: 1px solid rgb(222, 222, 222);">
			<li><a href="board.bd">분양 후기</a></li>
			<li class="icon_depth">
				<a href="#MN020100">소식</a>
				<ul class="two_depth">
					<li><a href="#MN020100">공지사항</a></li>
					<li><a href="#MN020200">뉴스</a></li>	
					<li><a href="#MN020600">유니세이프 자료</a></li>
				</ul>
			</li>
			<li><a href="contact.us">연락처</a></li>
		</ul>
</div>
     <div id="contents">
				<div class="contentsTop">
					<h2>분양 후기</h2>
				</div>
				<title>Insert title here</title>
	<script language="javascript">
	function addboard(){
		boardform.submit();
	}
	</script>
				<div class="relCon">
		<form action="boardWritePro.bd" method="post"  name="boardform" 
		enctype="multipart/form-data">
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:15" height="16">
			<div align="center">글쓴이</div>
		</td>
		<td>
			${user_id}
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">비밀번호</div>
		</td>
		<td>
			<input name="BOARD_PASS" type="password" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">제 목</div>
		</td>
		<td>
			<input name="BOARD_SUBJECT" type="text" size="50" maxlength="100" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">내 용</div>
		</td>
		<td>
			<!-- <textarea name="BOARD_CONTENT" cols="67" rows="15"></textarea> -->
			<textarea id="summernote" name="BOARD_CONTENT"></textarea>
		</td>
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">
		<div class="btnJoin2">
         <span><a href="javascript:addboard()">등록</a></span>&nbsp;&nbsp;
         <span><a href="javascript:history.go(-1) ">뒤로</a></span>
      </div>
		</td>
	</tr>
</table>
</form>
					<!-- 페이징 끝 -->
				</div>
			</div> 
				</div>
					</div>
          <!-- container 끝 -->
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
						<li><a href="contact.us">연락처</a></li>
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
<script>
    $(document).ready(function() {
        $('#summernote').summernote({
        	height: 300
        });
        
    });
  </script>
</body>
</html>
