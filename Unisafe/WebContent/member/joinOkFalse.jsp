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
	<link rel="stylesheet" type="text/css" href="css/joinOk.css">
  <link rel="shortcut icon" href="images/favicon.ico">
	<script type="text/javascript">
		$(function(){
			$("#btn").click(function(){
				var url = "index.us";
				window.open(url);
			})
		});
	</script>
</head>
<body>
<br /><br /><br /><br /><br /><br /><br /><br />
<div align="center">
<img alt="unisafeLogo" src="images/UnisafeMain.png"><br />
</div>
<div align="center">
<b>이미 가입하신 계정이 있습니다.</b><br />
<input type = "button" id="btn" value = "홈으로">
</div>
</body>
</html>