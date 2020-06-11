<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <title>UNISAFE</title>
  <link rel="stylesheet" type="text/css" href="css/userModify.css" />
  <link rel="shortcut icon" href="images/favicon.ico">
</head>
<body>
   <div id="wrap" >
    
    <!-- 헤더시작 -->
<jsp:include page="../Unisafe/header.jsp"></jsp:include>
     <!-- 왼쪽 영역
     <div id="left"><span>left</span></div>-->
     
     <!-- 메인 컨텐츠 -->
     <div id="container">
     	<div class="contentsTop">
					<h2>비밀번호 확인</h2><br />
		</div>
				<div class="relCon">
					<div id="memberInfo" align="center">
						<form action="userModifyPro.us" method="post" name="userModifyProForm" id="userModifyProForm">
						<input type="hidden" name = "confirmNum" id = "confirmNum" value="1">
							<div class="table11" >
								<table summary="회원가입" border="0" cellpadding="5px" cellspacing="0"
									style="table-layout: fixed;"><br />
									
									<tbody>
									<tr>
										<th>회원 아이디 : ${ uniId }</th>
									</tr>
									<tr>
									<th>
									<br/>
									</th>
									</tr>
										<tr>
											<th ><label for="">비밀번호</label>&nbsp;&nbsp;
											<input type="password" name="userPw"
												id="userPw" class="input_text" style="width: 183px;" req
												fname="비밀번호" maxlength="20" onblur="pwdpcheck();" /></th>
										</tr>
										<tr>
										<th>
										<br />
										</th>
										</tr>
								</table>
								</div>
								<!-- div table11 끝 -->
						
							<div class="btnJoin2">
						<input type="submit" id="submitBtn" value="확인" />
					</div>
					    </form>	
					</div>
					<!-- memberInfo 끝 -->
						
				</div>
				<!-- relCon끝 -->
					</div>
					<!-- contents 종료-->
     	
     </div>
    
     <!-- 오른쪽 영역 
       <div id="right"><span>right</span></div>-->
     <!-- footer영역 -->
     
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
</body>
</html>
