<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/intro.css" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/resform.css" />
<link rel="stylesheet" type="text/css" href="css/reservation_form.css" />
<!-- <link rel="stylesheet" type="text/css" href="css/animal_detail.css" /> -->
  <link rel="icon" type="image/png" href="images/favicon.png" />

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>

<script type="text/javascript">
	$(function() {

		var phone = "${member.userPh}";
		var phone2 = "${member.userPh}"

		var first = phone.substr(0, 3);
		console.log(first);
		var elseNum = phone.substr(3, 8);
		console.log(elseNum);
		var middle = elseNum.substr(0, 4);
		console.log(middle);
		var elseNum2 = phone.substr(3, 8);
		var last = elseNum2.substr(4, 4);
		console.log(last);

		document.getElementById("first").value = first;
		document.getElementById("middle").value = middle;
		document.getElementById("last").value = last;

	});
</script>

<script type="text/javascript">

$("select option[value*='1']").prop('disabled',true);
$("select option[value*='2']").prop('disabled',true);

</script>

</head>

<body>
	<div id="wrap">

		<!-- 헤더시작 -->
		<jsp:include page="../Unisafe/header.jsp"></jsp:include>
		<!-- 헤더 끝 -->


		<!-- 왼쪽 영역 -->
		<div id="container">
			<!-- LNB 시작 -->


			<!-- LNB -->
			<div id="lnb">

				<!-- 유니세프 소개 -->
				<div class="titBox">
					<h1>
						<a href="/intro/idea.asp">입양하기<span>Adopt</span></a>
					</h1>
					<a href="/intro/idea.asp" class="btnAbs"></a>
				</div>
				<ul class="one_depth">
					<li class="on" style="border-top: 1px solid rgb(222, 222, 222);">
					<li><a href="reservation.at">상담 예약</a></li>
					<li class="onm"><a href="#">마이페이지</a>
				</ul>

			</div>
			<!-- LNB끝 -->


			
			<div class="reservation-form material-form">

				<div class="animals_result">
					<div id="content" class="container ">
						<div class="row justify-content-around">
							<div class="ergebnisbereich col">

								<div class="header">
									<p class="h2">예약하기</p>
								</div>

								<ul class="animals_grid row">

									<li><a href="aniDetail.at?num=${num }" target="_blank"><label
											class="tier_label"> <font
												style="vertical-align: inherit;"> <font
													style="vertical-align: inherit;">${animal.aniName}</font>
											</font></label> <img src="./Adopt/animal/${animal.storeFileName }"
											alt="${animal.aniName }" class="tierbild"> </a></li>
								</ul>

							</div>
						</div>
					</div>


					<form id="dataForm" name="dataForm" action="updateReserv.at"
						method="post" style="margin: 0">
						<input type="hidden" name="num" value=${num }> <input
							type="hidden" name="date" value=${date }> <input
							type="hidden" name="userPh" value=${member.userPh }> <input
							type="hidden" name="aniName" value=${animal.aniName }> <input
							type="hidden" name="userName" value=${member.userName }>
						<input type="hidden" name="act"
							value="reservation.reservation_application_act"> <input
							type="hidden" name="ch" value="sub"> <input type="hidden"
							name="setupCode" value=""> <input type="hidden"
							name="rdate" value="">

						<div class="form-group">
							<!-- 가져온거 시작 -->
							<div id="animal-data" class="animal-data row mb-5"
								style="width: 500px; float: right; margin-right: 140px;"
								align="center;">
								<table class="col-12 table tierattribute">
									<thead></thead>
									<tbody>
										<tr>
											<td>예약자 성함</td>
											<td>${member.userName }</td>
										</tr>
										<tr>
											<td>예약날짜</td>
											<td>${date }</td>
										</tr>
										<tr>
											<td>시간</td>
											<td>
											<select name="time" class="form-control">
													<option value="1" stat="">10:00~12:00(예약가능)</option>
													<option value="2" stat="">14:00~16:00(예약가능)</option>
											</select>

											</td>
										</tr>
										<tr>
											<td>휴대전화</td>
											<td>
												<div class="input-group col-xxs-12">

													<input type="text" name="RESERV_reserv_user_hphone[]"
														id="first" maxlength="3" class="form-control last">
													<span class="input-group-addon">-</span> <input type="text"
														name="RESERV_reserv_user_hphone[]" maxlength="4"
														id="middle" class="form-control first last"> <span
														class="input-group-addon">-</span> <input type="text"
														name="RESERV_reserv_user_hphone[]" maxlength="4" id="last"
														class="form-control first">
												</div>
											</td>
										</tr>
										<tr>
											<th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
											<td>
												<div class="btnJoin3">
													<span><a href="javascript:reservSubmit();">예약하기</a></span>&nbsp;&nbsp;
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- div form 그룹 끝 -->

						<input type="hidden" value="${animal.storeFileName }"
							name="aniImage">
					</form>
				</div>
				<!-- reservation material-form 끝 -->
			</div>
			<!-- container 끝 -->



			<script type="text/javascript"
				src="/common/js/sky.form.checker.js?v=201510200000"></script>
			<script type="text/javascript"
				src="/common/js/sky.calendar.js?v=201510200000"></script>
			<script type="text/javascript"
				src="/common/js/n/utility.js?v=201510200000"></script>
			<script type="text/javascript"
				src="/common/js/n/panel.js?v=201510200000"></script>

			<script type="text/javascript">
				function reservSubmit() {
					dataForm.submit();
				}
			</script>

			<script type="text/javascript">
				function init() {
					bindCalender();
				}
				$load(init);

				function bindCalender() {
					var cal = new Calendar();
					var form = document.forms['dataForm'];
					for (var i = 0; i < form.elements.length; i++) {
						var e = form.elements[i];
						if (e.getAttribute('calendar') != 'undefined'
								&& e.getAttribute('calendar') == 1) {
							cal.attach(e.id, e.getAttribute('button'));
						}
					}
				}

				// 우편번호
				function openZipCodeWindow(button) {
					var target = button.getAttribute(target);
					Durian.openWin(target,
							'?act=common.popup_find_zipcode&ch=pop&mode=form',
							510, 310, 'yes');
				}

				function applyZipcode(zipcode, address_base, address, mode) {
					var form = document.forms['dataForm'];
					var obj = form.elements['RESERV_reserv_address']
							|| form.elements['RESERV_reserv_address[]'];
					//obj[0].value = zipcode.split('-')[0];
					//obj[1].value = zipcode.split('-')[1];
					obj[0].value = zipcode;
					obj[1].value = address_base;
				}

				// 파일첨부
				function applyUpload(result) {
					Attach.onAttachWindowClosed(result);
				}

				Attach = function() {
					Attach.code = null; // 현재 첨부할 필드의 코드
					Attach.fields = {};

					Attach.openWindow = function(button) {
						var code = button.getAttribute('code');
						if (typeof (Attach.fields[code]) == 'undefined'
								|| Attach.fields[code] == null) {
							Attach.fields[code] = {};
							Attach.fields[code]['button'] = null;
							Attach.fields[code]['files'] = new Array();
						}
						Attach.fields[code]['button'] = button;
						Attach.code = code;

						Durian.openUploadWin();
					}

					Attach.onAttachWindowClosed = function(result) {
						if (typeof result != 'object' || result.success != true) {
							ubik.Panel.showMessage('파일 업로드 작업이 실패하였습니다!');
							return;
						}

						var select = document.forms['dataForm'][Attach.code
								+ '_list'];
						var list = result.list;
						for (i = 0; i < list.length; i++) {
							select.options.add(new Option(list[i].name + ' ('
									+ list[i].size + ')', list[i].name + '|'
									+ list[i].path));
						}
						Attach.applyValue(select);
					}

					Attach.confirmRemove = function(select) {
						var file = $v(select);
						if (!file) {
							return;
						}
						ubik.Panel
								.showConfirm({
									text : file.split('|')[0]
											+ ' \n파일을 목록에서 제외시키겠습니까?',
									yes : function() {
										select
												.removeChild(select.options[select.selectedIndex]);
										Attach.applyValue(select);
									},
									no : function() {
									}
								});
					}

					Attach.applyValue = function(select) {
						var form = select.form;
						var code = select.name.slice(0, -5);

						var tmp = [];
						for (var i = 0; i < select.options.length; i++) {
							tmp.push(select.options[i].value);
						}
						form.elements[code].value = tmp.join("\t");
					}
				}
				Attach();

				function setReservTimeOpt(obj, rdate) {
					var $timeObj = jQuery('select[name=RESERV_reserv_time]');

					if ($timeObj.length <= 0)
						return;

					jQuery('option', $timeObj).each(function(i) {
						if (i > 0)
							jQuery(this).remove();
					});

					if (typeof obj == 'undefined'
							|| jQuery(obj).val().trim() == ''
							|| jQuery('option:selected', jQuery(obj)).attr(
									'stat') == 'complete') {
						return;
					}

					if (typeof rdate == 'undefined' || jQuery.trim(rdate) == '') {
						return;
					}

					Durian.loadingSmallWhite('.contents_sub');

					jQuery.post('./?act=reservation.reservation_ajax', {
						mode : 'item_time_list',
						item : jQuery(obj).val().trim(),
						rdate : rdate,
						setupCode : ''
					}, function(result) {

						Durian.loadingClose('.contents_sub');

						if (typeof result == 'undefined'
								|| jQuery.trim(result) == '') {
							return;
						}

						$timeObj.append(result);
					});
				}

				function init_dataForm_callback(fc, data) {
					fc.onSuccess = function() {
						var $timeObj = jQuery('select[name=RESERV_reserv_time]');
						var $itemObj = jQuery('select[name=RESERV_reserv_item]');

						if ($itemObj.length > 0
								&& jQuery('option:selected', $itemObj).attr(
										'stat') == 'complete') {
							Durian.alert('예약이 완료된 예약사항은 신청하실 수 없습니다.');
							$itemObj.focus();
							return;
						}

						if ($timeObj.length > 0
								&& jQuery('option:selected', $timeObj).attr(
										'stat') == 'complete') {
							Durian.alert('예약이 완료된 예약사항은 신청하실 수 없습니다.');
							$timeObj.focus();
							return;
						}

						fc.doSSLSubmit();
					}
				}

				jQuery(document).ready(
						function() {
							jQuery('input[name=RESERV_reserv_user_name]').val(
									'');
							jQuery('input[name="RESERV_reserv_user_hphone[]"]')
									.eq(0).val('');
							jQuery('input[name="RESERV_reserv_user_hphone[]"]')
									.eq(1).val('');
							jQuery('input[name="RESERV_reserv_user_hphone[]"]')
									.eq(2).val('');
							jQuery('input[name="RESERV_reserv_user_email[]"]')
									.eq(0).val('');
							jQuery('input[name="RESERV_reserv_user_email[]"]')
									.eq(1).val('');
						});

				var isIe9 = (navigator.userAgent.indexOf("MSIE 9.0") >= 0);

				function ie9_placeHolder() {
					// IE9 이하 placeholder 와 비슷한 처리를 하기 위한...

					jQuery('label.th').addClass('ie9');

					var inputList = jQuery('.reservation-form').find(
							'input[type="text"], input[type="password"]');
					inputList
							.each(function(i) {
								var that = inputList[i];
								var $_that = jQuery(that);
								var id = (that.attributes['id'] ? that.attributes['id'].value
										: null);

								if (id && document.getElementById(id + 'lb')) {
									$_that
											.on(
													'focus blur change keydown keyup',
													function(e) {
														var id = this.attributes['id'].value;
														var _id = "#" + id
																+ "lb";

														if (e.type == 'focus'
																|| this.value.length > 0)
															jQuery(_id).hide();
														else
															jQuery(_id).show();
													});
								}

							});
				}

				$load(function() {
					if (isIe9) {
						ie9_placeHolder();
					}
				});
			</script>
			<!--BODY]]]-->

			<!--[[AREA_BODY_END]]-->
		</div>

		<jsp:include page="../Unisafe/footer.jsp"></jsp:include>
		<!-- footer종료 -->

	</div>
	<!-- wrap -->
</body>
</html>


