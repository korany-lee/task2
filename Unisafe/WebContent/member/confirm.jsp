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
  <link rel="shortcut icon" href="images/favicon.ico">
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/confirm.css">
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		$(opener.document).find("#userId").val($("#userId").val());
		$(opener.document).find("#confirmNum").val($("#num").val());
		window.close();
	});	
});
</script>
</head>
<body>
<form action="userConfirm.us" method="post" name="memberJoinForm" >
<div align="center">
<div align="center">
<img alt="로고" src="images/UnisafeLogo.png">
</div>
 <input type="text" name = "userId" value="${ userId }" id ="userId"/>
 <div>${ chkId }</div>
 <input type="hidden" name = "num" value="${ num }" id="num" />
 <input type = "submit" value="아이디확인" /> 
 <input type="button" value="닫기"  id = "btn"/>
 </div>
</form>
</body>
</html>







