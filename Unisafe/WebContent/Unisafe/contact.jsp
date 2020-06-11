<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div id="wrap">

		<!-- 헤더시작 -->
	
		<jsp:include page="../Unisafe/header.jsp"></jsp:include>
		<!-- <div id="header">
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
						<li ><a href="introduce.us">소개</a></li>
						<li ><a href="adopt.at">입양하기</a></li>
						<li ><a href="safemall.sm">세이프몰</a></li>
						<li ><a href="board.bd">자료실</a></li>			
					</ul>
				</div>
			</div>
		</div> -->
		<!-- 왼쪽 영역 -->


		<div id="container">
			<!-- LNB 시작 -->


			<!-- LNB -->
			<div id="lnb">

				<!-- 유니세프 소개 -->
				<div class="titBox">
					<h1>
						<a href="/intro/idea.asp">소개<span>About UNISAFE</span></a>
					</h1>
					<a href="/intro/idea.asp" class="btnAbs"></a>
				</div>
				<ul class="one_depth">
					<li class="on" style="border-top: 1px solid rgb(222, 222, 222);">
					<li><a href="#MN060100">설립 이념</a></li>
					<li class="icon_depth">
					<li class="icon_depth"><a href="#MN020100">소식</a>
						<ul class="two_depth">
							<li><a href="#MN020100">공지사항</a></li>
							<li><a href="#MN020200">뉴스</a></li>
							<li><a href="#MN020600">유니세이프 자료</a></li>
						</ul></li>
					<li><a href="contact.us">연락처</a></li>
				</ul>
				<!--// 왼쪽 LNB끝 -->
			</div>
			<!-- 메인 컨텐츠--!>
     <!-- contents -->
     
			<!-- contents -->
			<div id="contents">
				
					<div id="map" style="width:50%;height:350px;"></div>
				
	
				
				<div class="contentsTop">
					<h2>연락처</h2>
					
					<!-- location -->
										<ul class="location">
						<!-- 네비게이션 시작 -->
						
						
					
						
						<!-- 네비게이션 시작 -->
					</ul>
					<!--// location -->
					
				</div>

				<div class="contactus">
					<!-- 서울 -->
					<h3>유니세이프 오시는 길</h3>
					<div class="area_map" id="map_seoul"></div>
					<div class="mapTable mb40">
						<table summary="주소설명" border="0" cellpadding="0" cellspacing="0">
							<caption>주소설명</caption>
							<colgroup><col width="153" /><col width="*" /></colgroup>
							<tbody>
								<tr>
									<th>주소</th>
									<td>서울시 영등포구 양산로 53(양평동)</td>
								</tr>
								<tr>
									<th>영문주소</th>
									<td>53, Yangsan-ro, Yeongdeungpo-gu, Seoul, Republic of Korea</td>
								</tr>
								<tr>
									<th>대표전화</th>
									<td>Tel. 02-6340-2233 (평일 오전 9시 ~ 오후 6시)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fax. 02-6340-2233</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="mapTable3 mb40">
						<table summary="교통수단설명" border="0" cellpadding="0" cellspacing="0">
							<caption>교통수단설명</caption>
							<colgroup><col width="110" /><col width="*" /></colgroup>
							<tbody>
								<tr>
									<th><img src="images/vehicle_02.gif" alt="지하철" /></th>
									<td>
										<dl>
											<dt>지하철</dt>
											<dd>5호선 양평역 1번 출구 → 275m 직진 → 월드메르디앙비즈센터 4층</dd>
											<dd>5호선 영등포구청역 6번 출구 → 749m직진→ 월드메르디앙비즈센터 4층</dd>
										</dl>
									</td>
								</tr>
								<tr>
									<th><img src="images/vehicle_03.gif" alt="버스" /></th>
									<td>
										<dl>
											<dt>버스</dt>
											<dd>영등포 02, 영등포 05 영은교회 하차</dd>
											<dd>5, 7612 오산당 요양병원 하차</dd>
										</dl>
									</td>
								</tr>
							</tbody>
						</table>
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
					<li>단체명 : 사단법인 유니세이프 (고유번호: 102-82-07271)</li>
					<li>주소 : [07271] 사단법인 유니세이프 ｜ 서울시 영등포구 양산로 53(양평동)</li>
					<li>대표자 : 김이박</li>
				</ul>
				<p>COPYRIGHT @ THE KOREAN COMMITTEE FOR UNISAFE. ALL RIGHT
					RESERVED</p>
			</div>
		</div>
	</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b943d2ad2087320fe1087f2c79a8e18c"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  mapOption = { 
        center: new kakao.maps.LatLng(37.5255894,126.8867188), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption);

var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
    markerPosition = new kakao.maps.LatLng(37.5255894,126.8867188); // 마커가 표시될 위치입니다

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
  position: markerPosition,
  image: markerImage // 마커이미지 설정 
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);  

// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
var content = '<div class="customoverlay">' +
    '  <a href="https://map.kakao.com/link/map/11394059" target="_blank">' +
    '    <span class="title">구의야구공원</span>' +
    '  </a>' +
    '</div>';

// 커스텀 오버레이가 표시될 위치입니다 
var position = new kakao.maps.LatLng(37.54699, 127.09598);  

// 커스텀 오버레이를 생성합니다
var customOverlay = new kakao.maps.CustomOverlay({
    map: map,
    position: position,
    content: content,
    yAnchor: 1 
});
</script>
</body>

</html>
