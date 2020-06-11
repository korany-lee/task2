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
$(function(){
	$("#frm").submit(function(){
		if($("#userCard").val() == ""){
			$("#userCard").focus();
			alert("카드사를 선택하세요.");
			return false;
		}
		if($("#userCardNo1").val() == ""){
			$("#userCardNo1").focus();
			alert("카드번호를 입력하세요.");
			return false;
		}
		if($("#userCardNo2").val() == ""){
			$("#userCardNo2").focus();
			alert("카드번호를 입력하세요.");
			return false;
		}
		if($("#usercvcNo").val() == ""){
			$("#usercvcNo").focus();
			alert("cvc번호를 입력하세요.");
			return false;
		}
		if($("#userCardDate1").val()==""){
			$("#userCardDate1").focus();
			alert("유효일자를 입력하세요.");
			return false;
		}
		if($("#userCardDate2").val()==""){
			$("#userCardDate2").focus();
			alert("유효일자를 입력하세요.");
			return false;
		}
		
		
	});
	
	
});

function kakaopay(){
	kakaopay1.submit();
}


</script>
</head>
<body>
	<div id="wrap">

		<jsp:include page="../SafeMall/header_s.jsp"></jsp:include>

		<!-- 메인  -->
		<div id="container" align="center">
			<div id="contents">


				<div class="xans-element- xans-product xans-product-menupackage ">
					<div
						class="xans-element- xans-product xans-product-headcategory title ">
						<p class="banner"></p>
						<h2>

							<span>상품 결제</span>
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
						</table>
					</div>
				</div><!-- 배송정보 종료 -->
		
			<!-- 결제수단 시작 -->
			<div>
					<br /> <br /> <br />
					</div>
					<div class="xans-element- xans-product xans-product-normalpackage ">
					<div class="xans-element- xans-product xans-product-normalmenu ">
						
						<div class="function">
							<p class="prdCount">카드 결제</p>
						</div>
						
					</div>
				</div>
				<div>
					<br /> <br /> <br />
					</div>
		
			<div id = "creditPay"><!-- 결제 창 시작 -->
				
				<div class="table1" id="creditInfo" align="center">
					<form action = "goodsPayPro.sm" method = "post" id = "frm">
						<table>
						<tr>
							<th style="width: 100px;">카드 사</th>
								<td>
									<select name="userCard" id="userCard" class="select"
												style="width: 70px;" req fname="카드사">
												<option value=''>-선택-</option>
													<option value='BC'>비씨</option>
													<option value='SS'>삼성</option>
													<option value='SH'>신한</option>
													<option value='HD'>현대</option>
													<option value='NH'>NH</option>
													<option value='KB'>KB</option>
											</select>
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">카드 번호</th>
								<td>
									<input type="text" name="userCardNo1" id="userCardNo1" class="input_text numOnly" style="width: 70px;" req num fname="카드번호" maxlength="4" />&nbsp;- 
									<input type="text" name="userCardNo2" id="userCardNo2" class="input_text numOnly" style="width: 70px;" req num fname="카드 번호" maxlength="4" />&nbsp;- 
									<input type="text" name="userCardNo3" id="userCardNo3" class="input_text numOnly" style="width: 70px;" req num fname="카드번호" maxlength="4" />&nbsp;-
									<input type="text" name="userCardNo4" id="userCardNo4" class="input_text numOnly" style="width: 70px;" req num fname="카드번호" maxlength="4" />
								</td>
						</tr>
							<tr>
								<th style="width: 100px;">cvc</th>
								<td>
									<input type="text" name="usercvcNo" id="usercvcNo" class="input_text numOnly" style="width: 50px;" req num fname="cvc" maxlength="3" />
								</td>
							</tr>
							<tr>
								<th style="width: 100px;">유효 일자</th>
								<td>
									<input type="text" name="userCardDate1" id="userCardDate1" class="input_text numOnly" style="width: 30px;" req num fname="cvc" maxlength="2" />&nbsp;월
									<input type="text" name="userCardDate2" id="userCardDate2" class="input_text numOnly" style="width: 30px;" req num fname="cvc" maxlength="2" />&nbsp;년
								</td>
							</tr>
							
						</table>
						<input type = "hidden" value = "${userInfo.goodsSeq }" name = "goodsSeq">
						<input type = "hidden" value = "${userInfo.goodsQty }"name = "goodsQty">
						<input type = "hidden" name = "userName" value = "${userInfo.userName}">
						<input type = "hidden" name = "totalMoney" value = " ${totalMoneyReal }">
						<input type = "hidden" name = "userPh" value = " ${userInfo.userPh }">
						<input type = "submit" value = "결제하기">
						
					</form>
			</div>	<!-- 결제 창 종료 -->
			<div>
					<br /> <br /> <br />
					</div>
					<div class="xans-element- xans-product xans-product-normalpackage ">
					<div class="xans-element- xans-product xans-product-normalmenu ">
						
						<div class="function">
							<p class="prdCount">카카오페이</p>
						</div>
						
					</div>
				</div>
				<div>
					<br /> <br /> <br />
					</div>
		
			<div id = "creditPay"><!-- 결제 창 시작 -->
				
			
					<form action = "kakaoPay.sm" method = "post" id = "kakaopay1" name = "kakaopay1" style="
    margin-bottom: 60px;
					">
						
			 <input type = "hidden" name="name" value = "${unserInfo.unserName }">

			<!-- 값 가져오기 -->
					
		
			
		
		
			<input  type = "hidden" name="phone" value = "${userInfo.userPh }">
	
		
		
			<input  type = "hidden" name="address" value = "${userInfo.userAddr }">
		
		
		
			<input type = "hidden" name="totalPrice" value = "${totalMoneyReal  }">
		
			
			<a href = "javascript:kakaopay()" ><img src = "images/safemall/kakaopay.jpg" width = "178px" height = "50px"> </a>
						
					</form>
			<!-- 결제 창 종료 -->
			
			</div>
			
			

			<!-- 컨텐츠 종료-->
			<!-- footer시작 -->
			 <!-- footer시작 -->
			<!-- footer종료 -->
		<!-- footer종료 -->
			<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
	</div>
	<!-- wrap종료 -->
</body>
</html>