<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Pacifico&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/adopt.css" />
<link rel="stylesheet" type="text/css" href="css/intro.css" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/match_result.css" />
  <link rel="icon" type="image/png" href="images/favicon.png" />
<script type="text/javascript">
	
</script>

</head>
<body>



	
	<jsp:include page="../Unisafe/header.jsp"></jsp:include>

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
					<li class="onm"><a href="#">마이페이지</a>
				</ul>
			</div>
			<!-- LNB 끝 -->
			
			<div id="contents">
			
				<div class="header">
					<p class="h2">
						 매칭결과
					</p>
				</div>
				
				<c:if test="${!empty result }">
				<div class="relCon">
					<div id="joinInfo" class="joinInfo2">
						<ul>
							<li> <span>축하합니다!</span> 회원님께 아래의 동물들이 매칭되었습니다. </li>
							<li> 아래의 사진을 클릭하시면 해당 동물 <span>상세보기</span>로 이동합니다.</li>
							<li> 동물들을 자세히 살펴보시고, 입양을 원하시면 입양하기 버튼을 눌러 상담 예약을 해주시기 바랍니다.	</li>
							<li> 다시 돌아가시려면 <span><a href="adopt.at">메인으로</a></span>가기 버튼을 눌러주세요.</li>
						</ul>
					</div>
				</div>
			
			<div class="animals_result1">
				
			<div id="content" class="container">
			<div class="row justify-content-around">
						<div class="	 col">
							<ul class="animals_grid row" style="height:400px;">


								<c:forEach items="${result }" var="list">
									<li><a href="aniDetail.at?num=${list.aniNum }"
										target="_blank"> <label class="tier_label"> <font
												style="vertical-align: inherit;"> <font
													style="vertical-align: inherit;">${list.aniName }</font></font></label> <img
											src="./Adopt/animal/${list.fileName }" alt="${list.aniName }"
											class="tierbild">
									</a></li>
								</c:forEach>

							</ul>

						</div>
					</div>
				</div>
			</div>
			</c:if>
	<c:if test="${empty result }">
	<div class="relCon">
					<div id="joinInfo" class="joinInfo2">
						<ul>
							<li> <img src="images/sad-face.svg" alt="sad"></li>
							<li> 아쉽게도 매칭이 되지 않았습니다.</li>
							
							<li> 다시 돌아가시려면 <span><a href="adopt.at">메인으로</a></span>가기 버튼을 눌러주세요.</li>
						</ul>
					</div>
				</div>
	
	</c:if>
			
		  </div>
		  <!-- contents ㅡㅌ -->
		</div>
		<!-- container 끝 -->






	<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
</body>
</html>