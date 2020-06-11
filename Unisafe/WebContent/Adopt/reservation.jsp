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
<link rel="stylesheet" type="text/css" href="css/reservation.css" />
<link rel="icon" type="image/png" href="images/favicon.png" />

</head>
<body>
	<div id="wrap">

		<!-- 헤더시작 -->
<jsp:include page="../Unisafe/header.jsp"></jsp:include>
		<!-- 왼쪽 영역 -->


		<div id="container">
			<!-- LNB 시작 -->


			<!-- LNB -->
			<div id="lnb">

				<!-- 유니세프 소개 -->
				<div class="titBox">
					<h1>
						<a href="/intro/idea.asp">입양하기<span>Adopt</span></a>
					</h1>
					<a href="/intro/idea.asp" class="btnAbs"></a>
				</div>
				<ul class="one_depth">
					<li class="on" style="border-top: 1px solid rgb(222, 222, 222);">
					<li><a href="reservation.at">상담 예약</a></li>
					<li class="onm"><a href="userModify.us">마이페이지</a>
				</ul>

			</div>
			<div id="contents">
			<!-- Google-Fonts -->
			<!--[[AREA_BODY_START]]-->
			<div id="subContents">
				<!--BODY[[[-->


				<div class="calendar-form" style="padding-left: 50px;">
					<div class="header">
						<h4>
							<i class="fa fa-check-circle-o" aria-hidden="true"></i> 예약안내
						</h4>
						<ol>
							<li>예약하기 버튼을 누르고 예약해 주세요.</li>
							<li>반드시 <strong>휴대폰 번호를 입력</strong>해 주세요.
							</li>
						</ol>
					</div>
					<div class="body assc-bg">

						<table class="calendar">
							<thead>
								<tr>
									<th colspan="7">
										<div class="calendar-nav">
											<div class="nav-item prev">
												<a
													href="reservation.at?action=minus&year=${nYear}&month=${nMonth}">
													<font size="2"><</font>
												</a>
											</div>
											<div class="nav-item year">
												<b>${nYear}년 ${nMonth}월</b>
											</div>
											<div class="nav-item next">
												<a
													href="reservation.at?action=plus&year=${nYear}&month=${nMonth}">
													<font size="2">></font>
												</a>
											</div>
										</div>
									</th>
								</tr>
								<tr>
									<th class="calendar-cell holiday ">일</th>
									<th class="calendar-cell">월</th>
									<th class="calendar-cell">화</th>
									<th class="calendar-cell">수</th>
									<th class="calendar-cell">목</th>
									<th class="calendar-cell">금</th>
									<th class="calendar-cell saturday">토</th>
								</tr>

							</thead>
							<tbody>
								<tr class="calendar-row">
									<c:set var="j" value="0" />
									<c:forEach var="i" begin="1" end="35" varStatus="status">
										<c:if test="${ i < dayNum }">
											<td class="calendar-cell">&nbsp;</td>
										</c:if>
										<c:if test="${i >= dayNum && i < maxDay + dayNum }">
											<td class="calendar-cell reservation-cell ellipsis ">
												<div class="reservation-cell-wrap reservation "
													data-day="${ j = j+1 }">
													<c:if test="${status.count%7 != 0 && status.count%7 != 1 }">
														<a
															href="javascript:moveApplication('${nYear }-${nMonth }-${j }',${num });"
															class="btn" data-day="${ j }"></a>
													</c:if>
												</div>
											</td>
										</c:if>
										<c:if test="${  i >= maxDay + dayNum}">
											<td class="calendar-cell">&nbsp;</td>
										</c:if>
										<c:if test="${ status.count % 7 == 0 }">
								</tr>
								<tr class="calendar-row">
									</c:if>
									</c:forEach>
								</tr>
							</tbody>
						</table>
						<div class="btnJoin3">&nbsp;&nbsp;</div>
					</div>
				</div>
			</div>
				<script type="text/javascript">
					jQuery(function() {
					});

					function moveApplication(date, num) {
						console.log(date);
						console.log(num);
						var guestAuth = '';
						var isUser = '';

						var authLev = '1';
						var userLev = '1';

						location.href = "reservationform.at?date=" + date
								+ "&num=" + num;

					}
				</script>
				<!--BODY]]]-->
			</div>
			<!--[[AREA_BODY_END]]-->
</div>
			<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
		</div>
</body>
</html>
