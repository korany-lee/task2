<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
	rel="stylesheet">
  <link rel="icon" type="image/png" href="images/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/animal_detail.css">

<script type="text/javascript">
function aniModifyPro(){	
	aniModify2.submit();
}
</script>

</head>

<body
	class="tiere-template-default single single-tiere postid-19915 group-blog">
	<div id="page" class="hfeed site">

		<div id="hero" class="hero single-animal" data-ride="hero">
			<div class="container hero_img" style="">
				<div class="inner section-padding">
					<div class="hero-wrap">
						<div class="tier--header text-center">
							<div class="d-inline-block">
								<img width="410" height="600"
									src="./Adopt/animal/${animalDetail.storeFileName }"
									class="attachment-large size-large wp-post-image" alt=""
									srcset="./Adopt/animal/${animalDetail.storeFileName } 171w"
									sizes="(max-width: 410px) 100vw, 410px" />
								<h1>${animalDetail.aniName }</h1>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid bg_image blur"
				style="background-image:
		url(./Adopt/animal/${animalDetail.storeFileName });"></div>
		</div>
		<div class="wrapper" id="single-wrapper">
			<div id="content" class="container ">
			<!-- 수정 form 여기 있어요 -->
			 <form action="aniModifyPro.ad" method="post" name="aniModify2" >
				<div id="animalGallery"
					class="gallery justify-content-start justify-content-xs-center owl-carousel owl-loaded owl-drag">
					<div class="owl-stage-outer">
						<div class="owl-stage"
							style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 816px;">
							<div class="owl-stage"
								style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 816px;">
								<div class="owl-item active"
									style="width: 262px; margin-right: 10px;">
									<div class="col-md-auto col-xs-6 mb-3 item">
										<a
											href="#"
											class="big"><img width="415" height="600"
											src="./Adopt/animal/${animalDetail.storeFileName }"
											class="attachment-klein size-klein wp-post-image" alt=""
											srcset="./Adopt/animal/${animalDetail.storeFileName } 173w"
											sizes="(max-width: 415px) 100vw, 415px"></a>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 262px; margin-right: 10px;">
									<div class="col-xs-6 col-md-auto item">
										<a
											href="./Adopt/animal/${animalDetail.storeFileName2 }"
											class="big"> <img
											src="./Adopt/animal/${animalDetail.storeFileName2 }" onerror="this.style.display='none'">
										</a>
									</div>
								</div>
								<div class="owl-item active"
								
									style="width: 262px; margin-right: 10px;">
									<div class="col-xs-6 col-md-auto item">
										<a
											href="./Adopt/animal/${animalDetail.storeFileName3 }"
											class="big"> <img
											src="./Adopt/animal/${animalDetail.storeFileName3 }" onerror="this.style.display='none'">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div id="primary" class="row content-area">
					<div class="entry-content col-xs-12 col-md-6 my-5 pr-5">
						<article id="post-19915"
							class="beschreibung post-19915 tiere type-tiere status-publish has-post-thumbnail hentry">
							<div id="container__animal_caring_location"></div>
							<p>${animalDetail.aniName } 의 현재 특성 </p>
							<textarea name="char2" rows="10" cols="50">${animalDetail.aniChar }</textarea>
						</article>
					</div>
					<div class="col-xs-12 col-md-5 col-lg-4 my-5">
							<div id="animal-data" class="animal-data row mb-5">
							<table class="col-12 table tierattribute">
								<thead></thead>
								<tbody>
									<tr>
										<td>고유번호</td>
										<td>20/${animalDetail.aniNum }
										<input type="hidden" name="aniNum" value="${animalDetail.aniNum }"></td>
										
									</tr>
									<tr>
										<td>동물 군</td>
										<td>
										<c:choose>
										<c:when test="${animalDetail.species == '1' }">
										개
										</c:when>
										<c:when test="${animalDetail.species == '2' }">
										고양이
										</c:when>
										<c:when test="${animalDetail.species == '3' }">
										소동물
										</c:when>
										<c:when test="${animalDetail.species == '4' }">
										파충류/외래종
										</c:when>
										<c:when test="${animalDetail.species == '5' }">
										조류
										</c:when>
										<c:when test="${animalDetail.species == '6' }">
										대동물
										</c:when>
										</c:choose>
										 </td>
									</tr>
									<tr>
										<td>성별</td>
										<td>
										
										<input name="aniGender" value="${animalDetail.aniGender }"/>
										
										</td>
									</tr>
									<tr>
										<td>종</td>
										<td><input name="race" value="${animalDetail.race }"/></td>
									</tr>
									<tr>	
										<td>사이즈</td>
										<td><input name="size" value="${animalDetail.aniSize }"/></td>
									</tr>
									<tr>
										<td>생일</td>
										<td><input name="aniBirth" value="${animalDetail.aniBirth }"/></td>
									</tr>
									<tr>
										<td>보호소 입소 날짜</td>
										<td><fmt:formatDate value='${animalDetail.sinceDate }' type='date' pattern='dd/MM/yyyy'/> </td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>

				</div>
				</form>
				<div id="animal-go" >
							
				<button class="btn btn-primary text-white mb-3" type="button"
					name="button" onclick="javascript:aniModifyPro();">수정</button>
				<button class="btn btn-primary text-white mb-3" type="button"
					name="button" onclick="window.close()">현재 창 닫기</button>	
				</div>
			</div>

		</div>
		
		<div id="footer">
			<div class="footerBox">

				<div class="footerBottom">
					<ul style="padding-left: 0px; margin-top: 0px; margin-bottom: 0px;">
						<li><a href="#">유니세이프 소개</a></li>
						<li><a href="#">저작권 안내</a></li>
						<li><a href="#"><strong>개인정보 처리방침</strong></a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="contact.us">연락처</a></li>
					</ul>
					<ul style="padding-left: 0px; margin-top: 0px; margin-bottom: 0px;">
						<li>단체명 : 사단법인 유니세이프 (고유번호: 102-82-07271)</li>
						<li>주소 : [07271] 사단법인 유니세이프 ｜ 서울시 영등포구 양산로 53(양평동)</li>
						<li>대표자 : 김이박</li>
					</ul>
					<p>COPYRIGHT @ THE KOREAN COMMITTEE FOR UNISAFE. ALL RIGHT
						RESERVED</p>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>