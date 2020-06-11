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

							<span>구매 내역!</span>
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
							<p class="prdCount">[${buyCount }]ITEM</p>
						</div>
						<!-- 상품 수 출력 종료 -->
					</div>
				</div>
				<!-- 메인 종료 -->
				<div>
					<br /> <br /> <br />
				</div>

				
				<div>
				
				<c:if test = "${!empty buys }">
				
					<table class = "table2"id = "table2" width=100% border="0" cellpadding="0" cellspacing="0">

						<tr align="center" valign="middle" bordercolor="#333333">
						
							<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
								<div align="center">IMAGE</div>
							</td>
							<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
								<div align="center">PRODUCT NAME</div>
							</td>
							<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
								<div align="center">PRICE</div>
							</td>
							<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
								<div align="center">QTY</div>
							</td>
							<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
								<div align="center">USER NAME</div>
							</td>
					
						</tr>
				
					
					<c:forEach var="buy" items="${buys }" varStatus="status" step="1">
							<tr align="left" valign="middle" bordercolor="#333333"
								onmouseover="this.style.backgroundColor='F8F8F8'"
								onmouseout="this.style.backgroundColor=''">
								

								<td>
									<div align="center">
									
										<a href="goodsDetail.sm?num=${buy.goodsSeq }"><img src="SafeMall/update/${buy.goodsImage }" width = "80px" height = "80px"/></a>
									</div>
								</td>

								<td >
									<div align="center">${buy.goodsName }</div>
								</td>
								<td >
									<div align="center">
										${ buy.goodsPrice }
											
									</div>
								</td>
								<td >
									<div align="center">${ buy.goodsQty }</div>
								</td>
								
								<td>
										<div align="center">${buy.userName }</div>
								</td>
								<td >
								
								
							</tr>
					</c:forEach>
					</table>
				<div>
					<br /> <br /> <br />
				</div>	
					<div class="xans-element- xans-board xans-board-paging-4 xans-board-paging xans-board-4" align=  center>		
						

			<c:if test="${page <= 1 }">
        		<img src = "images/safemall/btn_page_prev.gif"/>
			</c:if> 
			
			<c:if test="${page >1 }">
				<a href="safeMallBuyList.sm?page=${page -1 }"><img src = "images/safemall/btn_page_prev.gif"/></a>
        	</c:if>
        	
        	
          	<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
				<span class="xans-record-"><a href="safeMallBuyList.sm?page=${i }">${i}</a></span>
			</c:forEach> 
			
			<c:if test="${page >= maxPage}">
         		<img src = "images/safemall/btn_page_next.gif"/>
       		</c:if> 
       		<c:if test="${page < maxPage}">
				<a href="safeMallBuyList.sm?page=${page +1 }"> <img src = "images/safemall/btn_page_next.gif"/></a>
			</c:if>

						
			</div>
			
	
		</c:if>
		</div>
		
		<c:if test = "${empty buys }">
				<div id="reviewEmpty">
					<table>
						<tr align="center" valign="middle">
							<td align=right><font size=2>구매 내역이 없습니다!</font></td>
						</tr>

					</table>
				</div>	
		</c:if>
		<div><br/><br/><br/></div>
			

			</div>

			<!-- 컨텐츠 종료-->
		<!-- footer 시작 -->
		<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
		<!-- footer종료 -->
	</div>
	<!-- container 종료 -->
	</div>
	<!-- wrap종료 -->
</body>
</html>