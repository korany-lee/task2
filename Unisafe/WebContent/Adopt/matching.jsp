<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<!DOCTYPE html>
<html lang="en">
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
  <link rel="icon" type="image/png" href="images/favicon.png" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>

<script type="text/javascript">
function aniFilter(){
	var options = { 
            type: 'post',
            url: 'onlyAniResult.at',
            dataType: 'html',
            error: function(){
               alert('에러 발생! 잠시후 다시 시도해 주세요.');
               return;
            },
            success : function(result){
                $(".ergebnisbereich").html(result)
             }
         };
     $('#frm').ajaxSubmit(options);
}
$(function(){
   $(".maennlich").toggle(function(){
	        $(this).css("background-color","#b2ce6a");  //수컷
	        $("#gender_male").attr("checked",true);
	        aniFilter();
          }, function(){
            $(this).css("background-color","");  
            $("#gender_male").attr("checked",false);
            aniFilter();           
          })
           
   $(".weiblich").toggle(function(){
            $(this).css("background-color","#b2ce6a");  //암컷
            $("#gender_female").attr("checked",true);
            aniFilter();
         }, function(){
            $(this).css("background-color",""); 
            $("#gender_female").removeAttr("checked");
            aniFilter();
         })
         
   $(".jungtier").toggle(function(){
            $(this).css("background-color","#b2ce6a");  //애기동물
            $("#jungtier").attr("checked",true);
            aniFilter();
         }, function(){
            $(this).css("background-color","");
            $("#jungtier").removeAttr("checked");
            aniFilter();
         })         
   $(".adult").toggle(function(){
            $(this).css("background-color","#b2ce6a");  //조금 큰 
            $("#erwachsen").attr("checked",true);
            aniFilter();
         }, function(){
            $(this).css("background-color","");
            $("#erwachsen").removeAttr("checked");
            aniFilter();
         })
   $(".senior").toggle(function(){
            $(this).css("background-color","#b2ce6a");  //늙은
            $("#senior").attr("checked",true);
            aniFilter();
         }, function(){
            $(this).css("background-color",""); 
            $("#senior").removeAttr("checked");
            aniFilter();
         })
   $(".klein").toggle(function(){
            $(this).css("background-color","#b2ce6a");  //소형
            $("#size_small").attr("checked",true);
            aniFilter();
         }, function(){
            $(this).css("background-color","");
            $("#size_small").removeAttr("checked");
            aniFilter();
         })         
   $(".mittel").toggle(function(){
            $(this).css("background-color","#b2ce6a");  //중형
            $("#size_medium").attr("checked",true);
            aniFilter();
         }, function(){
            $(this).css("background-color","");  
            $("#size_medium").removeAttr("checked");
            aniFilter();

         })
   $(".gross").toggle(function(){
            $(this).css("background-color","#b2ce6a"); //대형
            $("#size_big").attr("checked",true);
            aniFilter();
         }, function(){
            $(this).css("background-color","");  
            $("#size_big").removeAttr("checked");
            aniFilter();
         })
   $(".animal-sorrow").toggle(function(){
            $(this).css("background-color","#b2ce6a"); //도움필요한 친구들
            $("#animal_caring_location").attr("checked",true);
            aniFilter();
         }, function(){
            $(this).css("background-color",""); 
            $("#animal_caring_location").removeAttr("checked");
            aniFilter();
         }) 
	$(".anfaenger").toggle(function(){
             $(this).css("background-color","#b2ce6a"); //초보자도 가능한
             $("#anfaenger").attr("checked",true);
             aniFilter();
          }, function(){
             $(this).css("background-color",""); 
             $("#anfaenger").removeAttr("checked");
             aniFilter();
          })
	$(".magkinder").toggle(function(){
            $(this).css("background-color","#b2ce6a"); //가정친화적인
            $("#family_friendly").attr("checked",true);
            aniFilter();
         }, function(){
            $(this).css("background-color",""); 
            $("#family_friendly").removeAttr("checked");
            aniFilter();
         }) 
    $(".kastriert").toggle(function(){
             $(this).css("background-color","#b2ce6a");  //중성화 수술된
             $("#kastriert").attr("checked",true);
             aniFilter();
          }, function(){
             $(this).css("background-color","");  
             $("#kastriert").removeAttr("checked");
             aniFilter();
          })
    $(".stadt").toggle(function(){
             $(this).css("background-color","#b2ce6a"); //도시친화적인
             $("#stadt").attr("checked",true);
             aniFilter();
          }, function(){
             $(this).css("background-color","");  
             $("#stadt").removeAttr("checked");
             aniFilter();
          })
    $(".maganderehunde").toggle(function(){
             $(this).css("background-color","#b2ce6a"); //사회화가 된
             $("#maganderehunde").attr("checked",true);
             aniFilter();
          }, function(){
             $(this).css("background-color",""); 
             $("#maganderehunde").removeAttr("checked");
             aniFilter();
          })            
});

</script>

</head>
<body>
<form method="post" id="frm" >

<input type="hidden" name="species" value="${species }" />
<input type="hidden" name="page" value="${page }" />

<div id="wrap" class="main_wrap">

<div id = "header">
     	<div class="headerBox">	
				<p class="logo active_gnb"><a href="./index.us"><img src="images/UnisafeLogo.png" alt="유니이세프로고" /></a></p>
				<ul class="headerQuick">
					<li><a href="#">로그아웃</a></li>
					<li><a href="#">마이페이지</a></li>					
					<li><a href="contact.us">연락처</a></li>
					<li><a href="#">사이트맵</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#"style="background-color: rgb(227, 62, 62); color: rgb(255, 255, 255);">후원하기</a></li>
					<li><a href="admin.ad">관리자전용</a></li>
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
		<div id="content">

			<div id="hero" class="animals_result h-50 mh-100 hero"
				data-ride="hero"  style="width: 1519px;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1>Animals in the Unisafe</h1>
						</div>
					</div>
				</div>
			</div>
			<div class="wrapper animals_result" id="app">
				<div class="choices mb-5">
					 <label for="dog" class="dog tip" title="개"> 
					<a href="adopt.at?species=1"><i class="ti ti-dogs"></i><span>개</span></a>
					</label> 
					
					<label for="cat" class="cat tip" title="고양이"> 
					<a href="adopt.at?species=2"><i class="ti ti-cats"></i><span>고양이</span></a></label> 
					
					<label for="samll" class="small tip" title="작은동물"> 
					<a href="adopt.at?species=3"><i class="ti ti-small_animals"></i><span>작은동물</span></a></label>
					
					<label for="exot" class="exot tip" title="파충류"> 
					<a href="adopt.at?species=4"><i class="ti ti-reptiles"></i><span>파충류</span></a></label> 
					
					<label for="birds" class="birds tip" title="조류"> 
					<a href="adopt.at?species=5"><i class="ti ti-birds"></i><span>조류</span></a></label> 
					
					<label for="big" class="big tip" title="대동물"> 
					<a href="adopt.at?species=6"><i class="ti ti-farming_animals"></i><span>가축.대동물</span></a>
					</label>
				
				</div>

				<div class="">
					<div id="content" class="container ">
						<div class="row justify-content-around">
							
							<div class="ergebnisbereich col">
								
							</div>
							<animalFilters class="animal-filters col col-md-4 mb-4 pull-xs-8"
							v-if="show_filters" v-show="animal_species">
						<div class="text-center py-4 pt-md-0">

							<button class="btn btn-primary text-white mb-3" type="button"
								name="button" onclick="location.href='checklist.at'">매칭하기</button>
						</div>
						
						<div class="geschlecht list-group mb-3">
							<input type="checkbox" name="male" id="gender_male" value="male"> 
							<label for="gender_male" class="list-group-item list-group-item-action maennlich">
								<i class="ti ti-animal-male"></i> 수컷
							</label> 
							<input type="checkbox" name="female" id="gender_female" value="female"> 
							<label for="gender_female" class="list-group-item list-group-item-action weiblich">
								<i class="ti ti-animal-female"></i> 암컷
							</label>
							
						</div>
						<div class="altersbereich list-group mb-3">
							<input type="checkbox" name="young" id="jungtier" value="young"> 
								<label for="jungtier" class="list-group-item list-group-item-action jungtier">
								<i class="ti ti-animal-young"></i> 어린 친구들
							</label> 
							<input type="checkbox" name="grownup" id="erwachsen" value="grownup"> 
								<label for="erwachsen" class="list-group-item list-group-item-action adult"> 
								<i class="ti ti-animal-midage"></i> 큰 친구들
							</label> 
							<input type="checkbox" name="senior" id="senior" value="senior"> 
								<label for="senior" class="list-group-item list-group-item-action senior"> 
								<i class="ti ti-animal-senior"></i> 나이가 많은 친구들
							</label>
						</div>
						<div>
							<div class="groesse list-group mb-3">
								<input type="checkbox" name="klein" id="size_small" value="klein"> 
									<label for="size_small" class="list-group-item list-group-item-action klein"> 
									<i class="ti ti-animal-small"></i> 소형동물
								</label> 
								<input type="checkbox" name="mittel" id="size_medium" value="mittel"> 
									<label for="size_medium" class="list-group-item list-group-item-action mittel">
									<i class="ti ti-animal-medium"></i> 중형동물
								</label>
								<input type="checkbox" name="gross" id="size_big" value="gross"> 
									<label for="size_big" class="list-group-item list-group-item-action gross"> 
									<i class="ti ti-animal-big"></i> 대형동물
								</label>
							</div>
							<div class="list-group mb-3">
								<input type="checkbox" id="animal_caring_location" name="help" value="help">
								<label for="animal_caring_location" class="animal-sorrow list-group-item list-group-item-action">
									<i class="ti ti-search__grace_location"></i> 도움이 필요한 친구들
								</label>
							</div>
							<div class="kriterien-filter list-group mb-3">
								<input type="checkbox" name="anfaenger" id="anfaenger" value="anfaenger"> 
								<label for="anfaenger" class="anfaenger list-group-item list-group-item-action">
									<i class="ti ti-animal-for-learners"></i> 초보자도 가능한
								</label> 
								<input type="checkbox" name="magkinder" id="family_friendly" value="magkinder"> 
								<label for="family_friendly" class="magkinder list-group-item list-group-item-action">
									<i class="ti ti-animal_family_friendly"></i> 가정친화적인
								</label> 
								<input type="checkbox" name="kastriert" id="kastriert" value="kastriert"> 
								<label for="kastriert" class="kastriert list-group-item list-group-item-action">
									<i class="ti ti-animal-nudered"></i> 중성화 수술이 된
								</label> 
								<input type="checkbox" name="stadt" id="stadt" value="stadt"> 
								<label for="stadt" class="stadt list-group-item list-group-item-action"> 
									<i class="ti ti-animal-city"></i> 도시 친화적인
								</label> 
								<input type="checkbox" name="maganderehunde" id="maganderehunde" value="maganderehunde"> 
								<label for="maganderehunde" class="maganderehunde list-group-item list-group-item-action">
									<i class="ti ti-animal-likes-other-dogs"></i> 다른 동물들과 잘 지내는
								</label>
							</div>
						</div>
						
						</animalFilters>
					</div>
				</div>
			</div>
		</div>
		<!-- wrapper animals_result 끝 -->
		
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
	<!-- wrap 끝 -->



	</form>
	<script>
	aniFilter();
	</script>
</body>
</html>
