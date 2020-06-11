<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAFE-MALL</title>
<link rel="stylesheet" type="text/css" href="css/safemall/goodsUp.css" />
<link rel="stylesheet" type="text/css" href="css/usti.css">

<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<script type="text/javascript"  src="http://code.jquery.com/jquery-latest.js" ></script>
 
  <link rel="icon" type="image/png" href="images/favicon.png" />
<script type="text/javascript">
$(function(){
	$("#frm").submit(function(){
		if($("#userName").val() == ""){
			$("#userName").focus();
			alert("성명을 입력하세요.");
			return false;
		}
		if($("#qnaSubject").val() == ""){
			$("#qnaSubject").focus();
			alert("문의 제목을 선택하세요.");
			return false;
		}
		if($("#qnaContent").val() == ""){
			$("#qnaContent").focus();
			alert("후기 내용을 입력하세요.");
			return false;
		}	
		if($("#reviewPass").val()==""){
			$("#reviewPass").focus();
			alert("후기 비밀번호를 입력해주세요.");
			return false;
		}
	});
});
</script>
</head>
<body>
	<div id = "wrap">
		
			<!-- 헤더시작 -->	
			<div id="top_fixed">
				<div class="top_cate">
					<div id="logo">
					<a href = "safemall.sm"><img src="images/safemall/safeMallLogo.png" alt="세이프 몰 로고" /></a>
					</div>
					
				</div>
			</div>
			<!-- 헤더 종료 -->
			
			<!-- 컨테이너 시작 -->
			<div id="container">
			<!-- 메인 컨텐츠 -->
			<div class="contents">
						<div class="contentsTop">
					<h2>문의 수정</h2>
				</div>
				<br>
				<div class="relCon">
					
					<div class="table11" id="ustiInfo" align="center">
					<form action="qnaModifyPro.sm" method="post" id = "frm" name="reviewForm">
						<table>
						<tr>
							<th style="width: 100px;">성명</th>
								<td>
									<input type="text" name="userName" id="userName" />
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">제목</th>
								<td>
									<select name="qnaSubject" id="qnaSubject" class="select"
												style="width: 150px;" req fname="문의 제목">
													<option value='상품 문의합니다.'>상품 문의합니다.</option>
													<option value='배송 문의합니다.'>배송 문의합니다.</option>
													<option value='기타 문의합니다.'>기타 문의합니다.</option>	
									</select>
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">내용</th>
								<td>
									<textarea rows="13" cols="40" id = "qnaContent" name = "qnaContent"></textarea>
								</td>
						</tr>
						
						
						<tr>
							<th style="width: 100px;">비밀번호</th>
								<td>
									 <input type="password" name="qnaPass" id="qnaPass" >
										
								</td>
						</tr>
				
						</table>
						<input type = "submit" value = "수정 완료">
						 <input type = "hidden"	value = "${qna.qnaNum }" name = "qnaNum" id = "qnaNum">
					</form>
					
					</div>
			
			</div>
			<!-- 메인 컨텐츠 종료 -->
			
			</div>
			<!-- 컨테이너 종료 -->
		</div>
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
	
</body>
</html>