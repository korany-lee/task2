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
		<jsp:include page="../SafeMall/header_s.jsp"></jsp:include>
		<!-- 헤더 종료 -->

		<!-- 컨테이너 시작 -->
		<div id="container">
			<br />
			<br />
			<br />
			<br />
			<!-- 메인 컨텐츠 -->
			<div class="contents">

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
								<td>${qna.userName }</td>
							</tr>

							<tr>
								<th style="width: 100px;">SUBJECT</th>
								<td>${qna.qnaSubject }</td>
							</tr>

							<tr>
								<th style="width: 100px;">CONTENT</th>
								<td>${qna.qnaContent }</td>
							</tr>
							<tr>
								<th style="width: 100px;">DATE</th>
								<td><fmt:formatDate value="${ qna.qnaDate }" type="date"
										pattern="yyyy/MM/dd" /></td>
							</tr>


						</table>

					</div>
					<div class="xans-element- xans-product xans-product-action ">
						<div class="btnArea" align=center>
							<a href="safeMallQ&A.sm" class=" bt_list"
								onclick="product_submit(2, '/exec/front/order/basket/', this)"
								onmouseover="innerText='목록으로'"
								onmouseout="innerText='BACK TO LIST'">BACK TO LIST</a> <span
								class="displaynone cart"> <a
								href="qnaModify.sm?num=${qna.qnaNum }" class="bt_modify"
								onmouseover="innerText='문의 수정'" onmouseout="innerText='MODIFY'">
									MODIFY</a></span> <a href="qnaDelete.sm?num=${qna.qnaNum }"
								onclick="add_wishlist_nologin('/member/login.html');"
								class=" bt_delete" onmouseover="innerText='문의 삭제'"
								onmouseout="innerText='DELETE'">DELETE</a>
						</div>

						<div>
							<br /> <br /> <br />
							<br />
							<br />
							<br />
						</div>

						<div
							class="xans-element- xans-product xans-product-normalpackage ">
							<div class="xans-element- xans-product xans-product-normalmenu ">
								<!-- 상품 수 출력 -->
								<div class="function">
									<p class="prdCount">REPLY</p>
								</div>
								<!-- 상품 수 출력 종료 -->
							</div>
						</div>

					</div>
					<div class="xans-element- xans-product xans-product-action ">
						<br />
						<br />
						<br />
						<br />
						<br />
						<!-- 텍스트버튼 -->
						<div class="btnArea" align=center>
						<c:if test = "${ uniId == manager }">
							<a href="replyWrite.sm?num=${qna.qnaNum }"
								onclick="add_wishlist_nologin('/member/login.html');"
								class=" bt_reply" onmouseover="innerText='답변 등록'"
								onmouseout="innerText='REPLY'">REPLY</a>
						</c:if>
						</div>
						<!-- benefit -->

					<div>
						<c:if test="${!empty reply }">

								<table class="table2" id="table2" width=100% border="0"
									cellpadding="0" cellspacing="0">

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


									<c:forEach var="reply" items="${reply }" varStatus="status"
										step="1">
										<tr align="left" valign="middle" bordercolor="#333333"
											onmouseover="this.style.backgroundColor='F8F8F8'"
											onmouseout="this.style.backgroundColor=''">
											<td height="23">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${qna.qnaNum }</td>

											<td>
												<div align="center">
													<a href="replyDetail.sm?num=${reply.replyNum }">${ reply.replySubject }</a>

												</div>
											</td>
											<td>
												<div align="center">${ reply.userName }</div>
											</td>

											<td>
												<div align="center">
													<fmt:formatDate value="${ reply.replyDate }" type="date"
														pattern="yyyy/MM/dd" />
												</div>
											</td>

										</tr>
									</c:forEach>
								</table>
								<div>
									<br /> <br /> <br />
								</div>
						</div>


						</c:if>
						<c:if test="${empty reply }">
							<div id="replyEmpty" align  = center>
								<table>
									<tr align="center" valign="middle">
										<td align=right><font size=2>등록된 답변이 없습니다!</font></td>
									</tr>
								</table>
							</div>
						</c:if>

					</div>
				</div>
			
			<!-- 메인 컨텐츠 종료 -->

			<!-- 컨테이너 종료 -->
		
			</div>
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
