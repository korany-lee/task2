<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <title>UNISAFE</title>
  <link rel="stylesheet" type="text/css" href="css/myPage.css" />
    <link rel="icon" type="image/png" href="images/favicon.png" />
</head>
<body>
   <div id="wrap" >
    
    <!-- 헤더시작 -->
     <div id = "header">
     	<div class="headerBox">	
				<p class="logo active_gnb"><a href="./index.us"><img src="images/UnisafeLogo.png" alt="유니이세프로고" /></a></p>
				<ul class="headerQuick">
					<li><a href="safeLogout.us">로그아웃</a></li>
					<li><a href="userModify.us">마이페이지</a></li>
					<li><a href="contact.us">연락처</a></li>
					<li><a href="#">사이트맵</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#"
						style="background-color: rgb(227, 62, 62); color: rgb(255, 255, 255);">후원하기</a></li>
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
     <!-- 왼쪽 영역
     <div id="left"><span>left</span></div>-->
     
     <!-- 메인 컨텐츠 -->
     <div id="container">
     	<div class="contentsTop">
					<h2>게시글 삭제</h2><br />
		</div>
				<div class="relCon">
					<div id="memberInfo" align="center">
						<form action="boardDeletePro.bd" method="post" name="userModifyForm" id="userModifyForm">
						<input type="hidden" name = "num" id = "num" value="${num}">
							<div class="table11" >
								<table border="0" cellpadding="5px" cellspacing="0"
									style="table-layout: fixed;"><br />
									
									<tbody>
										<tr>
											<th ><label for="">게시글 비밀번호</label>&nbsp;&nbsp;
											<input type="password" name="boardPw"
												id="boardPw" class="input_text" style="width: 183px;" req
												fname="비밀번호" maxlength="20" /></th>
										</tr>
										<tr>
										<th>
										<br />
										</th>
										</tr>
								</table>
								</div>
								<!-- div table11 끝 -->
						
							<div class="btnJoin2">
						<input type="submit" id="submitBtn" value="확인" />
					</div>
					    </form>	
					</div>
					<!-- memberInfo 끝 -->
						
				</div>
				<!-- relCon끝 -->
					</div>
					<!-- contents 종료-->
     	
     </div>
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
   </div>
</body>
</html>
