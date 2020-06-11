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
<link rel="stylesheet" type="text/css" href="css/adtchecklist.css">
  <link rel="icon" type="image/png" href="images/favicon.png" />
<script type="text/javascript">
	

function adtCLSubmit(){	
	var t=1;
	for( t=1; t <= 11 ; t++){
		var chkRadio2 = document.getElementsByName("no"+t);
		var selType2 = null;
		var isCheck = true
		for(var i=0; i<chkRadio2.length; i++){
			if(chkRadio2[i].checked == true){
				isCheck = false;
				break;
			}
		}
		if(isCheck == true){
    	    alert( t+"번째를 체크해주세요.");
    	    chkRadio2[0].focus();
    	    return false;
		}
	}
	if(t >= 11){
		adoptForm.submit();
	}
}
</script>
</head>
<body>
	
	<!-- header include -->
	<jsp:include page="../Unisafe/header.jsp"></jsp:include>
	
		<div id="container">
			
			<div id="contents">
				<div class="contentsTop">
					<h2>매칭하기</h2>
				</div>

				<div class="relCon">
					<div id="joinInfo" class="joinInfo2">
						<ul>
							<li> 유니세이프에서는 귀하의 선택에 도움을 드리기 위해<span>&nbsp;매칭 시스템&nbsp;</span>을 제공하고 있습니다.</li>
							<li> 각 문항에 알맞는 귀하의 상태/정보를 선택해 주시면 유니세이프의 동물들을 추천해드립니다.</li>
							<li> <span> 모든 항목의 선택은 사실에 기반하여 해주시기 바랍니다.</span></li>
						</ul>
					</div>
					
					<div class="joinTit">
						<p class="fr">
							<span><img src="images/radio.png"
								alt="radiobtn" /></span>항목은 중복 선택이 어렵습니다.
						</p>
					</div>
					
					
					<div class="table11" id="adoptlist" align="center">
					<form action="adtchecklist.at" method="post" name="adoptForm" id="adoptForm"> 
						<table style="width:900px;">
						<tr>
							<th style="width: 20px;">1.</th>
								<td>관심있는 동물을 선택해주세요</td>
								<td style="padding-left: 10px;">개<input type="radio" name="no1" value="1">&nbsp;&nbsp;
									고양이<input type="radio" name="no1" value="2">&nbsp;&nbsp;
									소동물(토끼, 햄스터 등)<input type="radio" name="no1" value="3">&nbsp;&nbsp;
									파충류<input type="radio" name="no1" value="4">&nbsp;&nbsp;
									대동물(말, 돼지 등)<input type="radio" name="no1" value="5">
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">2.</th>
								<td>선호하는 성별은 무엇입니까</td>
								<td style="padding-left: 10px;">수컷<input type="radio" name="no2" value="1">&nbsp;&nbsp;
									암컷<input type="radio" name="no2" value="2">&nbsp;&nbsp;
									상관없음<input type="radio" name="no2" value="3">&nbsp;&nbsp;
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">3.</th>
								<td>선호하는 성격은 무엇입니까</td>
								<td style="padding-left: 10px;">온순한<input type="radio" name="no3" value="1">&nbsp;&nbsp;
									활발한<input type="radio" name="no3" value="2">&nbsp;&nbsp;
									가족친화적인<input type="radio" name="no3" value="3">&nbsp;&nbsp;
									도시친화적인<input type="radio" name="no3" value="4">&nbsp;&nbsp;
								         독립적인<input type="radio" name="no3" value="5">
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">4.</th>
								<td>함께 살고 있는 구성원의 인원</td>
								<td style="padding-left: 10px;">1인가구<input type="radio" name="no4" value="1">&nbsp;&nbsp;
									2인<input type="radio" name="no4" value="2">&nbsp;&nbsp;
									3인~4인<input type="radio" name="no4" value="3">&nbsp;&nbsp;
									5인 이상<input type="radio" name="no4" value="4">
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">5.</th>
								<td>함께 지내는 구성원 중 영유아의 연령대</td>
								<td style="padding-left: 10px;">48개월 미만<input type="radio" name="no5" value="1">&nbsp;&nbsp;
									5세 미만<input type="radio" name="no5" value="1">&nbsp;&nbsp;
									7세 미만<input type="radio" name="no5" value="1">&nbsp;&nbsp;
									없음<input type="radio" name="no5" value="2">
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">6.</th>
								<td>이미 다른 동물과 함께 지내고 있습니까</td>
								<td style="padding-left: 10px;">그렇다<input type="radio" name="no6" value="1">&nbsp;&nbsp;
									아니다<input type="radio" name="no6" value="2">
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">7.</th>
								<td>선택한 관심동물을 이전에 키워본 적 있습니까 </td>
								<td style="padding-left: 10px;">그렇다<input type="radio" name="no7" value="1">&nbsp;&nbsp;
									아니다<input type="radio" name="no7" value="2">
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">8.</th>
								<td>평소 집에 있는 시간이 어떻게 되십니까</td>
								<td style="padding-left: 10px;">잠을 자기위해 귀가<input type="radio" name="no8" value="1">&nbsp;&nbsp;
									잦은 외출, 이른 귀가<input type="radio" name="no8" value="2">&nbsp;&nbsp;
									가끔 외출, 이내 귀가<input type="radio" name="no8" value="3">&nbsp;&nbsp;
									외출이 거의 없음<input type="radio" name="no8" value="4">
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">9.</th>
								<td>사는 지역은 어디입니까</td>
								<td style="padding-left: 10px;">도시<input type="radio" name="no9" value="1">&nbsp;&nbsp;
									외곽<input type="radio" name="no9" value="2">
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">10.</th>
								<td>사는 곳의 형태는 어떻습니까</td>
								<td style="padding-left: 10px;">아파트<input type="radio" name="no10" value="1">&nbsp;&nbsp;
									오피스텔/원룸<input type="radio" name="no10" value="1">&nbsp;&nbsp;
									기숙사<input type="radio" name="no10" value="1">&nbsp;&nbsp;
									연립주택<input type="radio" name="no10" value="1">&nbsp;&nbsp;
									단독주택<input type="radio" name="no10" value="1">&nbsp;&nbsp;
									마당이 있는 단독주택<input type="radio" name="no10" value="2">
								</td>
						</tr>
						
						<tr>
							<th style="width: 20px;">11.</th>
								<td>본인 포함 구성원 중 털 알레르기가 있으십니까</td>
								<td style="padding-left: 10px; padding-right:20px">그렇다<input type="radio" name="no11" value="1">&nbsp;&nbsp;
									아니다<input type="radio" name="no11" value="2">&nbsp;&nbsp;
									있지만 심하지 않다<input type="radio" name="no11" value="3">
								</td>
						</tr>
					</table>
						
					</form>
					</div>
					<div class="btnJoin2">
						<span><a href="javascript:adtCLSubmit();">매칭</a></span>&nbsp;&nbsp;
						<span><a href="javascript:history.go(-1)">이전으로</a></span>
						</div>
						
				</div>
				<!-- relCon끝 -->
					</div>
					<!-- contents 종료-->
		 </div>
		 <!-- container 종료 -->
		 
		<jsp:include page="../Unisafe/footer.jsp"></jsp:include>

		</div>
		<!-- wrap종료 -->
</body>

</html>


