<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAFE-MALL</title>

<link rel="stylesheet" type="text/css"
	href="css/safemall/goodsDetail.css" />
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
	  <link rel="icon" type="image/png" href="images/favicon.png" />
</head>
<body>
	<div id="wrap">


		<!-- 헤더시작 -->
		<!-- 카테고리 -->
		<jsp:include page="../SafeMall/header_s.jsp"></jsp:include>

		<!-- 메인  -->
		<div id="container" align="center">
			<div id="contents">
				<div class="xans-element- xans-product xans-product-detail">
					
					<c:if test = "${ empty stock || stock >=1}">
					<div class="detailArea">
						<!-- 이미지 영역 -->
						<div class="xans-element- xans-product xans-product-image imgArea ">
							<div class="keyImg">
								<div class="thumbnail">
								
									<img src="SafeMall/update/${goods.goodsImage1 }"/>

									<!-- 좋아요/zoom -->

								</div>
							</div>	
						</div>
						<!-- //이미지 영역 -->

						<!-- 상세정보 내역 -->
						<div class="infoArea">
							<div class="icon">
								<img
									src="//img.echosting.cafe24.com/icon/product/ko_KR/icon_22_04.gif"
									alt="" />
							</div>
							<div class="detail_title ">
								<!--[]-->
								${goods.goodsName }
							</div>

							<div class="xans-element- xans-product xans-product-detaildesign">
								<table border="1" summary="">

									<tbody>
										<tr class=" xans-record-">
											<!--h3><span style="font-size:16px;color:#555555;">큐브테린 치즈</span></h3-->
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #2c2c2c;">price</span></th>
											<td><span style="font-size: 12px; color: #2c2c2c;"><strong
													id="span_product_price_text">${goods.goodsPrice }won </strong><input
													id="product_price" name="product_price" value=""
													type="hidden" /></span></td>
										</tr>

										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">상품간략설명</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">${goods.goodsContent }</span></td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">등록일</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">
												 <fmt:formatDate value="${ goods.goodsRegister }" type = "date" pattern="yyyy년MM월dd일"/>
											</span></td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">배송비</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">
												무료
											</span></td>
										</tr>

									</tbody>
								</table>
							</div>


							<div id="zoom_wrap"></div>

							<div class="xans-element- xans-product xans-product-action ">
							<br/><br/><br/><br/><br/>
								<!-- 텍스트버튼 -->
								<div class="btnArea">
									 <a href="addCart.sm?num=${goods.goodsSeq }" class=" bt_cart"
										onclick="product_submit(2, '/exec/front/order/basket/', this)"
										onmouseover="innerText='장바구니'"
										onmouseout="innerText='ADD TO CART'">ADD TO CART</a> <span
										class="displaynone cart">
										<br/><br/><br/><br/><br/><br/>
										<c:if test = "${ uniId == manager }">
										<a href="goodsModify.sm?num=${goods.goodsSeq }" class="bt_modify"
										onmouseover="innerText='상품 수정'" onmouseout="innerText='MODIFY'">
									MODIFY</a></span> <a href="goodsDelete.sm?num=${goods.goodsSeq }
										&image=${goods.goodsImage }&image1=${goods.goodsImage1 }&image2=${goods.goodsImage2 }	"
										
										onclick="add_wishlist_nologin('/member/login.html');"
										class=" bt_delete" onmouseover="innerText='상품 삭제'"
										onmouseout="innerText='DELETE'">DELETE</a>
										</c:if>
								</div>
								<!-- benefit -->
						
							</div>
							<!-- //참고 -->
						</div>
					</div>	<!-- 상단 디테일 종료 -->
					</c:if>
					
					<c:if test = "${ stock <= 0 && !empty stock}">
					<div class="detailArea">
						<!-- 이미지 영역 -->
						<div class="xans-element- xans-product xans-product-image imgArea ">
							<div class="keyImg">
								<div class="thumbnail" >
								<div style="background-image: url(SafeMall/update/${goods.goodsImage1 }); height: 500px; width: 500px; border: 1px solid black;">
								   <img src="images/safemall/soldout.png"/> 
								 </div>
									

									<!-- 좋아요/zoom -->

								</div>
							</div>	
						</div>
						<!-- //이미지 영역 -->

						<!-- 상세정보 내역 -->
						<div class="infoArea">
							<div class="icon">
								<span style="font-size: 15px; color: #ff000c;">
												SOLD OUT
											</span>
							</div>
							<div class="detail_title ">
								<!--[]-->
								${goods.goodsName }
							</div>

							<div class="xans-element- xans-product xans-product-detaildesign">
								<table border="1" summary="">

									<tbody>
										<tr class=" xans-record-">
											<!--h3><span style="font-size:16px;color:#555555;">큐브테린 치즈</span></h3-->
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #2c2c2c;">price</span></th>
											<td><span style="font-size: 12px; color: #2c2c2c;"><strong
													id="span_product_price_text">${goods.goodsPrice }won </strong><input
													id="product_price" name="product_price" value=""
													type="hidden" /></span></td>
										</tr>

										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">상품간략설명</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">${goods.goodsContent }</span></td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">등록일</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">
												 <fmt:formatDate value="${ goods.goodsRegister }" type = "date" pattern="yyyy년MM월dd일"/>
											</span></td>
										</tr>
										<tr class=" xans-record-">
											<th scope="row"><span
												style="font-size: 12px; color: #8a8a8a;">배송비</span></th>
											<td><span style="font-size: 12px; color: #8a8a8a;">
												무료
											</span></td>
										</tr>

									</tbody>
								</table>
							</div>


							<div id="zoom_wrap"></div>

							<div class="xans-element- xans-product xans-product-action ">
							<br/><br/><br/><br/><br/>
								<!-- 텍스트버튼 -->
								<div class="btnArea">
									
										<br/><br/><br/><br/><br/><br/>
										<c:if test = "${ uniId == manager }">
										<a href="goodsModify.sm?num=${goods.goodsSeq }" class="bt_modify"
										onmouseover="innerText='상품 수정'" onmouseout="innerText='MODIFY'">
									MODIFY</a></span> <a href="goodsDelete.sm?num=${goods.goodsSeq }
										&image=${goods.goodsImage }&image1=${goods.goodsImage1 }&image2=${goods.goodsImage2 }	"
										
										onclick="add_wishlist_nologin('/member/login.html');"
										class=" bt_delete" onmouseover="innerText='상품 삭제'"
										onmouseout="innerText='DELETE'">DELETE</a>
										</c:if>
								</div>
								<!-- benefit -->

							</div>
							<!-- //참고 -->
						</div>
					</div>	<!-- 상단 디테일 종료 -->
					</c:if>
				
				
				
				
				</div>
			
				<div class="xans-element- xans-product xans-product-normalpackage ">
					<div class="xans-element- xans-product xans-product-normalmenu ">
						<div class="function">
							<p class="prdCount">상품 상세정보</p>
						</div>
					</div>
				</div>
				<br/><br/>
				<div id = "imageBox">
					<img src="SafeMall/update/${goods.goodsImage2 }"/>
					<img src = "images/safemall/EAB3B5ED86B5ED8E98EC9DB4ECA780-2.jpg">
				</div>
				
			</div>
			<!-- 컨텐츠 종료-->
			
			<!-- footer시작 -->
			<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
			<!-- footer종료 -->
		</div>

	</div>
	<!-- wrap종료 -->
</body>
</html>