<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <title>UNISAFE</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/intro.css" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
   <link rel="icon" type="image/png" href="images/favicon.png" />
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
				<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="2"></td>
	</tr>
	<tr align="left" valign="middle">
		<td colspan="2">글쓴이 : ${board.userId }
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	</tr>	
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">제 목&nbsp;&nbsp;</div>
		</td>
		<td style="font-family:돋음; font-size:12">
		${board.boardSubject }
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">내 용</div>
		</td>
		<td style="font-family:돋음; font-size:12">
			<table border=0 width=490 height=250 style="table-layout:fixed">
				<tr>
					<td valign=top style="font-family:돋음; font-size:12">
					${board.boardContent }
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;"></td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center">
		<td colspan="5">
		<div class="btnJoin2">
		<c:if test="${'ok' eq flag }">
         <span><a href="boardModify.bd?num=${board.boardNum }">수정</a></span>&nbsp;&nbsp;
         <span><a href="boardDelete.bd?num=${board.boardNum }">삭제</a></span>&nbsp;&nbsp;
        </c:if>
         <span><a href="./board.bd">목록</a></span>&nbsp;&nbsp;
      </div>
		</td>
	</tr>
</table>
					<!-- 페이징 끝 -->
				</div>
			</div> 
          <!-- container 끝 -->
     <!-- footer영역 -->
     
    	 <!-- footer시작 -->
			<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
			<!-- footer종료 -->


				</div>

</body>
</html>
