<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>
	<script language="javascript">
	function aniUpdate(){
		aniUpdate2.submit();
	}
	</script>
	
<link
href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
rel="stylesheet">
  <link rel="icon" type="image/png" href="images/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/ani_list_up.css" />

</head>
<body>
<div id="wrap">

	<!-- 헤더시작 -->
	<div id="top_fixed">
      <div class="top_cate">
         <div id="logo">
         <img src="images/admin_ani.png" alt="관리자" />
         </div>
      </div>
    </div>
    <!-- 헤더끝 -->
         
    <div id="container">
    <!-- 메인 컨텐츠 -->
   		<div class="contents">
            <div class="contentsTop">
         		<h2>동물 등록시스템</h2>
      		</div>
     		 <br>
          
            <div class="relCon">
         
	<div class="table11" id="aniUpdate" align="center">
		<form action="aniUpdate.ad" method="post" name="aniUpdate2" enctype="multipart/form-data">

		<table>
			<tr>
				<th style="width: 100px;">종류</th>
				<td>
					개<input type="radio" name="species" value="1"> 
					고양이<input type="radio" name="species" value="2"> 
					소동물<input type="radio" name="species" value="3"> 
					파충류<input type="radio" name="species" value="4">
					조류<input type="radio" name="species" value="5">
					대동물<input type="radio" name="species" value="6">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">이름</th>
				<td>
					<input name="aniName" type="text" size="20" maxlength="30"
					value="" />
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">출생일</th>
				<td>
					<input name="aniBirth" type="text" size="10"
					maxlength="30" value="" /></td>
			</tr>
			<tr>
				<th style="width: 100px;">나이</th>
				<td>
					<input name="aniAge" type="text" size="10" maxlength="30"
					value="" /></td>
			</tr>
			<tr>
				<th style="width: 100px;">성별</th>
				<td>
					수컷<input type="checkbox" name="no4" value="수컷"> 
					암컷<input type="checkbox" name="no4" value="암컷"> 
					중성화<input type="checkbox" name="no4" value="중성화">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">종</th>
				<td>
				 	<input name="race" type="text" size="10" maxlength="30"
					value="" /></td>
			</tr>
			<tr>
				<th style="width: 100px;">사이즈</th>
				<td>
					<input name="aniSize" type="text" size="10" maxlength="30"
					value="" /></td>
			</tr>
			<tr>
				<th style="width: 100px;">특성/성격</th>
				<td>
					<textarea name="aniChar" cols="50" rows="3" maxlength="2000" value="" style="font-family:'Nanum Gothic', sans-serif;" ></textarea>
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">털종류</th>
				<td>
					<input name="furType" type="text" size="10" maxlength="20"
					value="" /></td>
			</tr>
			<tr>
				<th style="width: 100px;">이미지1</th>
				<td>
					<input type="file" name="aniImage1" id="aniImage1">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">이미지2</th>
				<td><input type="file" name="aniImage2" id="aniImage2">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">이미지3</th>
				<td><input type="file" name="aniImage3" id="aniImage3">
				</td>
			</tr>
		</table>

		</div>
		
		<br>
		<br>
		<div class="contentsTop">
         		<h2>매칭시스템 입력</h2>
      		</div>
     		 <br>
          
	<div class="table11" id="aniUpdate" align="center">
		<table>
			<tr>
				<th style="width: 100px;">성별</th>
				<td>
					수컷<input type="radio" name="gender_m" value="1"> 
					암컷<input type="radio" name="gender_m" value="2"> 
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">특성</th>
				<td>
					온순한<input type="radio" name="style_m" value="1"> 
					활발한<input type="radio" name="style_m" value="2"> 
					가족친화적인<input type="radio" name="style_m" value="3">
					도시친화적인<input type="radio" name="style_m" value="4">
					독립적인<input type="radio" name="style_m" value="5">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">가족인원</th>
				<td>
					1인가구<input type="radio" name="family_m" value="1"> 
					2인가구<input type="radio" name="family_m" value="2"> 
					3~4인<input type="radio" name="family_m" value="3">
					5인이상<input type="radio" name="family_m" value="4">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">영유아와</th>
				<td>
					잘 지낼 수 있다<input type="radio" name="kid_m" value="1"> 
					없다<input type="radio" name="kid_m" value="2">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">다른 동물들과</th>
				<td>
					잘 지낼 수 있다<input type="radio" name="other_m" value="1"> 
					잘 지낼 수 없다<input type="radio" name="other_m" value="2"> 
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">초보자가</th>
				<td>
					키울 수 없다<input type="radio" name="past_m" value="1"> 
					키울 수 있다<input type="radio" name="past_m" value="2"> 
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">집에 사람이</th>
				<td>
					없어도된다<input type="radio" name="stay_home_m" value="1"> 
					있으면좋다<input type="radio" name="stay_home_m" value="2"> 
				 	있길 권장<input type="radio" name="stay_home_m" value="3">
					항상 있어야함<input type="radio" name="stay_home_m" value="4">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">사는 지역</th>
				<td>
					도시<input type="radio" name="where_home_m" value="1"> 
					시골<input type="radio" name="where_home_m" value="2"> 
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">집안 환경</th>
				<td>
					아파트<input type="radio" name="what_home_m" value="1"> 
					오피스텔<input type="radio" name="what_home_m" value="1"> 
				 	기숙사<input type="radio" name="what_home_m" value="1">
					연립<input type="radio" name="what_home_m" value="1">
					단독<input type="radio" name="what_home_m" value="1">
					마당<input type="radio" name="what_home_m" value="2">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;">알러지유발</th>
				<td>
					한다<input type="radio" name="allergy_m" value="1"> 
					안한다<input type="radio" name="allergy_m" value="2"> 
				</td>
			</tr>
			
		</table>
	</div>
	</form>
	
	<!-- table11 div 끝 -->	

	
		<div class="btnJoin2">
			<span><a href="javascript:aniUpdate()">등록</a></span>&nbsp;&nbsp;
			<span><a href="javascript:location.href='main.us'; ">메인으로</a></span>
		</div>
	
		
	</div>
	<!-- relCon 끝 -->
</div>
<!-- contents 끝 -->
</div>
<!-- container 끝 -->
		
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
</div>
<!-- wrap 끝 -->
</body>
</html>