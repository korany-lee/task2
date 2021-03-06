<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id = "top_fixed">
			<div id="blank">
     			<div class="header__menulist">	
				<ul class="headerQuick">
					<li><a href="index.us" title="유니세이프 바로가기" 
						class="header__menuitem_naver" >
						<img src="images/safemall/title.png" id="naver_ico">
						</a></li>
					<li style="padding-left: 10px;border-top-width: 6px;padding-top: 6px;margin-left: 0px;"><a href="myPage.us">마이페이지</a></li>					
					<li style="padding-left: 10px;border-top-width: 6px;padding-top: 6px;margin-left: 0px;"><a href="contact.us">연락처</a></li>
					<li style="padding-left: 10px;border-top-width: 6px;padding-top: 6px;margin-left: 0px;"><a href="sitemap.us">사이트맵</a></li>
				</ul>
				</div>
											
				<div class="top_cate">
					
						<div id="logo">
							<a href="safemall.sm"><img
								src="images/safemall/safeMallLogo.png" alt="세이프 몰 로고" /></a>
						</div>
					
					
					<div id="category-basic"
						class="xans-element- xans-layout xans-layout-category">
						<div class="position">

							<ul class="ct01-wrap">
								<li data-param="?cate_no=24" class="ct01 xans-record-"><a
									href="safeMallJerky.sm">쫄깃쫄깃! 육포/져키류</a></li>
								<li data-param="?cate_no=26" class="ct01 xans-record-"><a
									href="safeMallBones.sm">천연개껌! 뼈간식류</a></li>
								<li data-param="?cate_no=28" class="ct01 xans-record-"><a
									href="safeMallAccessory.sm">악세서리</a></li>
								<li><a href="safeMallQ&A.sm">Q&amp;A</a></li>
								<li><a href="safeMallReview.sm">솔직후기</a></li>
								<li><a href="safeMallCart.sm">장바구니</a></li>
								<li><a href="safeMallBuyList.sm">구매 내역</a></li>
								<c:if test = "${ uniId == manager }">
								<li><a href="goodsUp.sm">상품 등록</a></li>
								<li><a href="safeMallSellList.sm">판매 현황</a></li>
								<li><a href="safeMallSales.sm">매출 현황</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>

				
			</div>
</body>
</html>