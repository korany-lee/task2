<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <title>UNISAFE</title>
  <link rel="stylesheet" type="text/css" href="css/myPage.css" />
  <link rel="shortcut icon" href="images/favicon.ico">
  <script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
	<script type="text/javascript">
		function modifyBtn() {
			location.href = "userModify.us";
		}
		function homeBtn() {
			location.href = "index.us";
		}
	</script>
</head>
<body>
   <div id="wrap" >
    
    <!-- 헤더시작 -->
    <jsp:include page="../Unisafe/header.jsp"></jsp:include>
     <!-- 왼쪽 영역
     <div id="left"><span>left</span></div>-->
     
     <!-- 메인 컨텐츠 -->
     <div id="container">
     	<div class="contentsTop">
					<h2>회원정보</h2><br />
		</div>
				<div class="relCon">
					<div id="memberInfo" align="center">
						<input type="hidden" name = "confirmNum" id = "confirmNum" value="1">
							<div class="table11">
								<table summary="회원가입" border="0" cellpadding="0" cellspacing="0"
									style="table-layout: fixed;">
									
									<tbody>
										<tr>
											<th style="width: 130px;"><span></span><label for="">아이디</label></th>
											<td>${ uniId } </td>
										</tr>
										<tr>
											<th><span></span><label for="">성명/단체명</label></th>
											<td>${ member.userName }</td>
										</tr>
										<tr>
											<th><span></span><label for="">휴대폰번호</label></th>
											<td>${ member.userPh }</td>
										</tr>
										<tr>
											<th><span></span><label for="">이메일</label></th>
											<td>${ member.userEmail }</td>
										</tr>
										<tr>
											<th><span></span><label for="">생년월일</label></th>
											<td>
												<div class="newsCheck" style="margin-top: 10px;">
													<fmt:formatDate value="${ member.userBirth }" type = "date" pattern="yyyy년   MM월  dd일"/>
												</div></td>
										</tr>
								</table>
								</div>
								<!-- div table11 끝 -->
						
							<div class="btnJoin2">
							<input type="button" onclick="homeBtn()" value="홈으로"/>
						<input type="button" id="btn" onclick="modifyBtn()" value="내정보 수정"/>
					</div>
					</div>
					<!-- memberInfo 끝 -->
						
				</div>
				<!-- relCon끝 -->
					</div>
					<!-- contents 종료-->
     	
     </div>
    
     <!-- 오른쪽 영역 
       <div id="right"><span>right</span></div>-->
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
</body>
</html>
