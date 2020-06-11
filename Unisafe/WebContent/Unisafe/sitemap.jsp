<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <title>UNISAFE</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/sitemap.css" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
   <link rel="icon" type="image/png" href="images/favicon.png" />
</head>
<body>
   <div id="wrap" >
    
    <!-- 헤더시작 -->
     
     <jsp:include page="../Unisafe/header.jsp"></jsp:include>
    

     
     <div id="container">
			<!-- LNB 시작 -->
			<!-- contents -->
				<div id="contents">
					<div class="contentsTop">
						<h2>사이트맵</h2>
						
					
						<!--// location -->
					</div>
					<div class="sitemap_wrap">
			<!-- Lnb 및 롤링 베너 -->
						<ul class="sitemap01">
							<li>
								<h3>소개</h3>
								<ul class="sub01">
									<li>
										<a href="/intro/idea.asp">설립 이념</a>
									</li>
									<li>
										<a href="/intro/history_unicef.asp">기획 의도</a>
										<ul class="sub02">
											<li><a href="/intro/history_unicef.asp">ㆍ유니세프</a></li>
											<li><a href="/intro/history_korea.asp">ㆍ유니세프한국위원회</a></li>
										</ul>
									</li>
									
									<li>
										<a href="contact.us">연락처</a>
									</li>
								</ul>
							</li>
							<li>
								<h3>입양하기</h3>
								<ul class="sub01">
									<li>
										<a href="adopt.at">입양 하기</a>
									</li>
									<li>
										<a href="checklist.at">매칭 하기</a>
									</li>

								</ul>
							</li>							
							<li>
								<h3>세이프 몰</h3>
								<ul class="sub01">
									<li>
										<a href="safemall.sm">세이프 몰</a>
										<ul class="sub02">
											<li><a href="safeMallJerky.sm">쫄깃쫄깃! 육포/져키류</a></li>
											<li><a href="safeMallBones.sm">천연개껌! 뼈간식류</a></li>
											<li><a href="safeMallAccessory.sm">악세서리</a></li>
											<li><a href="safeMallQ&A.sm">Q&A</a></li>											
										</ul>
									</li>
								</ul>
							</li>
							<li>
								<h3>자료실</h3>
								<ul class="sub01">
									<li><a href="board.bd">자료실</a></li>
									<li><a href="board.bd">분양 후기</a></li>
								</ul>
							</li>
							<li>	
								<h3>마이페이지</h3>
								<ul class="sub01">
								<li>
										<a href="myPage.us">회원 정보</a>
										<ul class="sub02">
											<li><a href="userModify.us">정보 수정</a></li>
										</ul>
									</li>	
										</ul>
									</li>
                                </ul>
					</div>
				</div>
				<!--// contents -->
			</div>
		</div>

<!-- LNB -->


    
          
          <!-- container 끝 -->
     <!-- footer영역 -->
     
    	<jsp:include page="../Unisafe/footer.jsp"></jsp:include>

</body>
</html>
