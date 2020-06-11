<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to UNISAFE</title>

<link rel="stylesheet" type="text/css" href="css/main2.css" >
  <link rel="icon" type="image/png" href="images/favicon.png" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<!-- 카카오 제공 css -->
<link rel="stylesheet" type="text/css" href="css/view.min.css" >
<!-- 내부 css 반출 -->
<link rel="stylesheet" type="text/css" href="css/welcome.css" >
<link rel="stylesheet" type="text/css" href="css/main.css" >
<!-- 카카오 제공 js -->
<script src="js/view-resource1.min.js"></script>
<!-- favicon -->
<link rel="shortcut icon" href="images/favicon.png">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	//screenWidth = 978;
	//projectId = "A6Ucc1wT2S2D8TTogJzu9rc5MHldGWq2";
	//sequenceId = "lUtax";
	
	//로그인정보 폼서브밋 임시 주석
	function loginAction() {
			/*if($("#check_yn").prop("checked")){
				$("#YN").val('Y');
				$("#uniLogin").submit();
			} else {
				$("YN").val('N');
				$("#uniLogin").submit();
			}*/
		$("#uniLogin").submit();
	}
	
	//아이디 ,패스워드 input클릭시 value값 삭제
	$(function(){
		$("#userId").focus(function() { 
			$(this).val("");
			}).blur(function(){
				if($(this).val() == "") {
					$(this).val("아이디");
				}
			})
	});
	
	$(function(){
		$("#userPw").focus(function() { 
			$(this).val("");
			}).blur(function(){
				if($(this).val() == "") {
					$(this).val("****");
				}
			})
	});
	
</script>
</head>


<body data-locale="utf-8">
<!-- 로그인 되지 않았을때  -->
<c:if test="${ empty uniId && empty mg }">
<input type="hidden" value="${ uniPw }">
   <!-- footer이전까지 div 영역 -->
   <!-- 지금부터 모든 class이름은 abc순서대로 welcome css에 넣어둘게요 -->
   <div id="webView" data-canvas="true" data-show-memo="false" data-show-link="false"
      title="">
      <!-- 유니세이프 이미지 div -->
      <div data-obj-id="ubnFQ" data-obj-type="image" class="a1">
         <div data-image-content="true"
            style="background-image:url(images/UnisafeWelcome.png);"></div>
      </div>
      <!-- id랑 pw 입력창 group -->
      <form action="safeLogin.us" method="post" name="uniLogin" id="uniLogin">
      <div data-obj-id="JMNUp" data-obj-type="group" class="b1">
         <!-- pw 입력 div -->
         <div data-obj-id="cIDJw" data-obj-type="element"
            data-text-editable="true" class="b2">
            <input type="password" data-min-width="60" data-min-height="30"
               data-text-content="true" value="0000" class="b3" id="userPw" name="userPw">
         </div>
         <!-- pw 아이콘 div -->
         <div data-obj-id="1htWt" data-obj-type="element"
            data-text-editable="true" class="b4">
            <div data-text-content="true" class="b5"></div>
         </div>
         <!-- pw 아이콘 -->
         <div data-obj-id="VWlAk" data-obj-type="icon" class="b6">
            <svg xmlns="http://www.w3.org/2000/svg"
               xmlns:xlink="http://www.w3.org/1999/xlink" width="32" height="32"
               viewBox="0 0 32 32" fill="rgb(166, 166, 166)"
               data-svg-content="true" preserveAspectRatio="none">
               <g>
               <path
                  d="M 31,0l-4,0 c-0.242,0-0.476,0.088-0.66,0.248L 12.536,12.35C 11.822,12.2, 10.718,12, 10,12c-5.514,0-10,4.486-10,10 s 4.486,10, 10,10s 10-4.486, 10-10c0-1.638-0.312-2.736-0.666-3.648l 3.404-1.156c 0.414-0.14, 0.688-0.534, 0.678-0.97l-0.084-3.796 l 3.82-0.266c 0.512-0.036, 0.914-0.454, 0.93-0.966l 0.142-4.558l 2.992-0.664C 31.674,5.876, 32,5.468, 32,5l0-4 C 32,0.448, 31.552,0, 31,0z M 7,22c 1.2,0, 2.236,0.706, 2.716,1.724C 9.898,24.112, 10,24.544, 10,25C 10,26.656, 8.656,28, 7,28 S 4,26.656, 4,25S 5.344,22, 7,22z"></path></g></svg>
         </div>
         <!-- 아이디 입력 div -->
         <div data-obj-id="cizEu" data-obj-type="element"
            data-text-editable="true" class="b7">
            <input type="text" data-min-width="60" data-min-height="30"
               data-text-content="true" value="아이디" class="b8" id="userId" name="userId">
         </div>
         <!-- 아이디 아이콘 div -->
         <div data-obj-id="RXB7g" data-obj-type="element"
            data-text-editable="true" class="b9">
            <div data-text-content="true" class="b10"></div>
         </div>
         <!-- 아이디 아이콘 -->
            <div data-obj-id="eIdH7" data-obj-type="icon" class="b11">
            <svg xmlns="http://www.w3.org/2000/svg"
               xmlns:xlink="http://www.w3.org/1999/xlink" width="32"
               height="33.762001037597656" viewBox="0 0 32 33.762001037597656"
               fill="rgb(166, 166, 166)" data-svg-content="true"
               preserveAspectRatio="none">
               <g>
               <path
                  d="M 22,6c0-3.212-2.788-6-6-6S 10,2.788, 10,6c0,3.212, 2.788,6, 6,6S 22,9.212, 22,6zM 16,14c-5.256,0-10,5.67-10,12.716s 20,7.046, 20,0S 21.256,14, 16,14z"></path></g></svg>
         </div>
      </div>
      <!-- 아이디/비번 입력 그룹화 끝 -->
      </form>
      
      <!-- Login a태그 onclick으로 갑니다 -->
      <div data-obj-id="WMW2q" data-obj-type="element"
         data-text-editable="true" class="c1">
         <div data-text-content="true" class="c2"><span><a href="javascript:loginAction()">Login</a></span></div>
      </div>
      <!-- 하단 텍스트 라인 -->
      <div data-obj-id="3BaBQ" data-obj-type="element"
         data-text-editable="true" class="d1">
         <div data-text-content="true" class="d2">아직 유니세이프의 멤버가 아니신가요?</div>
      </div>
      <!-- 회원가입으로 가는 a태그 -->
      <div data-obj-id="VVm1F" data-obj-type="element"
         data-text-editable="true" class="e1">
         <div data-text-content="true" class="e2"><span><a href="usti.us">유니세이프와 함께하세요</a></span></div>
      </div>
      <!-- 푸터를 따로 뺄라그랬는데 webView 밑에 있어야지 화면조정해도 div가 같이 움직여서.. -->
      <div id="footer">
      
      <div data-obj-id="iI5So" data-obj-type="element"
         data-text-editable="true" class="f1">
         <textarea data-text-content="true" data-min-width="120"
            data-min-height="60" class="f2">사단법인 유니세이프 ｜ 서울시 영등포구 양산로 53(양평동)</textarea>
      </div>
      <div data-obj-id="tlvwz" data-obj-type="element"
         data-text-editable="true" class="f3">
         <textarea data-text-content="true" data-min-width="100"
            data-min-height="60" class="f4">후원문의 1577.1004</textarea>
      </div>
      </div>   
</div>
<!-- webview 끝 -->
   
<link rel="stylesheet" type="text/css" href="css/elegant-fonts.css">
</c:if>

<!-- 일반회원 로그인 되었을때 -->
<c:if test="${ !empty uniId && empty mg }">
<div id="wrap" >
    
    <!-- 헤더시작 -->
<jsp:include page="../Unisafe/header.jsp"></jsp:include>

 
<div class=".container-fluid mt-3">
      <div class="row">
         <div class="">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">

               <!-- Indicators -->
             <!--   <ul class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
               </ul> -->

               <!-- The slideshow -->
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <img src="./images/main/banner1.jpg" alt="banner1" width="100%" height="549px" >
                  </div>
                  <div class="carousel-item">
                     <img src="./images/main/banner2.jpg" alt="banner2"  width="100%" height="549px">
                  </div>
                  <div class="carousel-item">
                     <img src="./images/main/banner3.jpg" alt="banner3" width="100%" height="549px">
                  </div>
               </div>

               <!-- Left and right controls -->
               <a class="carousel-control-prev" href="#myCarousel"
                  data-slide="prev"> <span class="carousel-control-prev-icon"></span>
               </a> <a class="carousel-control-next" href="#myCarousel"
                  data-slide="next"> <span class="carousel-control-next-icon"></span>
               </a>
            </div>
         </div>
         
      </div>
	</div>
      <!-- row끝 -->
      		<div id="container_index">
			<div class="container_view">
							<!-- index -->
			<div class="index">
				
				<!-- 캠페인배너 -->
				<!-- 방탄 -->
				<div class="area_campaign">
					<a href="https://www.unicef.or.kr/event/link/bekind-website.asp?trackcode=edv_pc_0730" target="_blank">
						<div class="campagin_bts" id="PC_banner_transparency" title="Endviolence">
							
						</div>
					</a>
					<!-- 팩트체크 -->
					<a href="/news/notice_view.asp?idx=82240">
						<div class="campagin_fact" id="PC_banner_fact" title="유니세프 팩트체크">
							
						</div>
					</a>
				</div>
				<!--// 캠페인배너 -->
				
				<!-- 띠 배너 -->
				<a href="/active/financial-transparency.asp" target=""><img src="./images/main/banner_tran.jpg" alt="재정 투명성" title="재정 투명성" width="1200" id="PC_banner_bottom" /></a>

				<!--// 띠 배너 -->
				
				<!-- 유니세프뉴스 -->
			<div class="area_news">
					<h1>뉴스 및 공지사항</h1>
				<div class="group_news">
						<ul>
							<li><div class="style4 on left"><a href="#">최근소식</a></div></li>
							<li><div class="style4 right"><a href="#">가장 많이 본 뉴스</a></div></li>
						</ul>
						<!-- 최근소식 -->
					<div class="list_latest">
						<ul class="conts_news" style="padding-left: 15px;">
							<li><a href="/news/story_view.asp?idx=113939"> <span
									class="thum_news"><img src="./images/main/new1.jpg"
										alt="" width="100" height="90" /> </span> <strong class="txt">[야생동물]
										신종코로나바이러스, 적절한 대책마련...</strong> <span class="txt"> &nbsp;

										신종코로나바이러스, 적절한 대책마련이 필요한 시점에...</span> <em class="txt">스토리
										2020.02.03</em>
							</a></li>
							<li><a href="/news/news_view.asp?idx=113788"> <span
									class="thum_news"><img src="./images/main/new2.jpg"
										alt="" width="100" height="90" /> </span> <strong class="txt">[정책입법]
										유니세이프와 알아보는 동물복지...</strong> <span class="txt"> &nbsp;
										유니세이프, 2020년 1월 1일부터 시행되는 동물복지 정책입법 현안에 관련해서...</span> <em
									class="txt">뉴스 2020.01.31</em>
							</a></li>
							<li><a href="/news/news_view.asp?idx=113608"> <span
									class="thum_news"><img src="./images/main/new3.jpg"
										alt="" width="100" height="90" /> </span> <strong class="txt">유니세이프와
										함께하는 반려동물공약발표..</strong> <span class="txt">&nbsp;2020년 희망공약,
										앞으로 나아가는 동물보호활동에 우리 유니세이프 ... </span> <em class="txt">뉴스
										2020.01.29</em>
							</a></li>
							<!-- 최근 뉴스 3개 -->
						</ul>
					</div>
				</div>
			</div>
			<!-- 뉴스끝 -->
			<!-- 배너영역 -->
			<div class="section_bnr">
				<ul style="padding-left:15px; margin-top:100px;">
					<li>
						<div class="bnr_img">
							<a
								href="https://www.unicef.or.kr/ebook/annual-reports/2018/korea/?trackcode=anr_pc_idx"
								target="_blank"><img src="images/main/fin.png"
								alt="2018 연차보고서" title="2018 연차보고서" width="304"
								height="264" id="PC_banner_square_left" /></a>
							<!-- 메인 어바웃 -->
						</div>
					</li>

					<li>
						<!-- 사진뉴스배너 -->
						<div class="bnr_photo">
							<a
								href="https://www.unicef.or.kr/news/news_view.asp?idx=113608"
								target=""> <img src="images/main/fin2.jpg"
								alt="신종코로나바이러스" title="신종코로나바이러스" width="304" height="264"
								id="PC_banner_square_center" />
							</a>
							<!-- 메인 사진뉴스-->
						</div> <!--// 사진뉴스배너 -->
					</li>

					<li>
						<!-- 영상뉴스배너 -->
						<div class="bnr_video">
							<a href="/child-rights/campaign/sports-for-every-child.asp"
								target=""> <img src="images/main/fin3.jpg"
								alt="아동을 지키는 착한 스포츠" title="아동을 지키는 착한 스포츠" width="304"
								height="264" id="PC_banner_square_right" />
							</a>
							<!-- 메인 영상뉴스-->
						</div> <!--// 영상뉴스배너 -->
					</li>
				</ul>
			</div>
									<!--// 배너영역 -->
		
		</div>

   </div>
   </div>
   
<jsp:include page="footer.jsp"></jsp:include>

<!-- footer include-->

</c:if>
<!-- 관리자 로그인 되었을때 -->
<c:if test="${ !empty mg && empty uniId }">

<div id="wrap" >
    
    <!-- 헤더시작 -->
     <jsp:include page="../Unisafe/header_m.jsp"></jsp:include>
<div class=".container-fluid mt-3">
      <div class="row">
         <div class="">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">

               <!-- Indicators -->
             <!--   <ul class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
               </ul> -->

               <!-- The slideshow -->
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <img src="./images/main/banner1.jpg" alt="banner1" width="100%" height="549px" >
                  </div>
                  <div class="carousel-item">
                     <img src="./images/main/banner2.jpg" alt="banner2"  width="100%" height="549px">
                  </div>
                  <div class="carousel-item">
                     <img src="./images/main/banner3.jpg" alt="banner3" width="100%" height="549px">
                  </div>
               </div>

               <!-- Left and right controls -->
               <a class="carousel-control-prev" href="#myCarousel"
                  data-slide="prev"> <span class="carousel-control-prev-icon"></span>
               </a> <a class="carousel-control-next" href="#myCarousel"
                  data-slide="next"> <span class="carousel-control-next-icon"></span>
               </a>
            </div>
         </div>
         
      </div>
	</div>
      <!-- row끝 -->
      		<div id="container_index">
			<div class="container_view">
							<!-- index -->
			<div class="index">
				
				<!-- 캠페인배너 -->
				<!-- 방탄 -->
				<div class="area_campaign">
					<a href="https://www.unicef.or.kr/event/link/bekind-website.asp?trackcode=edv_pc_0730" target="_blank">
						<div class="campagin_bts" id="PC_banner_transparency" title="Endviolence">
							
						</div>
					</a>
					<!-- 팩트체크 -->
					<a href="/news/notice_view.asp?idx=82240">
						<div class="campagin_fact" id="PC_banner_fact" title="유니세프 팩트체크">
							
						</div>
					</a>
				</div>
				<!--// 캠페인배너 -->
				
				<!-- 띠 배너 -->
				<a href="/active/financial-transparency.asp" target=""><img src="./images/main/banner_tran.jpg" alt="재정 투명성" title="재정 투명성" width="1200" id="PC_banner_bottom" /></a>

				<!--// 띠 배너 -->
				
				<!-- 유니세프뉴스 -->
			<div class="area_news">
					<h1>뉴스 및 공지사항</h1>
				<div class="group_news">
						<ul>
							<li><div class="style4 on left"><a href="#">최근소식</a></div></li>
							<li><div class="style4 right"><a href="#">가장 많이 본 뉴스</a></div></li>
						</ul>
						<!-- 최근소식 -->
					<div class="list_latest">
						<ul class="conts_news" style="padding-left: 15px;">
							<li><a href="/news/story_view.asp?idx=113939"> <span
									class="thum_news"><img src="./images/main/new1.jpg"
										alt="" width="100" height="90" /> </span> <strong class="txt">[야생동물]
										신종코로나바이러스, 적절한 대책마련...</strong> <span class="txt"> &nbsp;

										신종코로나바이러스, 적절한 대책마련이 필요한 시점에...</span> <em class="txt">스토리
										2020.02.03</em>
							</a></li>
							<li><a href="/news/news_view.asp?idx=113788"> <span
									class="thum_news"><img src="./images/main/new2.jpg"
										alt="" width="100" height="90" /> </span> <strong class="txt">[정책입법]
										유니세이프와 알아보는 동물복지...</strong> <span class="txt"> &nbsp;
										유니세이프, 2020년 1월 1일부터 시행되는 동물복지 정책입법 현안에 관련해서...</span> <em
									class="txt">뉴스 2020.01.31</em>
							</a></li>
							<li><a href="/news/news_view.asp?idx=113608"> <span
									class="thum_news"><img src="./images/main/new3.jpg"
										alt="" width="100" height="90" /> </span> <strong class="txt">유니세이프와
										함께하는 반려동물공약발표..</strong> <span class="txt">&nbsp;2020년 희망공약,
										앞으로 나아가는 동물보호활동에 우리 유니세이프 ... </span> <em class="txt">뉴스
										2020.01.29</em>
							</a></li>
							<!-- 최근 뉴스 3개 -->
						</ul>
					</div>
				</div>
			</div>
			<!-- 뉴스끝 -->
			<!-- 배너영역 -->
			<div class="section_bnr">
				<ul style="padding-left:15px; margin-top:100px;">
					<li>
						<div class="bnr_img">
							<a
								href="https://www.unicef.or.kr/ebook/annual-reports/2018/korea/?trackcode=anr_pc_idx"
								target="_blank"><img src="images/main/fin.png"
								alt="2018 연차보고서" title="2018 연차보고서" width="304"
								height="264" id="PC_banner_square_left" /></a>
							<!-- 메인 어바웃 -->
						</div>
					</li>

					<li>
						<!-- 사진뉴스배너 -->
						<div class="bnr_photo">
							<a
								href="https://www.unicef.or.kr/news/news_view.asp?idx=113608"
								target=""> <img src="images/main/fin2.jpg"
								alt="신종코로나바이러스" title="신종코로나바이러스" width="304" height="264"
								id="PC_banner_square_center" />
							</a>
							<!-- 메인 사진뉴스-->
						</div> <!--// 사진뉴스배너 -->
					</li>

					<li>
						<!-- 영상뉴스배너 -->
						<div class="bnr_video">
							<a href="/child-rights/campaign/sports-for-every-child.asp"
								target=""> <img src="images/main/fin3.jpg"
								alt="아동을 지키는 착한 스포츠" title="아동을 지키는 착한 스포츠" width="304"
								height="264" id="PC_banner_square_right" />
							</a>
							<!-- 메인 영상뉴스-->
						</div> <!--// 영상뉴스배너 -->
					</li>
				</ul>
			</div>
									<!--// 배너영역 -->
		
		</div>

   </div>
   </div>
   
<jsp:include page="footer.jsp"></jsp:include>

<!-- footer include-->
</c:if>
</body>
</html>