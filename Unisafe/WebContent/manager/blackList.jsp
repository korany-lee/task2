<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
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

</script>
</head>
<body>
<div id="wrap" >
    
    <!-- 헤더시작 -->
<jsp:include page="../Unisafe/header_m.jsp"></jsp:include>
     <!-- 왼쪽 영역 -->
     <div id="left">		
		<div id="lnb">
	<!-- 후원소개 -->
		<div class="titBox">
		
		</div>
		<ul class="one_depth">
			<li><a href="managerPage.mg">관리자 메인</a></li>
			<li><a href="userList.mg">회원 목록</a></li>
			<li><a href="blackList.mg">블랙리스트 목록</a></li>
			<li><a href="insertChart.mg">월별 가입자 현황</a></li>
		</ul>
	<!--// 후원소개 -->
</div>
     </div>
     <!-- 메인 컨텐츠 -->
     
     <div id="content" align="center">
     
	<!--  <tr>
		<td><a href ="userInfo.mg?id=${ list.userId }">${ list.userId }</a></td>
		<td>${ list.userName }</td>
		<td><fmt:formatDate value="${ list.userBirth }" type = "date" pattern="yyyy년   MM월  dd일"/></td>
	</tr>-->
	<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="memberInfo" align="center">
						<input type="hidden" name = "confirmNum" id = "confirmNum" value="1">
						<div id="sub"><b>블랙리스트 목록</b></div>
						<div id="sub2">회원수: ${ count }</div>
						<c:forEach items="${ black }" var="list">
							<div class="table11">
							
								<table summary="회원가입" border="0" cellpadding="0" cellspacing="0"
									style="table-layout: fixed;">
									
									<tbody>
									
										<tr>
											<th style="width: 130px;"><span></span><label for="">아이디</label></th>
											<td><b>${ list.userId }</b>&nbsp;&nbsp;<a href="blackListDel.mg?id=${list.userId }" ><span>정지 해제</span></a></td>
										</tr>
										<tr>
											<th><span></span><label for="">성명/단체명</label></th>
											<td>${ list.userName }</td>
										</tr>
										<tr>
											<th><span></span><label for="">생년월일</label></th>
											<td>
												<div class="newsCheck" style="margin-top: 10px;">
													<fmt:formatDate value="${ list.userBirth }" type = "date" pattern="yyyy년   MM월  dd일"/>
												</div></td>
										</tr>
										<tr>
											<th><span></span><label for="">가입날짜</label></th>
											<td>
												<div class="newsCheck" style="margin-top: 10px;">
													<fmt:formatDate value="${ list.userRegist }" type = "date" pattern="yyyy년   MM월  dd일"/>
												</div></td>
										</tr>
								</table>
								</div>
								<br /><br />
								</c:forEach>
								<!-- div table11 끝 -->
					</div>


     </div>
    
     <!-- 오른쪽 영역 -->
       
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