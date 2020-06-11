<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css" href="css/join.css">
  <link rel="shortcut icon" href="images/favicon.ico">


<script type="text/javascript">
	$(function(){
		$("#memberJoinForm").submit(function(){
			if($("#userId").val() == ""){
				$("#userId").focus();
				alert("아이디를 입력하세요.");
				return false;
			}
			if($("#userPw").val() == ""){
				$("#userPw").focus();
				alert("비밀번호를 입력하세요.");
				return false;
			}
			if($("#userPw").val() !=  $("#userPw2").val()){
				$("#userPw").val("");
				$("#userPw2").val("");
				$("#userPw").focus();
				alert("비밀번호가 다릅니다.");
				return false;
			}
			if($("#userName").val()==""){
				$("#userName").focus();
				alert("사용자 이름을 입력하세요.");
				return false;
			}
			if($("#userPh2").val()==""){
				$("#userPh2").focus();
				alert("사용자 연락처을 입력하세요.");
				return false;
			}
			if($("#userPh3").val()==""){
				$("#userPh3").focus();
				alert("사용자 연락처을 입력하세요.");
				return false;
			}
			if($("#userEmail1").val()==""){
				$("#userEmail1").focus();
				alert("사용자 이메일을 입력하세요.");
				return false;
			}
			if($("#userEmail2").val()==""){
				$("#userEmail2").focus();
				alert("사용자 이메일을 입력하세요.");
				return false;
			}
			if($("#userBirth").val()==""){
				$("#userBirth").focus();
				alert("사용자 생년월일을 입력하세요.");
				return false;
			}
			if($("#confirmNum").val() == "1"){
				alert("중복확인을 해주세요.");
				return false;
			}
		});
		$("#userConfirm").click(function(){
			if($("#userId").val() == ""){
				$("#userId").focus();
				alert("아이디를 입력하세요.");
				return false;
			}
			var popupX = (window.screen.width / 2)-(400 / 2);
			var popupY= (window.screen.height /2)-(500 / 2);
			var url="userConfirm.us?userId="+$("#userId").val();
			window.open(url, "userConfirm", 'status=no, height=300, width=500, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		});
	});
	
</script>
</head>
<body>

	<div id="wrap">

		<div id="header">
			<div class="headerBox">

				<div class="logo" align="right">
					<a href="index.us"><img src="images/UnisafeLogo.png" alt="로고"></a>
				</div>



			</div>
			<!-- headerBox -->
		</div>
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
					<h2>회원가입</h2>
				</div>

				<div class="relCon">
					<div id="joinInfo" class="joinInfo2">
						<ul>
							<li>유니세이프는 2013년 2월 18일부터 <span>정보통신망 이용 촉진 및 정보보호등에
									관한 법률 제 23조 조항에 의거, 홈페이지의 웹회원 가입 시 주민등록번호나 주소 등의 개인정보를 수집하지
									않습니다.</span></li>
							<li>아이디/비밀번호 분실 시 이를 다시 발급 받으려면 본인 확인절차를 거쳐야 하므로 <span>실명과
									실제 사용하는 연락처를 입력</span>해주세요.
							</li>
							<li>허위정보 입력 시 위 서비스는 제공할 수 없으며, 타인 명의로 가입하실 경우 법적 처벌을 받을 수
								있습니다.</li>
							<li>웹회원 가입과 별도로 후원회원으로 가입하시는 경우 기부금 영수증 발행 및 국세청 기부금소득공제 등록을
								위해 개인정보(주민등록번호, 주소, 연락처)를 요청할 수 있습니다.</li>
						</ul>
					</div>

					

					<div class="joinTit">
						<p class="fl">정보입력</p>
						<p class="fr">
							<span><img src="images/bul_essential.gif"
								alt="필수입력" /></span>필수 입력 항목입니다.
						</p>
					</div>

					
					<div id="memberInfo" align="center">
						<form action="memberJoinPro.us" method="post" name="memberJoinForm" id="memberJoinForm">
						<input type="hidden" name = "confirmNum" id = "confirmNum" value="1">
							<div class="table11">
								<table summary="회원가입" border="0" cellpadding="0" cellspacing="0"
									style="table-layout: fixed;">
									
									<tbody>
										<tr>
											<th style="width: 130px;"><span>*</span><label for="">아이디</label></th>
											<td><input type="text" name="userId" id="userId"
												class="input_text"
												style="width: 183px; ime-mode: disabled; text-transform: lowercase;"
												req fname="아이디" maxlength="16" /> 
												<span><a href="javascript:userConfirm()" onclick="userConfirm()" name="userConfirm" id="userConfirm"><img src="images/btn_id_test.gif" alt="중복검사" /></a></span>
												<a class="layer"
												data-position="iframe" id="id_overlap_hidden"></a></td>
										</tr>

										<tr>
											<th><span>*</span><label for="">비밀번호</label></th>
											<td><input type="password" name="userPw"
												id="userPw" class="input_text" style="width: 183px;" req
												fname="비밀번호" maxlength="20" onblur="pwdpcheck();" /></td>
										</tr>
				
										<tr>
											<th><span>*</span><label for="">비밀번호 확인</label></th>
											<td><input type="password" name="userPw2"
												id="userPw2" class="input_text" style="width: 183px;"
												req fname="비밀번호 확인" maxlength="20" onblur="pwdpcheck();" />
												<span class="agree" id="spn_passConfirm_msg"></span></td>
										</tr>
										<tr>
											<th><span>*</span><label for="">성명/단체명</label></th>
											<td><input type="text" name="userName" id="userName"
												class="input_text" style="width: 183px;" req fname="성명/단체명"
												maxlength="20" /></td>
										</tr>
										<tr>
											<th><span>*</span><label for="">휴대폰번호</label></th>
											<td><select name="userPh1" id="userPh1" class="select"
												style="width: 70px;" req fname="휴대폰 번호">
													<option value='010'>010</option>
													<option value='011'>011</option>
													<option value='016'>016</option>
													<option value='017'>017</option>
													<option value='018'>018</option>
													<option value='019'>019</option>
											</select>&nbsp;- <input type="text" name="userPh2" id="userPh2"
												class="input_text numOnly" style="width: 48px;" req num
												fname="휴대폰 번호" maxlength="4" />&nbsp;- <input type="text"
												name="userPh3" id="userPh3" class="input_text numOnly"
												style="width: 48px;" req num fname="휴대폰 번호" maxlength="4" />
											</td>
										</tr>
										<tr>
											<th><span>*</span><label for="">이메일</label></th>
											<td><input type="text" name="userEmail1" id="userEmail1"
												class="input_text" style="width: 148px; ime-mode: disabled;"
												req fname="이메일" maxlength="30" />&nbsp; <input type="text"
												name="userEmail2" id="userEmail2" class="input_text"
												style="width: 148px;" req fname="이메일" /> <select
												id="mail_select" class="select"
												style="width: 110px;" title="이메일 주소 선택"
												 onchange="this.form.userEmail2.value=this[this.selectedIndex].value;">
													<option value="">직접입력</option>
													<option value='@naver.com'>naver.com</option>
													<option value='@chol.com'>chol.com</option>
													<option value='@dreamwiz.com'>dreamwiz.com</option>
													<option value='@empal.com'>empal.com</option>
													<option value='@freechal.com'>freechal.com</option>
													<option value='@gmail.com'>gmail.com</option>
													<option value='@hanafos.com'>hanafos.com</option>
													<option value='@hanmail.net'>hanmail.net</option>
													<option value='@hanmir.com'>hanmir.com</option>
													<option value='@hitel.net'>hitel.net</option>
													<option value='@hotmail.com'>hotmail.com</option>
													<option value='@korea.com'>korea.com</option>
													<option value='@lycos.co.kr'>lycos.co.kr</option>
													<option value='@nate.com'>nate.com</option>
													<option value='@paran.com'>paran.com</option>
													<option value='@yahoo.co.kr'>yahoo.co.kr</option>
											</select><p class="mt5"><span>신청하신 이메일로 가입확인 이메일을 발신합니다</span></p></td>
										</tr>
										<tr>
											<th><span>*</span><label for="">생년월일</label></th>
											<td><span>법령에 따라 만 14세 미만 아동 여부를 확인하기 위하여 가입자 본인의
													생년월일을 입력하여 주세요.</span>
												<div class="newsCheck" style="margin-top: 10px;">
													<input type="date" id="userBirth" name="userBirth">
												</div></td>
										</tr>
								</table>
								</div>
								<!-- div table11 끝 -->
						
							<div class="btnJoin2">
						<input type="submit" id="submitBtn" value="가입하기" />
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


