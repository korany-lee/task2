<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAFE-MALL</title>
<link rel="stylesheet" type="text/css" href="css/safemall/safeReview.css" />
<link rel="stylesheet" type="text/css" href="css/usti.css">
<link rel="stylesheet" type="text/css"
	href="css/safemall/safeReview.css" />

  <link rel="icon" type="image/png" href="images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>


<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="wrap">

		<!-- 헤더시작 -->
		<<div id="top_fixed">
			<div class="top_cate">
				<div id="logo">
					<a href="safemall.sm"><img
						src="images/safemall/safeMallLogo.png" alt="세이프 몰 로고" /></a>
				</div>
				<div id="category-basic"
					class="xans-element- xans-layout xans-layout-category">
					<div class="position">

						<ul class="ct01-wrap">
							<li data-param="?cate_no=24" class="ct01 xans-record-"><a
								href="safeMallJerky.sm">쫄깃쫄깃! 육포/져키류</a></li>
							<li data-param="?cate_no=26" class="ct01 xans-record-"><a
								href="safeMallBones.sm">천연개껌! 뼈간식류</a></li>
							<li data-param="?cate_no=28" class="ct01 xans-record-"><a
								href="safeMallAccessory.sm">악세서리</a></li>
							<li><a href="safeMallQ&A.sm">Q&amp;A</a></li>
							<li><a href="safeMallReview.sm">솔직후기</a></li>
							<li><a href="safeMallCart.sm">장바구니</a></li>
							<li><a href="safeMallBuyList.sm">구매 내역</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 카테고리 종료 -->
		<div id="blank">
			<br /> <br /> <br /> <br /> <br /> <br /> <br />
		</div>
		<!-- 헤더 종료 -->

		<!-- 컨테이너 시작 -->
		<div id="container">
			<br />
			<br />
			<br />
			<br />
			<!-- 메인 컨텐츠 -->
			<div class="contents">

				<div>
					<br /> <br /> <br />
				</div>

				<div class="xans-element- xans-product xans-product-normalpackage ">
					<div class="xans-element- xans-product xans-product-normalmenu ">
						<!-- 상품 수 출력 -->
						<div class="function">
							<p class="prdCount">Q&A DETAIL</p>
						</div>
						<!-- 상품 수 출력 종료 -->
					</div>
				</div>

				<br>
				<div class="relCon">

					<div class="table11" id="ustiInfo" align="center">
						<table>
							<tr>
								<th style="width: 100px;">WRITER</th>
								<td>${reply.userName }</td>
							</tr>

							<tr>
								<th style="width: 100px;">SUBJECT</th>
								<td>${reply.replySubject }</td>
							</tr>

							<tr>
								<th style="width: 100px;">CONTENT</th>
								<td>${reply.replyContent }</td>
							</tr>
							<tr>
								<th style="width: 100px;">DATE</th>
								<td><fmt:formatDate value="${ reply.replyDate }" type="date"
										pattern="yyyy/MM/dd" /></td>
							</tr>


						</table>

					</div>
					<div class="xans-element- xans-product xans-product-action ">
						<div class="btnArea" align=center>
							<c:if test = "${ uniId == manager }">
							<a href="safeMallQ&A.sm" class=" bt_list"
							
								onclick="product_submit(2, '/exec/front/order/basket/', this)"
								onmouseover="innerText='목록으로'"
								onmouseout="innerText='BACK TO LIST'">BACK TO LIST</a> <span
								class="displaynone cart"> <a
								href="replyModify.sm?num=${reply.replyNum }" class="bt_modify"
								onmouseover="innerText='답변 수정'" onmouseout="innerText='MODIFY'">
									MODIFY</a></span> <a href="replyDelete.sm?num=${reply.replyNum }"
								onclick="add_wishlist_nologin('/member/login.html');"
								class=" bt_delete" onmouseover="innerText='답변 삭제'"
								onmouseout="innerText='DELETE'">DELETE</a>
								</c:if>
						</div>

						<div>
							<br /> <br /> <br />
							<br />
							<br />
							<br />
						</div>

						

					</div>
					


						

					</div>
				</div>
			
			<!-- 메인 컨텐츠 종료 -->

			<!-- 컨테이너 종료 -->
			
			</div>
			
		</div>
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


</body>
</html>
