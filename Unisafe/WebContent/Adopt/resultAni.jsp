<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>
  <link rel="icon" type="image/png" href="images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Pacifico&display=swap"
	rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/adopt.css" />

</head>
<body>

								<div class="leiste">
									<div class="text-center">

										<div class="heading">
											<c:choose>

												<c:when test="${species == 1}">
													<strong>개</strong>
												</c:when>

												<c:when test="${species == 2}">
													<strong>고양이</strong>
												</c:when>

												<c:when test="${species == 3}">
													<strong>작은 동물</strong>
												</c:when>

												<c:when test="${species == 4}">
													<strong>파충류</strong>
												</c:when>

												<c:when test="${species == 5}">
													<strong>조류</strong>
												</c:when>

												<c:when test="${species == 6}">
													<strong>대동물</strong>
												</c:when>

											</c:choose>

										</div>
									</div>
								</div>


								<!-- sample 사진 나열 -->
								<div>
									<ul class="animals_grid row">

										<c:forEach items="${listAni }" var="list">
											<li><a href="aniDetail.at?num=${list.aniNum }"
												target="_blank"> <label class="tier_label"> <font
														style="vertical-align: inherit;"> <font
															style="vertical-align: inherit;">${list.aniName }</font></font></label>
													<img src="./Adopt/animal/${list.storeFileName }"
													alt="${list.aniName }" class="tierbild">
											</a></li>
										</c:forEach>
									</ul>

								</div>


								<div class="leiste">
									<div class="pages">
										<button class="btn box-shadow" type="button" name="button"
											onclick="location.href='adopt.at?species=${species }&page=${page -1 }'"><</button>

										<span class="heading" v-show="totalPages > 0"> </span>
										<button class="btn box-shadow" type="button" name="button"
											onclick="location.href='adopt.at?species=${species }&page=${page +1 }'">></button>
									</div>
								</div>



</body>
</html>