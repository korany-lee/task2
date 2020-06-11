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

<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<script type="text/javascript">

</script>
<link rel="icon" type="image/png" href="images/favicon.png" />
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

							<span>Q&A!</span>
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
							<p class="prdCount">[${qnaCount }]Q&A</p>
						</div>
						<!-- 상품 수 출력 종료 -->
					</div>
				</div>
				<!-- 메인 종료 -->
				<div>
					<br /> <br /> <br />
				</div>

				
				<div>
				
				<c:if test = "${!empty qna }">
				
					<table class = "table2"id = "table2" width=100% border="0" cellpadding="0" cellspacing="0">

						<tr align="center" valign="middle" bordercolor="#333333">
							<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
								height="26">
								<div align="center">NO</div>
							</td>
							
							<td style="font-family: Tahoma; font-size: 8pt;" width="40%">
								<div align="center">SUBJECT</div>
							</td>
							<td style="font-family: Tahoma; font-size: 8pt;" width="15%">
								<div align="center">WRITER</div>
							</td>
							<td style="font-family: Tahoma; font-size: 8pt;" width="15%">
								<div align="center">DATE</div>
							</td>
							
						</tr>
				
					
					<c:forEach var="qna" items="${qna }" varStatus="status" step="1">
							<tr align="left" valign="middle" bordercolor="#333333"
								onmouseover="this.style.backgroundColor='F8F8F8'"
								onmouseout="this.style.backgroundColor=''">
								<td height="23">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${qna.qnaNum }</td>

								<td >
									<div align="center">
									<a href="qnaDetail.sm?num=${qna.qnaNum }">${ qna.qnaSubject }</a>
											
									</div>
								</td>
								<td >
									<div align="center">${ qna.userName }</div>
								</td>
								
								<td>
									<div align="center">
										<fmt:formatDate value="${ qna.qnaDate }" type="date"
											pattern="yyyy/MM/dd" />
									</div>
								</td>
								
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
				<a href="safeMallQ&A.sm?page=${page -1 }"><img src = "images/safemall/btn_page_prev.gif"/></a>
        	</c:if>
        	
        	
          	<c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
				<span class="xans-record-"><a href="safeMallQ&A.sm?page=${i }">${i}</a></span>
			</c:forEach> 
			
			<c:if test="${page >= maxPage}">
         		<img src = "images/safemall/btn_page_next.gif"/>
       		 </c:if> 
       		 <c:if test="${page < maxPage}">
				<a href="safeMallQ&A.sm?page=${page +1 }"> <img src = "images/safemall/btn_page_next.gif"/></a>
			</c:if>

						
			</div>
		</div>
				
				
		</c:if>
		
		<c:if test = "${empty qna }">
				<div id="reviewEmpty">
					<table>
						<tr align="center" valign="middle">
							<td align=right><font size=2>등록된 Q&A가 없습니다!</font></td>
						</tr>

					</table>
				</div>	
		</c:if>
		<div><br/><br/><br/></div>
				<div class = "review" float = "right">
				<a href="./safeQnAWrite.sm"
										
										class=" bt_reviewWrite" onmouseover="innerText='후기등록'"
										onmouseout="innerText='글쓰기'">글쓰기</a>
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