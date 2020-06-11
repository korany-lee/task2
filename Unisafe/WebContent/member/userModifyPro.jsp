<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>
<link rel="shortcut icon" href="images/fvicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css" href="css/myPage.css">
  <link rel="shortcut icon" href="images/favicon.ico">

<script type="text/javascript">
	function pwModifyBtn() {
		location.href="pwModify.us";
	}
	
	function userSelfDel() {
		var result = confirm('정말 탈퇴하시겠습니까?');
		if(result) {
			location.href='userSelfDel.us';
		} else { 
			return false;
		}
	}
	
</script>
</head>
<body>
<div id="wrap" >
    <!-- 헤더시작 -->
     <jsp:include page="../Unisafe/header.jsp"></jsp:include>
		<!-- header끝 -->





		<div id="container">
			<!-- LNB 시작 -->


			<!-- LNB -->
			<!-- <div id="lnb">

				웹사이트 회원
				<div class="titBox">
					<h1>
						<a href="#">웹사이트 회원<span>Website Member</span></a>
					</h1>
					<a href="#" class="btnAbs"></a>
				</div>
				<ul class="one_depth">
					<li><a href="#">로그인</a></li>
					<li><a href="#">아이디/비밀번호 찾기</a></li>
					<li><a href="#">회원가입</a></li>
				</ul>
				// 웹사이트 회원

			</div> -->
			<div id="contents">
				<div class="contentsTop">
					<h2>회원정보 수정</h2>
				</div>

				<div class="relCon">
					<div class="joinTit">
						<p class="fl">수정하실 정보를 입력하세요.</p>
					</div>

					
					<div id="memberInfo" align="center">
						<form action="userModifyProAction.us" method="post" name="userModifyProAction" id="userModifyProAction">
						<input type="hidden" name = "confirmNum" id = "confirmNum" value="1">
							<div class="table11">
								<table summary="회원가입" border="0" cellpadding="0" cellspacing="0"
									style="table-layout: fixed;">
									
									<tbody>
										<tr>
											<th style="width: 130px;"><span></span><label for="">아이디</label></th>
											<td>${ member.userId }&nbsp;&nbsp;&nbsp;<a href="javascript:userSelfDel()" id="del"><span>회원탈퇴</span></a>
												<a class="layer"
												data-position="iframe" id="id_overlap_hidden"></a></td>
										</tr>
										<tr>
											<th><span></span><label for="">성명/단체명</label></th>
											<td>${ member.userName }</td>
										</tr>
										<tr>
											<th><span></span><label for="">휴대폰번호</label></th>
											<td><input type="text" name="userPh1" id="userPh1"
												class="input_text numOnly" style="width: 96px;" req num
												fname="휴대폰 번호" maxlength="12" value="${ member.userPh }"/>
											</td>
										</tr>
										<tr>
											<th><span></span><label for="">이메일</label></th>
											<td><input type="text" name="userEmail1" id="userEmail1"
												class="input_text" style="width: 150px; ime-mode: disabled;"
												req fname="이메일" maxlength="30" value="${ member.userEmail }" />
										</tr>
										<tr>
											<th><span></span><label for="">생년월일</label></th>
											<td>
												<div class="newsCheck">
													<fmt:formatDate value="${ member.userBirth }" type = "date" pattern="yyyy년   MM월  dd일"/>
												</div></td>
										</tr>
								</table>
								</div>
								<!-- div table11 끝 -->
						
							<div class="btnJoin2">
						<input type="submit" id="submitBtn" value="수정하기" />
						<input type="button" onclick="pwModifyBtn()" value="비밀번호 변경" />
					</div>
					    </form>	
					</div>
					<!-- memberInfo 끝 -->
						
				</div>
				<!-- relCon끝 -->
					</div>
					<!-- contents 종료-->



		
		 </div>
		 <!-- container 종료 -->
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
						<li>단체명 : 사단법인 유니세이프  (고유번호: 102-82-07271)</li>
						<li>주소 : [07271] 사단법인 유니세이프 ｜ 서울시 영등포구 양산로 53(양평동)</li>
						<li>대표자 : 김이박</li>
					</ul>
					<p>COPYRIGHT @ THE KOREAN COMMITTEE FOR UNISAFE. ALL RIGHT RESERVED
					
					</p>
				</div>
			</div>
		</div>

		</div>
		<!-- wrap종료 -->
</body>

</html>


