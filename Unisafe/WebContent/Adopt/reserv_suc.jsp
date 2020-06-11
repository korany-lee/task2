<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/intro.css" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/resform.css" />
<link rel="stylesheet" type="text/css" href="css/reservation_form.css" />
  <link rel="icon" type="image/png" href="images/favicon.png" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>

<script type="text/javascript">
	$(function() {

		var phone = "${member.userPh}";
		var phone2 = "${member.userPh}"

		var first = phone.substr(0, 3);
		console.log(first);
		var elseNum = phone.substr(3, 8);
		console.log(elseNum);
		var middle = elseNum.substr(0, 4);
		console.log(middle);
		var elseNum2 = phone.substr(3, 8);
		var last = elseNum2.substr(4, 4);
		console.log(last);

		document.getElementById("first").value = first;
		document.getElementById("middle").value = middle;
		document.getElementById("last").value = last;

	});
</script>


</head>

<body>
	<div id="wrap">

		<!-- 헤더시작 -->
		<div id="header">
			<div class="headerBox">
				<p class="logo active_gnb">
					<a href="./index.us"><img src="images/UnisafeLogo.png"
						alt="유니이세프로고" /></a>
				</p>
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
						<li><a href="introduce.us">소개</a></li>
						<li><a href="adopt.at">입양하기</a></li>
						<li><a href="safemall.sm">세이프몰</a></li>
						<li><a href="board.bd">자료실</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 헤더 끝 -->


		<!-- 왼쪽 영역 -->
		<div id="container">
			<!-- LNB 시작 -->


			<!-- LNB -->
			<div id="lnb">

				<!-- 유니세프 소개 -->
				<div class="titBox">
					<h1>
						<a href="/intro/idea.asp">입양하기<span>Adopt</span></a>
					</h1>
					<a href="/intro/idea.asp" class="btnAbs"></a>
				</div>
				<ul class="one_depth">
					<li class="on" style="border-top: 1px solid rgb(222, 222, 222);">
					<li><a href="reservation.at">상담 예약</a></li>
					<li class="onm"><a href="#">마이페이지</a>
				</ul>

			</div>
			<!-- LNB끝 -->

			<div class="reservation-form material-form">

				<div class="animals_result">
					<div id="content" class="container ">
						<div class="row justify-content-around">
							<div class="ergebnisbereich col">

								<div class="header">
									<p class="h2">예약확인</p>
								</div>

								<ul class="animals_grid row">

									<li><a href="aniDetail.at?num=${reserv.aniNum }"
										target="_blank"><label class="tier_label"> <font
												style="vertical-align: inherit;"> <font
													style="vertical-align: inherit;">${reserv.aniName }</font>
											</font></label> <img src="./Adopt/animal/${reserv.aniImage }"
											alt="${reserv.aniImage }" class="tierbild"> </a></li>
								</ul>

							</div>
						</div>
					</div>


					<div class="form-group">
						<!-- 가져온거 시작 -->
						<div id="animal-data" class="animal-data row mb-5"
							style="width: 500px; float: right; margin-right: 140px;"
							align="center;">
							<table class="col-12 table tierattribute">
								<thead></thead>
								<tbody>
									<tr>
										<td>예약자 성함</td>
										<td>${reserv.userName }</td>
									</tr>
									<tr>
										<td>예약날짜</td>
										<td>${reserv.resDate }</td>
									</tr>
									<tr>
										<td>시간</td>
										<c:if test="${reserv.resTime == '1'}">
												<td>오전타임 - 10:00~12:00</td>
											</c:if> <c:if test="${reserv.resTime == '2'}">
												<td>오후타임 - 14:00 ~ 16:00</td>
											</c:if>
									</tr>
									<tr>
										<td>연락처</td>
										<td>${reserv.userPh }</td>
									</tr>
									<tr>
										<th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
										<td>
											<div class="btnJoin3">
												<span><a href="index.us">메인으로</a></span>&nbsp;&nbsp;
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>





			</div>
			<!-- reservation material-form 끝 -->
		</div>
		<!-- container 끝 -->

</div>



		<!--BODY]]]-->

		<!--[[AREA_BODY_END]]-->

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
	<!-- wrap -->
</body>
</html>