<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAFE-MALL</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/safemall/goodsList.css" />
<link rel="stylesheet" type="text/css" href="css/safemall/goodsPay.css" />
  <link rel="icon" type="image/png" href="images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<script type="text/javascript">
function checkQty(num, qty){
	if(qty > 1){
		location.href="cartQtyDown.sm?goodsNum="+num;
	}else{
		return false;
	}
}

$(function() { $("#postcodify").postcodify({
    insertPostcode5 : "#postcode",
    insertAddress : "#address",
    insertDetails : "#details",
    insertExtraInfo : "#extra_info",
    hideOldAddresses : false
}); });


</script>
</head>
<body>
	<div id="wrap">

		<!-- 헤더시작 -->
		<!-- 카테고리 -->
		<jsp:include page="../SafeMall/header_s.jsp"></jsp:include>
		<!-- 메인  -->
		<div id="container" align="center">
			<div id="contents">


				<div class="xans-element- xans-product xans-product-menupackage ">
					<div
						class="xans-element- xans-product xans-product-headcategory title ">
						<p class="banner"></p>
						<h2>

							<span>결제가 완료 되었습니다.</span>
						</h2>
					</div>
				</div>
				<div>
					<br /> <br /> <br />
				</div>

				
				<!-- 메인 종료 -->
				<div>
					<br /> <br /> <br />
				</div>
				
				<div class="xans-element- xans-product xans-product-normalpackage ">
					<div class="xans-element- xans-product xans-product-normalmenu ">
						<!-- 상품 수 출력 -->
						<div class="function">
							<p class="prdCount">상품 리스트</p>
						</div>
						<!-- 상품 수 출력 종료 -->
					</div>
				</div>
				<div>
					<br /> <br /> <br />
					</div>
					<div id="productList" float="left">
						
							<table align="center" width="600">
								<tr align="center">

									<td></td>
									<td>상품명</td>
									<td>가격</td>
									<td>수량</td>
									
								</tr>
								<c:forEach var="buy" items="${buyList }" step="1">
									<tr align="center">

										<td><img src="SafeMall/update/${buy.goodsImage }"
											width="100" /></td>
										<td>${buy.goodsName }</td>
										<td>${buy.goodsPrice }원</td>
										<td> ${buy.goodsQty }개 </td>
										
									</tr>
								</c:forEach>
							</table>
						
						<table align="center" width="600" border="0">
							<tr align="center">
								<td align="right" colspan="6"><font color="gray" size="5">총
										결제금액 : ${totalMoneyReal }</font> <font color="black" size="5">원</font></td>
							</tr>
						</table>
					</div>
					<div>
					<br /> <br /> <br />
					</div>
					<div class="xans-element- xans-product xans-product-normalpackage ">
					<div class="xans-element- xans-product xans-product-normalmenu ">
						
						<div class="function">
							<p class="prdCount">배송정보 확인</p>
						</div>
						
					</div>
				</div>
				<div>
					<br /> <br /> <br />
					</div>
				
				<div class="relCon"><!-- 배송정보 시작 -->
					
					<div class="table11" id="ustiInfo" align="center">
						<table>
						<tr>
							<th style="width: 100px;">주문고객</th>
								<td>
									${userInfo.userName }
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">연락처</th>
								<td>
									${userInfo.userPh }
								</td>
						</tr>
							<tr>
								<th style="width: 100px;">우편번호</th>
								<td>
									${userInfo.userPostCode }
								</td>
							</tr>
							<tr>
								<th style="width: 100px;">주소</th>
								<td>
									${userInfo.userAddr }
								</td>
							</tr>
							<tr>
								<th style="width: 100px;">상세 주소</th>
								<td>
									${userInfo.userDetailAddr }
								</td>
							</tr>
						<tr>
							<th style="width: 100px;">배송 메모</th>
							<td>
									${userInfo.userMemo }
								</td>			
						</tr>
						<tr>
							<th style="width: 100px;">주문 번호</th>
							<td>
									${userInfo.orderNum }
								</td>			
						</tr>
						</table>
					</div>
				</div><!-- 배송정보 종료 -->
					<div>
					<br /> <br /> <br />
					</div>
			
			<a href = "safemall.sm"><input type = "button" value = "메인으로"></a>
			
			</div>
			
			

			<!-- 컨텐츠 종료-->
		<!-- footer 시작 -->
		<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
		<!-- footer종료 -->
	</div>
	<!-- wrap종료 -->
</body>
</html>