<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAFE-MALL</title>
<link rel="stylesheet" type="text/css" href="css/safemall/goodsUp.css" />
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
  <link rel="icon" type="image/png" href="images/favicon.png" />
<script type="text/javascript" 
 src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(function(){
	$("#frm").submit(function(){
		if($("#goodsNum").val() == ""){
			$("#goodsNum").focus();
			alert("상품 번호를 입력하세요.");
			return false;
		}
		if($("#goodsName").val() == ""){
			$("#goodsName").focus();
			alert("상품명을 입력하세요.");
			return false;
		}
		if($("#goodsPrice").val()==""){
			$("#goodsPrice").focus();
			alert("상품 가격을 입력하세요.");
			return false;
		}
		if($("#goodsQty").val()==""){
			$("#goodsQty").focus();
			alert("상품 수량을 입력하세요.");
			return false;
		}
		if($("#goodsContent").val()==""){
			$("#goodsContent").focus();
			alert("상품 설명을 입력하세요.");
			return false;
		}
		if($("#goodsImage").val()==""){
			$("#goodsImage").focus();
			alert("메인 이미지를 추가해주세요.");
			return false;
		}
		if($("#goodsImage1").val()==""){
			$("#goodsImage1").focus();
			alert("상세 이미지1을 추가해주세요.");
			return false;
		}
		if($("#goodsImage2").val()==""){
			$("#goodsImage2").focus();
			alert("상세 이미지2를 추가해주세요.");
			return false;
		}
		if($("#goodsKind").val()==""){
			$("#goodsKind").focus();
			alert("상품 종류를 선택해주세요.");
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
					<h2>상품 등록</h2>
				</div>
				<br>
				<div class="relCon">
					
					<div class="table11" id="ustiInfo" align="center">
					<form action="goodsUpAction.sm" method="post" id = "frm" name="goodsForm" enctype="multipart/form-data">
						<table>
						<tr>
							<th style="width: 100px;">상품 번호</th>
								<td>
									<input type="text" name="goodsNum" id="goodsNum" />
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">상품명</th>
								<td>
									<input type="text" name="goodsName" id="goodsName" />
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">상품가격</th>
								<td>
									<input type="text" name="goodsPrice" id="goodsPrice" />
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">입고 수량</th>
								<td>
									<input type="text" name="goodsQty" id="goodsQty" />
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">상품 설명</th>
								<td><textarea rows="13" cols="56" 
									name="goodsContent" id="goodsContent"></textarea>
								</td>
						</tr>
						
						<tr>
							<th style="width: 100px;">메인 이미지</th>
								<td>
									 <input type="file" name="goodsImage" id="goodsImage" >
									


								</td>
						</tr>
						<tr>
							<th style="width: 100px;">상세 이미지1</th>
								<td>
									<input type="file" name="goodsImage1" id="goodsImage1" >
								</td>
						</tr>
						<tr>
							<th style="width: 100px;">상세 이미지2</th>
								<td>
									<input type="file" name="goodsImage2" id="goodsImage2" >
								</td>
						</tr>
						
							<tr>
							<th style="width: 100px;">상품 종류</th>
								<td>
									<select name="goodsKind" id="goodsKind" class="select"
														req fname="생년월일(년)">
														<option value=''>-선택-</option>

														<option value="meat">육포류</option>

														<option value="bones">뼈간식류</option>

														<option value="accessory">악세서리</option>
									</select>
								</td>
						</tr>
						
						
						</table>
						<input type = "submit" value = "등록하기">
					</form>
					</div>
			
			</div>
			<!-- 메인 컨텐츠 종료 -->
			
			</div>
			<!-- 컨테이너 종료 -->
		</div>
		<!-- footer 시작 -->
		<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
		<!-- footer종료 -->
	</div>
</body>
</html>