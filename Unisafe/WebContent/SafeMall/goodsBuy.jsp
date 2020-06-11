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

  <link rel="icon" type="image/png" href="images/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/safemall/goodsList.css" />

<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">

<script>
    $(function() { $("#postcodify").postcodify({
        insertPostcode5 : "#postcode",
        insertAddress : "#address",
        insertDetails : "#details",
        insertExtraInfo : "#extra_info",
        hideOldAddresses : false
    }); });
</script>	
	
	
	
<script type="text/javascript">
function checkQty(num, qty){
	if(qty > 1){
		location.href="cartQtyDown.sm?goodsNum="+num;
	}else{
		return false;
	}
}


$(function(){
	$("#frm").submit(function(){
		if($("#userName").val() == ""){
			$("#userName").focus();
			alert("성명을 입력하세요.");
			return false;
		}
		if($("#userPh1").val() == ""){
			$("#userPh1").focus();
			alert("연락처를 입력하세요.");
			return false;
		}
		if($("#postcode").val()==""){
			$("#postcode").focus();
			alert("우편번호를 입력하세요.");
			return false;
		}
		if($("#address").val()==""){
			$("#address").focus();
			alert("주소를 입력하세요.");
			return false;
		}
		if($("#details").val()==""){
			$("#details").focus();
			alert("상세주소를 입력하세요.");
			return false;
		}
		if($("#memo").val()==""){
			$("#memo").focus();
			alert("배송 메모를 입력하세요.");
			return false;
		}
		
		
	});
	
	
});

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

							<span>상품 구매</span>
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
								<c:forEach var="cart" items="${cartList }" step="1">
									<c:forEach items="${ chkNum }" var="num1" >
									<c:if test="${ cart.goodsSeq eq num1 }">
										<tr align="center">
												<td><img src="SafeMall/update/${cart.goodsImage }"
												width="100" /></td>
											<td>${cart.goodsName }</td>
											<td>${cart.goodsPrice }원</td>
											<td><a href="cartQtyUp.sm?goodsNum=${cart.goodsSeq }">
													</a> ${cart.qty }개 <a
												href="javascript:checkQty('${cart.goodsSeq }',${cart.qty })">
													</a></td>
										</tr>
									</c:if>
									
									</c:forEach>
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
						<!-- 상품 수 출력 -->
						<div class="function">
							<p class="prdCount">배송정보 입력</p>
						</div>
						<!-- 상품 수 출력 종료 -->
					</div>
				</div>
				<div>
					<br /> <br /> <br />
					</div>
				
				<div class="relCon">
					
					<div class="table11" id="ustiInfo" align="center">
					<form action="goodsPay.sm" method="post" id = "frm" name="goodsForm">
						<table>
						<tr>
							<th style="width: 100px;">주문고객</th>
								<td>
									<input type="text" name="userName" id="userName" />
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">연락처</th>
								<td>
									<input type="text" name="userPh1" id="userPh1"
                           class="input_text numOnly" style="width: 70px;" req num
                           fname="휴대폰 번호" maxlength="3" />&nbsp;- <input type="text" name="userPh2" id="userPh2"
                           class="input_text numOnly" style="width: 70px;" req num
                           fname="휴대폰 번호" maxlength="4" />&nbsp;- <input type="text"
                           name="userPh3" id="userPh3" class="input_text numOnly"
                           style="width: 70px;" req num fname="휴대폰 번호" maxlength="4" />
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">배송지 검색</th>
								<td>
									<div id="postcodify"></div>

									<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 id를 부여한다 -->
											
								</td>
						</tr>
						
							<tr>
								<th style="width: 100px;">우편번호</th>
								<td>
									<input type="text" name="postcode" id="postcode" value=""/><br/>
								</td>
							</tr>
							<tr>
								<th style="width: 100px;">주소</th>
								<td>
									<input type="text" name="address" id="address" value="" /><br />
								</td>
							</tr>
							<tr>
								<th style="width: 100px;">상세 주소</th>
								<td>
									<input type="text" name="details" id="details" value="" /><br />
								</td>
							</tr>
						
					
						<tr>
							<th style="width: 100px;">배송 메모</th>
								<td><textarea rows="13" cols="56" 
									name="memo" id="memo"></textarea>
								</td>
						</tr>
						
						
						</table>
						
						<input type = "hidden" value = "${ chkNum }" name = "chkNum"/>
						<input type = "hidden" value = "${ orderNum }" name = "orderNum"/>
						<input type = "submit" value = "다음단계">
					</form>
					</div>
				
				</div>
			</div>

			<!-- 컨텐츠 종료-->
			<!-- footer시작 -->
		<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
		<!-- footer종료 -->
	</div>
	<!-- wrap종료 -->
</body>
</html>