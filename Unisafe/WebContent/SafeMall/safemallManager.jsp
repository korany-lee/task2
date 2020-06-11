<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SAFE-MALL</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/safemall/safeMall.css" />
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/safemall/goodsList.css" />

  <link rel="icon" type="image/png" href="images/favicon.png" />


</head>
<body>

	<div id="wrap">



		<div class="contents">
			<!-- 헤더시작 -->
			<!-- 카테고리 -->
			<div id="top_fixed">
				<div class="top_cate">
					<div id="logo">

						<a href="safemall.sm"><img
							src="images/safemall/safeMallLogo.png" alt="세이프 몰 로고" /></a>
					</div>
					<div id="category-basic"
						class="xans-element- xans-layout xans-layout-category">
						<div class="position">

							<ul class="ct01-wrap">
								
								<li><a href="goodsUp.sm">상품 등록</a></li>
								<li><a href="safeMallSellList.sm">판매 현황</a></li>
								<li><a href="safeMallSales.sm">매출 현황</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div id="blank">
				<br /> <br /> <br /> <br /> <br /> <br /> <br />
			</div>
			<!-- 메인슬라이드_시작 -->

			<div class="container mt-3">


				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<!-- Indicators -->
					<ul class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ul>

					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="images/safemall/safeMallBanner1.jpg" alt="배너1"
								width="1100" height="500">
						</div>
						<div class="carousel-item">
							<img src="images/safemall/safeMallBanner2.jpg" alt="배너2"
								width="1100" height="500">
						</div>
						<div class="carousel-item">
							<img src="images/safemall/safeMallBanner3.jpg" alt="배너3"
								width="1100" height="500">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#myCarousel"
						data-slide="prev"> <span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#myCarousel"
						data-slide="next"> <span class="carousel-control-next-icon"></span>
					</a>
				</div>

			</div>



			<!-- 상품 리스트 시작 -->
			<div>
				<br /> <br /> <br />
			</div>
			<div class="xans-element- xans-product xans-product-normalpackage ">
				<div class="xans-element- xans-product xans-product-normalmenu ">
					<!-- 상품 수 출력 -->
					<div class="function" align="center">
						<p class="prdCount">NEW ITEM</p>
					</div>
					<!-- 상품 수 출력 종료 -->
				</div>
			</div>
			<!-- 메인 종료 -->
			<div>
				<br /> <br /> <br />
			</div>
			<c:if test="${!empty goods }">
				<div id="productList" float="left" align="center">
					<table>
						<tr>
							<c:forEach var="goods1" items="${goods }" varStatus="status"	step="1">
								<td>
									<table id="product" cellpadding="5" cellspacing="0" width="auto">
										<tr>
											<td>
												<a href="goodsDetail.sm?num=${goods1.goodsSeq }"><img
													src="SafeMall/update/${goods1.goodsImage }"width = "300px" height = "300px" /></a>
											</td>
										</tr>
										<tr>
											<td><a href="goodsDetail.sm?num=${goods1.goodsSeq }">상품명:${goods1.goodsName }</a>
											<td>
										</tr>
										<tr>
											<td>가격:${goods1.goodsPrice }won</td>
										</tr>
																				
										<tr>
										
										<td><img src="images/safemall/new.gif">
										
										<c:forEach var="stc" items="${stock }" 	step="1">
										<c:if test="${ stc.goodsSeq == goods1.goodsSeq}">
											<c:if test = "${ stc.goodsStock <= 0}" >
											<span style="font-size: 12px; color: #ff000c;">
												SOLD OUT
											</span></td>
											</c:if>
										</c:if>
										
										</c:forEach>
										</tr>
									</table>
								</td>

								<c:if test="${ status.count % 4 == 0}">
						</tr>
						<tr>
							</c:if>
							</c:forEach>
						</tr>
					</table>
				</div>

			</c:if>
			<c:if test="${empty goods }">
				<div id="cartEmpty" align = center>
					<table>
						<tr align="center" valign="middle">
							<td align=right><font size=2>상품 준비 중 입니다!</font></td>
						</tr>
					</table>
				</div>
			</c:if>
		</div>


		<!-- 상품 리스트 종료 -->



		<!-- 컨테이너 종료 -->
		<div>
				<br /> <br /> <br />
			</div>
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
	</div>
	</div>
	<!-- wrap종료 -->
</body>
</html>