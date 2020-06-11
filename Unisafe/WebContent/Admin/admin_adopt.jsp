<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

<link rel="stylesheet" type="text/css" href="css/admin_adopt.css" />
  <link rel="icon" type="image/png" href="images/favicon.png" />
</head>
<body>

<div id="wrap" class="main_wrap">

<div id = "header">
     	<div class="headerBox">	
				<p class="logo active_gnb"><a href="./index.us"><img src="images/UnisafeLogo.png" alt="유니이세프로고" /></a></p>
				<ul class="headerQuick">
					<li><a href="safeLogout.us">로그아웃</a></li>
					<li><a href="managerPage.mg">관리자 전용</a></li>				
					<li><a href="contact.us">연락처</a></li>
					<li><a href="#">사이트맵</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#"style="background-color: rgb(227, 62, 62); color: rgb(255, 255, 255);">후원하기</a></li>
				</ul>
				<div id="gnb">
					<ul>
						<li ><a href="introduce.us">소개</a></li>
						<li ><a href="adopt.at">입양하기</a></li>
						<li ><a href="safemall.sm">세이프몰</a></li>
						<li ><a href="board.bd">자료실</a></li>						
					</ul>
				</div>
		</div>	
     </div> 

		<!-- 메인 컨텐츠 -->
		<div id="content2">

		
				
				
			<!-- 상단 동물 종류 선택하는 아이콘 -->
			<div class="wrapper animals_result" id="app">
				<div class="choices mb-5">
					 
					<label for="dog" class="dog tip" title="개"> 
					<a href="admin.ad?species=1"><i class="ti ti-dogs"></i><span>개</span></a>
					</label> 
					
					
					<label for="cat" class="cat tip" title="고양이"> 
					<a href="admin.ad?species=2"><i class="ti ti-cats"></i><span>고양이</span></a></label> 
					
					
					<label for="small" class="small" title="작은 동물"> 
					<a href="admin.ad?species=3"><i class="ti ti-small_animals"></i><span>작은동물</span></a></label>

					
					<label for="exot" class="exot" title="파충류 및 외래종"> 
					<a href="admin.ad?species=4"><i class="ti ti-reptiles"></i><span>파충류</span></a></label> 
					
					
					<label for="birds" class="birds" title="조류"> 
					<a href="admin.ad?species=5"><i class="ti ti-birds"></i><span>조류</span></a></label> 
					
				
				    <label for="big" class="big" title="가축 및 대동물"> 
				    <a href="admin.ad?species=6"><i class="ti ti-farming_animals"></i><span>가축.대동물</span></a>
					</label>
				</div>
				 

				<div class="">
					<div id="content" class="container ">
						<div class="row justify-content-around">
							<div class="w-100 text-center d-md-none">
							<button class="btn btn-primary text-white mb-3" type="button"
								v-show="animal_species"
								v-on:click="show_filters = !show_filters">종류</button>
						</div>
							<div class="ergebnisbereich col">
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
								
							<div>
								<ul class="animals_grid row">
								<c:forEach items="${abc }" var="ani">
								
									
									<li><a href="aniModify.ad?num=${ani.aniNum }" target="_blank"><label
											class="tier_label"><font
												style="vertical-align: inherit;"><font
													style="vertical-align: inherit;">${ani.aniName }</font></font></label> 
													<img src="./Adopt/animal/${ani.storeFileName }" alt="${ani.aniName }" class="tierbild" >
													</a></li>
								</c:forEach>
								</ul>

							</div>
							
							<div class="text-center py-4 pt-md-0">
								
								<button class="btn btn-primary text-white mb-3" type="button"
									name="button"onclick="location.href='aniListUp.ad'">등록하기</button>
									<button class="btn btn-primary text-white mb-3" type="button"
									name="button"onclick="location.href='mgReservationList.ad'">예약현황</button>
							</div>
								
					
								<div class="leiste">
									<div class="pages">
										<button class="btn box-shadow" type="button" name="button"
											@click="prevPage" v-if="page > 1"><</button>
										<span class="heading" v-show="totalPages > 0"> </span>
										<button class="btn box-shadow" type="button" name="button"
											@click="nextPage" v-show="page < totalPages">></button>
									</div>
								</div>
							</div>

					</div>
				</div>
			</div>
		</div>
		<!-- content 끝 -->
		
			
	</div>
	<!-- wrap 끝 -->



	
</body>
</html>
