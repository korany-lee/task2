<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAFE-MALL</title>
<link rel="stylesheet" type="text/css" href="css/safemall/goodsList.css" />
<link rel="stylesheet" type="text/css" href="css/safemall/safeReview.css" />
  <link rel="icon" type="image/png" href="images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<script type="text/javascript">


</script>
</head>
<body>
	<div id="wrap">


		<!-- 헤더시작 -->
		<!-- 카테고리 -->
		<jsp:include page="../SafeMall/header_sm.jsp"></jsp:include>

		<!-- 메인  -->
		<div id="container" align="center" style="margin-top:160px;">

			<div id="contents">


				<div class="xans-element- xans-product xans-product-menupackage ">
					<div
						class="xans-element- xans-product xans-product-headcategory title ">
						<p class="banner"></p>
						<h2>

							<span>솔직 후기!</span>
						</h2>
					</div>
				</div>
				<div>
					<br /> <br /> <br />
				</div>

				<div class="xans-element- xans-product xans-product-normalpackage ">
					<div class="xans-element- xans-product xans-product-normalmenu ">
						<!-- 상품 수 출력 -->
						<div class="function">
							<p class="prdCount">REVIEW DETAIL</p>
						</div>
						<!-- 상품 수 출력 종료 -->
					</div>
				</div>
				<!-- 메인 종료 -->
				<div>
					<br /> <br /> <br />
				</div>

				
					<div id="container" align="center">
			<div id="contents">
				<div class="xans-element- xans-product xans-product-detail">
					<div class="detailArea">
						<!-- 이미지 영역 -->
						<div class="xans-element- xans-product xans-product-image imgArea ">
							<div class="keyImg">
								<div class="thumbnail">
									<img src="SafeMall/review/${reviews.reviewImage }"width = "300px" height = "300px"/>

									<!-- 좋아요/zoom -->

								</div>
							</div>	
						</div>
						<!-- //이미지 영역 -->

						<!-- 상세정보 내역 -->
						<div class="infoArea"  >
						
							<div class="xans-element- xans-product xans-product-detaildesign">
								<table border="1" summary="">

									<tbody>
										<tr class=" xans-record-">
											<!--h3><span style="font-size:16px;color:#555555;">큐브테린 치즈</span></h3-->
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #2c2c2c;">WRITER</span></th>
											<td><span style="font-size: 12px; color: #2c2c2c;"><strong
													id="span_product_price_text">${ reviews.userName } </strong><input
													id="product_price" name="product_price" value=""
													type="hidden" /></span></td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">SATIS</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">${ reviews.userSatis }</span></td>
										</tr>

										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">SUBJECT</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">${ reviews.reviewSubject }</span></td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">CONTENT</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">${ reviews.reviewContent }</span></td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">DATE</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">
												 <fmt:formatDate value="${ reviews.reviewDate }" type = "date" pattern="yyyy/MM/dd"/>
											</span></td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">READ</span></th>
											<td>${reviews.reviewCount }</td>
										</tr>

									</tbody>
								</table>
							</div>


							<div id="zoom_wrap"></div>


			
						
						<div class="xans-element- xans-product xans-product-action ">
							<br/><br/><br/><br/><br/>
								<!-- 텍스트버튼 -->
								<div class="btnArea">
									 <a href="safeMallReview.sm" class=" bt_list"
										onclick="product_submit(2, '/exec/front/order/basket/', this)"
										onmouseover="innerText='목록으로'"
										onmouseout="innerText='BACK TO LIST'">BACK TO LIST</a> <span
										class="displaynone cart">
										<a href="reviewModify.sm?num=${reviews.reviewNum }" class="bt_modify"
										onmouseover="innerText='후기 수정'" onmouseout="innerText='MODIFY'">
									MODIFY</a></span> <a href="reviewDelete.sm?num=${reviews.reviewNum }"
										
										onclick="add_wishlist_nologin('/member/login.html');"
										class=" bt_delete" onmouseover="innerText='후기 삭제'"
										onmouseout="innerText='DELETE'">DELETE</a>
								</div>
								<!-- benefit -->


							</div>
							<!-- //참고 -->
						</div>
					</div>
				</div>
				
		
		
		<div><br/><br/><br/></div>

			</div>
		</div>
		</div>
			<!-- 컨텐츠 종료-->
			<!-- footer시작 -->
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
		<!-- footer종료 -->
	</div>
	<!-- wrap종료 -->
</body>
</html>