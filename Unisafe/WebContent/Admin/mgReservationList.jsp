<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>
	<script language="javascript">
		function resDel() {
			resDel.submit();
		}
	</script>
	
<link
href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
rel="stylesheet">
  <link rel="icon" type="image/png" href="images/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/ani_list_up.css" />

</head>
<body>
<div id="wrap">

	<!-- 헤더시작 -->
	<div id="top_fixed">
      <div class="top_cate">
         <div id="logo">
         <img src="images/admin_ani.png" alt="관리자" />
         </div>
      </div>
    </div>
    <!-- 헤더끝 -->
         
    <div id="container">
    <!-- 메인 컨텐츠 -->
   		<div class="contents">
            <div class="contentsTop">
         		<h2>동물 예약현황 목록</h2>
      		</div>
            <div class="relCon">
		<div class="contentsTop">
      		</div>
     		 <br>
<c:forEach items="${ resList }" var="list">
<form action="resDelete.ad" method="post" name="resDel" id="resDel">
	<div class="table11" id="aniUpdate" align="center">
	
		<table>
			<tr>
				<td><img src="./Adopt/animal/${ list.aniImage }" alt="${list.aniImage }" /></td>
			</tr>
			<tr>
				<td>사용자 아이디 : ${ list.userId }</td>
			</tr>
			<tr>
				<td>사용자 이름 : ${ list.userName }</td>
			</tr>
			<tr>
				<td>사용자 연락처 : ${ list.userPh }</td>
			</tr>
			<tr>
				<td>예약한 동물이름 : ${ list.aniName }</td>
			</tr>
			<tr>
				<td>예약 날짜 : ${ list.resDate }</td>
			</tr>
		</table>
		<input type="hidden" value="${ list.aniNum }" name="aniNum"/>
	</div>
	<div class="btnJoin2">
			<!--  <span><a href="javascript:resDel()">입양완료</a></span>	-->
			<input type="submit" value="입양완료" />
		</div>
	<br /><br />
</form>
</c:forEach>
	
	<!-- table11 div 끝 -->	

	
		<div class="btnJoin2">
			<span><a href="admin.ad">메인으로</a></span>
		</div>
	
		
	</div>
	<!-- relCon 끝 -->
</div>
<!-- contents 끝 -->
</div>
<!-- container 끝 -->
		
		<!-- footer 시작 -->
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
                     <li>단체명 : 사단법인 유니세이프 (고유번호: 102-82-07271)</li>
                     <li>주소 : [07271] 사단법인 유니세이프 ｜ 서울시 영등포구 양산로 53(양평동)</li>
                     <li>대표자 : 김이박</li>
                  </ul>
                  <p>COPYRIGHT @ THE KOREAN COMMITTEE FOR UNISAFE. ALL RIGHT
                     RESERVED</p>
               </div>
            </div>
         </div>
         <!-- footer종료 -->
</div>
<!-- wrap 끝 -->
</body>
</html>