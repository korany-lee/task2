<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>UNISAFE</title>

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/join.css">
<link rel="shortcut icon" href="images/fvicon.ico">
  <link rel="icon" type="image/png" href="images/favicon.png" />
</head>
<body>

	<div id="wrap">

		<div id="header">
			<div class="headerBox">

				<div class="logo" align="right">
					<img src="images/UnisafeLogo.png" alt="로고">
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
						<form action="memberJoin.us" method="post">
							<div class="table11">
								<table summary="회원가입" border="0" cellpadding="0" cellspacing="0"
									style="table-layout: fixed;">
									
									<tbody>
										<tr>
											<th style="width: 130px;"><span>*</span><label for="">아이디</label></th>
											<td><input type="text" name="m_userid" id="m_userid"
												class="input_text"
												style="width: 183px; ime-mode: disabled; text-transform: lowercase;"
												req fname="아이디" maxlength="16" /> 
												<span><a href="#none" id="anchor_id_overlap" onclick="id_overlap_ajax();"><img src="images/btn_id_test.gif" alt="중복검사" /></a></span>
												<a class="layer"
												data-position="iframe" id="id_overlap_hidden"></a></td>
										</tr>

										<tr>
											<th><span>*</span><label for="">비밀번호</label></th>
											<td><input type="password" name="m_userpass"
												id="m_userpass" class="input_text" style="width: 183px;" req
												fname="비밀번호" maxlength="20" onblur="pwdpcheck();" /></td>
										</tr>
				
										<tr>
											<th><span>*</span><label for="">비밀번호 확인</label></th>
											<td><input type="password" name="m_userpass2"
												id="m_userpass2" class="input_text" style="width: 183px;"
												req fname="비밀번호 확인" maxlength="20" onblur="pwdpcheck();" />
												<span class="agree" id="spn_passConfirm_msg"></span></td>
										</tr>
										<tr>
											<th><span>*</span><label for="">성명/단체명</label></th>
											<td><input type="text" name="m_kname" id="m_kname"
												class="input_text" style="width: 183px;" req fname="성명/단체명"
												maxlength="20" /></td>
										</tr>
										<tr>
											<th><span>*</span><label for="">휴대폰번호</label></th>
											<td><select name="m_m_tel1" id="m_m_tel1" class="select"
												style="width: 70px;" req fname="휴대폰 번호">
													<option value='010'>010</option>
													<option value='011'>011</option>
													<option value='016'>016</option>
													<option value='017'>017</option>
													<option value='018'>018</option>
													<option value='019'>019</option>
											</select>&nbsp;- <input type="text" name="m_m_tel2" id="m_m_tel2"
												class="input_text numOnly" style="width: 48px;" req num
												fname="휴대폰 번호" maxlength="4" />&nbsp;- <input type="text"
												name="m_m_tel3" id="m_m_tel3" class="input_text numOnly"
												style="width: 48px;" req num fname="휴대폰 번호" maxlength="4" />
											</td>
										</tr>
										<tr>
											<th><span>*</span><label for="">이메일</label></th>
											<td><input type="text" name="m_email1" id="m_email1"
												class="input_text" style="width: 148px; ime-mode: disabled;"
												req fname="이메일" maxlength="30" />&nbsp;@ <input type="text"
												name="m_email2" id="m_email2" class="input_text"
												style="width: 148px;" req fname="이메일" /> <select
												name="mail_select" id="mail_select" class="select"
												style="width: 110px;" title="이메일 주소 선택">
													<option value="">직접입력</option>
													<option value='1712'>naver.com</option>
													<option value='1701'>chol.com</option>
													<option value='1702'>dreamwiz.com</option>
													<option value='1703'>empal.com</option>
													<option value='1704'>freechal.com</option>
													<option value='1705'>gmail.com</option>
													<option value='1706'>hanafos.com</option>
													<option value='1716'>hanmail.net</option>
													<option value='1707'>hanmir.com</option>
													<option value='1708'>hitel.net</option>
													<option value='1709'>hotmail.com</option>
													<option value='1710'>korea.com</option>
													<option value='1715'>lycos.co.kr</option>
													<option value='1711'>nate.com</option>
													<option value='1713'>paran.com</option>
													<option value='1714'>yahoo.co.kr</option>
											</select><p class="mt5"><span>신청하신 이메일로 가입확인 이메일을 발신합니다</span></p></td>
										</tr>
										<tr>
											<th><span>*</span><label for="">생년월일</label></th>
											<td><span>법령에 따라 만 14세 미만 아동 여부를 확인하기 위하여 가입자 본인의
													생년월일을 입력하여 주세요.</span>
												<div class="newsCheck" style="margin-top: 10px;">
													<select name="year_select" id="year_select" class="select"
														req fname="생년월일(년)">
														<option value=''>-선택-</option>

														<option value="2020">2020</option>

														<option value="2019">2019</option>

														<option value="2018">2018</option>

														<option value="2017">2017</option>

														<option value="2016">2016</option>

														<option value="2015">2015</option>

														<option value="2014">2014</option>

														<option value="2013">2013</option>

														<option value="2012">2012</option>

														<option value="2011">2011</option>

														<option value="2010">2010</option>

														<option value="2009">2009</option>

														<option value="2008">2008</option>

														<option value="2007">2007</option>

														<option value="2006">2006</option>

														<option value="2005">2005</option>

														<option value="2004">2004</option>

														<option value="2003">2003</option>

														<option value="2002">2002</option>

														<option value="2001">2001</option>

														<option value="2000">2000</option>

														<option value="1999">1999</option>

														<option value="1998">1998</option>

														<option value="1997">1997</option>

														<option value="1996">1996</option>

														<option value="1995">1995</option>

														<option value="1994">1994</option>

														<option value="1993">1993</option>

														<option value="1992">1992</option>

														<option value="1991">1991</option>

														<option value="1990">1990</option>

														<option value="1989">1989</option>

														<option value="1988">1988</option>

														<option value="1987">1987</option>

														<option value="1986">1986</option>

														<option value="1985">1985</option>

														<option value="1984">1984</option>

														<option value="1983">1983</option>

														<option value="1982">1982</option>

														<option value="1981">1981</option>

														<option value="1980">1980</option>

														<option value="1979">1979</option>

														<option value="1978">1978</option>

														<option value="1977">1977</option>

														<option value="1976">1976</option>

														<option value="1975">1975</option>

														<option value="1974">1974</option>

														<option value="1973">1973</option>

														<option value="1972">1972</option>

														<option value="1971">1971</option>

														<option value="1970">1970</option>

														<option value="1969">1969</option>

														<option value="1968">1968</option>

														<option value="1967">1967</option>

														<option value="1966">1966</option>

														<option value="1965">1965</option>

														<option value="1964">1964</option>

														<option value="1963">1963</option>

														<option value="1962">1962</option>

														<option value="1961">1961</option>

														<option value="1960">1960</option>

														<option value="1959">1959</option>

														<option value="1958">1958</option>

														<option value="1957">1957</option>

														<option value="1956">1956</option>

														<option value="1955">1955</option>

														<option value="1954">1954</option>

														<option value="1953">1953</option>

														<option value="1952">1952</option>

														<option value="1951">1951</option>

														<option value="1950">1950</option>

														<option value="1949">1949</option>

														<option value="1948">1948</option>

														<option value="1947">1947</option>

														<option value="1946">1946</option>

														<option value="1945">1945</option>

														<option value="1944">1944</option>

														<option value="1943">1943</option>

														<option value="1942">1942</option>

														<option value="1941">1941</option>

														<option value="1940">1940</option>

														<option value="1939">1939</option>

														<option value="1938">1938</option>

														<option value="1937">1937</option>

														<option value="1936">1936</option>

														<option value="1935">1935</option>

														<option value="1934">1934</option>

														<option value="1933">1933</option>

														<option value="1932">1932</option>

														<option value="1931">1931</option>

														<option value="1930">1930</option>

														<option value="1929">1929</option>

														<option value="1928">1928</option>

														<option value="1927">1927</option>

														<option value="1926">1926</option>

														<option value="1925">1925</option>

														<option value="1924">1924</option>

														<option value="1923">1923</option>

														<option value="1922">1922</option>

														<option value="1921">1921</option>

														<option value="1920">1920</option>

														<option value="1919">1919</option>

														<option value="1918">1918</option>

														<option value="1917">1917</option>

														<option value="1916">1916</option>

														<option value="1915">1915</option>

														<option value="1914">1914</option>

														<option value="1913">1913</option>

														<option value="1912">1912</option>

														<option value="1911">1911</option>

														<option value="1910">1910</option>

														<option value="1909">1909</option>

														<option value="1908">1908</option>

														<option value="1907">1907</option>

														<option value="1906">1906</option>

														<option value="1905">1905</option>

														<option value="1904">1904</option>

														<option value="1903">1903</option>

														<option value="1902">1902</option>

														<option value="1901">1901</option>

														<option value="1900">1900</option>

													</select>&nbsp;년 &nbsp;&nbsp;
													<select name="month_select"
														id="month_select" class="select" req fname="생년월일(월)">
														<option value=''>-선택-</option>

														<option value="1">1</option>

														<option value="2">2</option>

														<option value="3">3</option>

														<option value="4">4</option>

														<option value="5">5</option>

														<option value="6">6</option>

														<option value="7">7</option>

														<option value="8">8</option>

														<option value="9">9</option>

														<option value="10">10</option>

														<option value="11">11</option>

														<option value="12">12</option>

													</select>&nbsp;월 &nbsp;&nbsp;
													<select name="day_select" id="day_select" class="select" req fname="생년월일(일)">
														<option value=''>-선택-</option>

														<option value="1">1</option>

														<option value="2">2</option>

														<option value="3">3</option>

														<option value="4">4</option>

														<option value="5">5</option>

														<option value="6">6</option>

														<option value="7">7</option>

														<option value="8">8</option>

														<option value="9">9</option>

														<option value="10">10</option>

														<option value="11">11</option>

														<option value="12">12</option>

														<option value="13">13</option>

														<option value="14">14</option>

														<option value="15">15</option>

														<option value="16">16</option>

														<option value="17">17</option>

														<option value="18">18</option>

														<option value="19">19</option>

														<option value="20">20</option>

														<option value="21">21</option>

														<option value="22">22</option>

														<option value="23">23</option>

														<option value="24">24</option>

														<option value="25">25</option>

														<option value="26">26</option>

														<option value="27">27</option>

														<option value="28">28</option>

														<option value="29">29</option>

														<option value="30">30</option>

														<option value="31">31</option>

													</select>&nbsp;일
												</div></td>
										</tr>
								</table>
								</div>
								<!-- div table11 끝 -->
						
							<div class="btnJoin2">
						<span><a href="memberJoinPro.us" onClick="check_join(document.frm);">가입하기</a></span>
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


