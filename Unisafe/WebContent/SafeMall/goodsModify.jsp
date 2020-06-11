<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAFE-MALL</title>
<link rel="stylesheet" type="text/css" href="css/safemall/goodsUp.css" />
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
	  <link rel="icon" type="image/png" href="images/favicon.ico" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		if($("#btn1").attr("value") == "삭제"){
			$("#btn1").attr("value","삭제취소");
			$("#fileDel").val("${goods.goodsImage}");
			$("#imageView").html(
					"<input type='file' name='goodsImage' >");
		}else{
			$("#btn1").attr("value","삭제");
			$("#fileDel").val("");
			$("#imageView").html("");
		}
	});
});
$(function(){
	$("#btn2").click(function(){
		if($("#btn2").attr("value") == "삭제"){
			$("#btn2").attr("value","삭제취소");
			$("#fileDel1").val("${goods.goodsImage1}");
			$("#imageView1").html(
					"<input type='file' name='goodsImage1' >");
		}else{
			$("#btn2").attr("value","삭제");
			$("#fileDel1").val("");
			$("#imageView1").html("");
		}
	});
});
$(function(){
	$("#btn3").click(function(){
		if($("#btn3").attr("value") == "삭제"){
			$("#btn3").attr("value","삭제취소");
			$("#fileDel2").val("${goods.goodsImage2}");
			$("#imageView2").html(
					"<input type='file' name='goodsImage2' >");
		}else{
			$("#btn3").attr("value","삭제");
			$("#fileDel2").val("");
			$("#imageView2").html("");
		}
	});
});
$(function(){
	$("#frm").submit(function(){
		if($("#goodsPrice").val() == ""){
			$("#goodsPrice").focus();
			alert("상품 가격을 입력하세요.");
			return false;
		}
		if($("#goodsQty").val() == ""){
			$("#goodsQty").focus();
			alert("상품수량을 입력하세요.");
			return false;
		}
		if($("#goodsContent").val()==""){
			$("#goodsContent").focus();
			alert("상품 설명을 입력하세요.");
			return false;
		}
	});
});
</script>
</head>
<body>
	<div id="wrap">

		<!-- 헤더시작 -->
		<div id="top_fixed">
			<div class="top_cate">
				<div id="logo">
					<a href="safemall.sm"><img
						src="images/safemall/safeMallLogo.png" alt="세이프 몰 로고" /></a>
				</div>

			</div>
		</div>
		<!-- 헤더 종료 -->

		<!-- 컨테이너 시작 -->
		<div id="container">
			<!-- 메인 컨텐츠 -->
			<div class="contents">
				<div class="contentsTop">
					<h2>상품 수정</h2>
				</div>
				<br>
				<div class="relCon">

					<div class="table11" id="ustiInfo" align="center">
						<form action="goodsModifyPro.sm" method="post" id = "frm" name="goodsForm"
							enctype="multipart/form-data">
							<table>
								<tr>
									<th style="width: 100px;">상품 번호</th>
									<td>${goods.goodsNum }</td>
								</tr>

								<tr>
									<th style="width: 100px;">상품명</th>
									<td>${goods.goodsName }</td>
								</tr>

								<tr>
									<th style="width: 100px;">상품가격</th>
									<td><input type="text" name="goodsPrice" id="goodsPrice"
										value="${goods.goodsPrice }" /></td>
								</tr>

								<tr>
									<th style="width: 100px;">입고 수량</th>
									<td><input type="text" name="goodsQty" id="goodsQty" /></td>
								</tr>

								<tr>
									<th style="width: 100px;">상품 설명</th>
									<td><textarea rows="13" cols="56" name="goodsContent"
											id="goodsContent"></textarea></td>
								</tr>

								<tr>
									<th style="width: 100px;">메인 이미지</th>
									<td>${goods.goodsImage }<input type="button" id="btn1"
										value="삭제" /> <img src="SafeMall/update/${goods.goodsImage }"
										width="30" height="30" />
									</td>
								</tr>
								<tr>
									<th style="width: 100px;">메인 이미지</th>
									<td><div id="imageView"></div>
									</td>
								</tr>
								<tr>
									<th style="width: 100px;">상세 이미지1</th>
									<td>${goods.goodsImage1 }<input type="button" id="btn2"
										value="삭제" /> <img src="SafeMall/update/${goods.goodsImage1 }"
										width="30" height="30" />
									</td>
								</tr>
								<tr>
									<th style="width: 100px;">상세 이미지1</th>
									<td><div id="imageView1"></div>
									</td>
								</tr>
								<tr>
									<th style="width: 100px;">상세 이미지2</th>
									<td>${goods.goodsImage2 }<input type="button" id="btn3"
										value="삭제" /> <img src="SafeMall/update/${goods.goodsImage2 }"
										width="30" height="30" />
									</td>
								</tr>
								<tr>
									<th style="width: 100px;">상세 이미지2</th>
									<td><div id="imageView2"></div>
									</td>
								</tr>

							</table>
							<input type="submit" value="수정 완료"> 
							<input type="hidden" name="fileDel" id="fileDel" /> 
							<input type="hidden" name="fileDel1" id="fileDel1" /> 
							<input type="hidden" name="fileDel2" id="fileDel2" /> 
							<input type="hidden" name="goodsSeq" id="goodsSeq" value="${goods.goodsSeq }" />
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