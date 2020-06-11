<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAFE-MALL</title>
  <link rel="icon" type="image/png" href="images/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/safemall/goodsList.css" />
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
</head>
<body>
	<div id="wrap">

	<jsp:include page="../SafeMall/header_sm.jsp"></jsp:include>

	<div class="contents">
		<!-- 헤더시작 -->
		<!-- 카테고리 -->
		

		<!-- 메인  -->
		<div id="container" align = "center">
			<div id="contents">


				<div class="xans-element- xans-product xans-product-menupackage ">
					<div
						class="xans-element- xans-product xans-product-headcategory title ">
						<p class="banner"></p>
						<h2>

							<span>악세서리!</span>
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
							<p class="prdCount">CATEGORY ITEM : ${accessoryCount }ITEM</p>
						</div>
						<!-- 상품 수 출력 종료 -->
					</div>
				</div>
				<!-- 메인 종료 -->
				<div>
					<br /> <br /> <br />
				</div>
			<c:if test = "${!empty goods }">
				<div id = "productList" float = "left">
				<table>
					<tr>
					<c:forEach var="goods1" items="${goods }" varStatus="status" step="1">
					<td  >
					<table id = "product"  cellpadding="5" cellspacing="0" width = "auto">
							<tr><td><a href="goodsDetail.sm?num=${goods1.goodsSeq }"><img src="SafeMall/update/${goods1.goodsImage }" /></a></td></tr>
							<tr><td><a href="goodsDetail.sm?num=${goods1.goodsSeq }">상품명:${goods1.goodsName }</a><td></tr>
							<tr><td>가격:${goods1.goodsPrice }won</td></tr>
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
				</div>
				</c:if>
				
				<c:if test = "${empty goods }">
  					<div id = "cartEmpty">
  		 				<table>
  		 		<tr align="center" valign="middle">
      				<td align=right>
         				<font size=2>상품 준비 중 입니다!</font>
      				</td>
 			  </tr>
 		 				 </table>
					</div>
				</c:if>
				
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