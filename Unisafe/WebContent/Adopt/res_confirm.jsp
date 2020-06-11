<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css" href="css/myPage.css">
<link rel="shortcut icon" href="images/fvicon.ico">
  <link rel="icon" type="image/png" href="images/favicon.png" />
<script type="text/javascript">

	
	function confirmDel() {
		var result = confirm('예약을 취소하시겠습니까?');
		if(result) {
			location.href='reservation.at';
		} else { 
			return false;
		}
	}
	
</script>
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
		<!-- header끝 -->

		<div id="container">
			
			<div id="contents">
				<div class="contentsTop">
					<h2>예약내역 확인</h2>
				</div>

				<div class="relCon">
					<div class="joinTit">
						<p class="fl">예약내역 확인</p>
					</div>

					<div id="memberInfo" align="center">
						<form action="userModifyProAction.us" method="post" name="userModifyProAction" id="userModifyProAction">
						<input type="hidden" name = "confirmNum" id = "confirmNum" value="1">
							<div class="table11">
								<table summary="회원가입" border="0" cellpadding="0" cellspacing="0"
									style="table-layout: fixed;">
									
									<tbody>
										<tr>
											<th style="width: 130px;"><span></span><label for="">동물 번호</label></th>
											<td>${animal.num }
												<a class="layer"
												data-position="iframe" id="id_overlap_hidden"></a></td>
										</tr>
										<tr>
											<th><span></span><label for="">동물 이름</label></th>
											<td>${animal.aniName }</td>
										</tr>
										<tr>
											<th><span></span><label for="">성명</label></th>
											<td>${ member.userName }</td>
										</tr>
										<tr>
											<th><span></span><label for="">휴대폰번호</label></th>
											<td><input type="text" name="userPh" id="userPh"
												class="input_text numOnly" style="width: 96px;" req num
												fname="휴대폰 번호" maxlength="12" value="${ member.userPh }"/>
											</td>
										</tr>
										<tr>
											<th><span></span><label for="">예약 일</label></th>
											<td>
												<div class="confirmdate">
													<fmt:formatDate value="${date }" type = "date" pattern="yyyy년   MM월  dd일"/>
												</div></td>
										</tr>
										<tr>
											<th><span></span><label for="">예약 시간</label></th>
											<td><input type="text" name="restime" id="restime"
												class="input_text" style="width: 150px; ime-mode: disabled;"
												req fname="예약시간" maxlength="30" value="${ member.userEmail }" />
										</tr>
										
								</table>
								</div>
								<!-- div table11 끝 -->
						
							<div class="btnJoin2">
					
						<input type="button" id="submitBtn" onclick="confirmDel()"value="예약취소" />
					</div>
					    </form>	
					</div>
					<!-- memberInfo 끝 -->
						
				</div>
				<!-- relCon끝 -->
					</div>
					<!-- contents 종료-->
		 </div>
		 <!-- container 종료 -->
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
		<!-- wrap종료 -->
</body>

</html>


