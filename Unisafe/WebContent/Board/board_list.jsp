<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/intro.css" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
  <link rel="icon" type="image/png" href="images/favicon.png" />

</head>
<body>
	<div id="wrap">


	<jsp:include page="../Unisafe/header.jsp"></jsp:include>
		


		<div id="container">
			<!-- LNB 시작 -->


			<!-- LNB -->
			<div id="lnb">

				<!-- 유니세프 소개 -->
				<div class="titBox">
					<h1>
						<a href="/intro/idea.asp">자료실<span>UNISAFE board</span></a>
					</h1>
					<a href="/intro/idea.asp" class="btnAbs"></a>
				</div>
				<ul class="one_depth">
					<li><a href="board.bd">분양후기</a></li>
					<li><a href="news.us">뉴스</a></li>
					<li><a href="unisafe_news.us">유니세이프 소식</a></li>
				</ul>
				<!--// 왼쪽 LNB끝 -->
			</div>
				
								
			
			
			<div id="contents">
				<div class="contentsTop">
					<h2>분양 후기</h2>
				</div>
				<div class="relCon">
					<div class="tableTop"></div>
					<div class="table01">
						<table width="600" summary="공지사항 글 번호, 제목, 등록일을 볼 수 있는 테이블 입니다." class=""
							border="0" cellpadding="0" cellspacing="0"
							style="table-layout: fixed;">
							<caption>분양후기 게시판입니다.</caption>
							<colgroup>
								<col style="width: 10%" />
								<col style="width: 50%" />
								<col style="width: 10%" />
								<col style="width: 20%" />
								<col style="width: 10%" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">작성자</th>
									<th scope="col">등록일</th>
									<th scope="col">조회수</th>

								</tr>

							</thead>
							<tbody>

								<c:forEach items="${boards }" var="board" varStatus="status">
									<tr align="center" valign="middle" bordercolor="#333333"
										onmouseover="this.style.backgroundColor='F8F8F8'"
										onmouseout="this.style.backgroundColor=''">
										<td height="23" style="font-family: Tahoma; font-size: 10pt;">
											${board.boardNum }</td>
										<td style="font-family: Tahoma; font-size: 10pt;">
											<div align="left">
												<a href="boardDetailAction.bd?num=${board.boardNum }">
													${board.boardSubject } </a>
											</div>
										</td>
										<td style="font-family: Tahoma; font-size: 10pt;">
											<div align="center">${board.userId }</div>
										</td>
										<td style="font-family: Tahoma; font-size: 10pt;">
											<div align="center">
												<fmt:formatDate value="${board.boardDate }" type="Date"
													pattern="yyyy년 MM월 dd일" />
											</div>
										</td>
										<td style="font-family: Tahoma; font-size: 10pt;">
											<div align="center">${board.readCount }</div>
										</td>
									</tr>
								</c:forEach>


								<tr align="right">
									<td colspan="5">
										<div class="btnJoin1">
											<span><a href="./boardWrite.bd">글쓰기</a></span>&nbsp;&nbsp;
										</div>
									</td>
							</tbody>
						</table>
					</div>
					<!-- 페이징 시작 -->

					<div class="paging">
						<tr align=center height=20>
				         <td colspan=7 style=font-family:Tahoma;font-size:10pt;>
				            <c:if test="${page > 1}">
				            	&nbsp;<a href="./board.bd?page=${page-1}">[이전]</a>
				            </c:if>
				            <c:forEach begin="${startPage}" end="${endPage}" step="1" var="i" >
				               <a href="board.bd?page=${i}">[${i}]</a>
				            </c:forEach>
				               <a href="#"></a>&nbsp;
				            <c:if test="${page < maxPage}">
				            &nbsp;<a href="./board.bd?page=${page+1}">[다음]</a>
				            </c:if>
				         </td>
				      </tr>
					</div>

					<!-- 페이징 끝 -->
				</div>
			</div>
			<!-- contents 끝 -->
		</div>
	</div>
	<!-- container 끝 -->
	<!-- footer영역 -->

	<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
</body>
</html>
