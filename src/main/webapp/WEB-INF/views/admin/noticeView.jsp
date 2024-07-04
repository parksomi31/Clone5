<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>

<style>
.logo {
	font-size: 27px;
	font-weight: 500;
	background-color: transparent;
}

.page_tit {
	background-color: transparent;
	color: #333;
}
</style>
<!-- head -->
<!-- main 변수 -->

<!-- 앱 접속 여부 추가 -->

<!-- main 변수 -->

<!-- 20190710 main html 추가 시작 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta name="mobile-web-app-capable" content="yes">
<!--20211111 파비콘 적용-->
<link rel="shortcut icon" sizes="192*192"
	href="https://image.osulloc.com/upload/kr/ko/favicon.ico">
<link rel="apple-touch-icon"
	href="https://image.osulloc.com/upload/kr/ko/favicon114.png">
<link rel="apple-touch-icon-precomposed"
	href="https://image.osulloc.com/upload/kr/ko/favicon114.png">
<!--//20211111 파비콘 적용-->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent">
<meta name="Generator" content="오설록">
<meta name="Keywords" content="오설록">
<meta name="description" content="오설록, 차와 제주가 선사하는 가치 있는 쉼">
<meta name="facebook-domain-verification"
	content="tdpu6fl67o5tlqp8etjrivmd5csnrk">

<meta name="naver-site-verification"
	content="385c3510efbba21ef957c2cf17a14c5492db3a6a">

<!-- 카카오톡 링크 썸네일 -->


<meta property="og:title" content="오설록">
<meta property="og:image"
	content="https://image.osulloc.com/kr/ko/static/images/OGImage.jpg">
<meta property="og:description" content="오설록, 차와 제주가 선사하는 가치 있는 쉼">
<meta property="og:url" content="https://www.osulloc.com">


<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<!-- <meta property="fb:app_id" content="APP_ID"> -->
<title>공지사항 | 오설록</title>

<!--fonts-->
<link rel="preload"
	href="https://image.osulloc.com/kr/ko/static_renew/fonts/NotoSansKR-Regular.subset.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload"
	href="https://image.osulloc.com/kr/ko/static_cdj/fonts/Arita-dotumM-subset.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload"
	href="https://image.osulloc.com/kr/ko/static_cdj/fonts/Arita-dotumSB-subset.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload"
	href="https://image.osulloc.com/kr/ko/static_cdj/fonts/Arita-dotumL-subset.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload"
	href="https://image.osulloc.com/kr/ko/static_cdj/fonts/Arita-dotumB-subset.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload"
	href="https://image.osulloc.com/kr/ko/static_cdj/fonts/GowunDodum-Regular-subset.woff2"
	as="font" type="font/woff2" crossorigin="anonymous">
<link rel="preload stylesheet"
	href="https://image.osulloc.com/kr/ko/static/css/fonts.css?ver=20231026"
	as="style">

<script
	src="https://image.osulloc.com/kr/ko/static/js/lib/jquery-1.11.2.min.js"></script>
<script
	src="https://image.osulloc.com/kr/ko/static_renew/js/lib/jquery-1.12.1.ui.min.js"></script>
<script
	src="https://image.osulloc.com/kr/ko/static_renew/js/lib/swiper.min.js?ver=220118"></script>
<script
	src="https://image.osulloc.com/kr/ko/static_renew/js/lib/jquery.visible.js"></script>
<script
	src="https://image.osulloc.com/kr/ko/static_renew/js/lib/icheck.min.js"></script>
<script
	src="https://image.osulloc.com/kr/ko/static_renew/js/front.js?ver=20240514_2"></script>
<!-- 2019-09-27 추가 -->
<script
	src="https://image.osulloc.com/kr/ko/static_renew/js/jquery.datetimepicker.full.min.js"></script>
<!-- 2021-03-04 추가 IMQA 웹뷰데이터 수집 -->
<script
	src="https://image.osulloc.com/kr/ko/static_renew/js/webview-agent.js"></script>

<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_renew/css/system/swiper.min.css">



<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static/css/style_product.css">



<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_renew/css/style/common.css?ver=231129_1">

<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static/css/style.css?ver=231101_1">



<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_renew/css/style/sub.css?ver=231108_1">


<!-- 20190906 css 추가 -->
<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_renew/css/style/new_sub.css?ver=230411_1">


<!--CDJ-->
<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_cdj/css/style.css?ver=20240521">
<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_cdj/css/style2.css?ver=20231102_1">
<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_cdj/css/main.css">
<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_cdj/css/mypage1.css?ver=20240514_3">
<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_cdj/css/mypage2.css?ver=20240611_2">

<!-- 20221129 추가 -->
<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_renew/css/style/ddis_mypage.css?ver=240223">

<!--[if lt IE 9]><link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static/css/old-ie.css"><![endif]-->
<!-- 20180612 braze s-->
<link rel="manifest" href="/manifest.json">


<script
	src="https://image.osulloc.com/kr/ko/static_cdj/js/layout_new.js?ver=230620"></script>
<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_cdj/search/swiper/swiper-bundle.min.css">
<link rel="stylesheet"
	href="https://image.osulloc.com/kr/ko/static_cdj/search/css/renew_search.css?ver=20230915_1">

<!-- Google Analytics & Google Tag Manager -->
<script type="text/javascript">
    var gv_DataLayer = [];
    // cdnUrl 전역변수로 저장
	var gCdnUrl = 'https://image.osulloc.com';
	
      //TODO @include(ga/custom)
      // GA태깅 - 맞춤측정 1. 유저 정보
    //TODO @setGACustomUser(pvarIsLogin, user)

	
    //TODO @render(ga_custom_search){}  // 아이템 리스트 페이지 검색시 불러온다 /template/item/list.rythm 에서만 setction 해줌
	/*  */
	
      // GA태깅 - 맞춤측정 3. 이벤트 페이지
      if(window.location.pathname.indexOf("event") != -1) {
          var evendId = window.location.pathname.split('/').slice(-1)[0];
         
      }

    
      // 트래커가 추가되면 GA 이벤트와 GTM 추적코드를 추가함
  
  </script>

<!-- 20180612 braze e -->
<script
	src="https://image.osulloc.com/kr/ko/static/js/lib/modernizr-custom.js"></script>
<script
	src="https://image.osulloc.com/kr/ko/static/js/shim.js?ver=230704"></script>

<!-- CDJ 추가 js : S -->


<script
	src="https://image.osulloc.com/kr/ko/static_cdj/js/shop.js?ver=20240612"></script>
<script src="https://image.osulloc.com/kr/ko/static_cdj/js/pop.js"></script>
<!-- CDJ 추가 js : E -->

<!-- 20180110 앱보이 암호화 -->
<!-- 
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/sha512.js"></script>
<script src="https://lig-membres.imag.fr/donsez/cours/exemplescourstechnoweb/js_securehash/md5.js"></script>
 -->
<!-- 암호화 관련 js 다운로드 20190923 -->
<script src="https://image.osulloc.com/kr/ko/static_renew/js/sha512.js"></script>
<script src="https://image.osulloc.com/kr/ko/static_renew/js/md5.js"></script>

<!-- TODO HEAD 쪽으로 위치 이동 -->


<script
	src="https://image.osulloc.com/kr/ko/static/js/lib/require.min.js"></script>


<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>

<!-- //TODO  
  @render(script){}
 -->
<!-- End Google Analytics & Google Tag Manager -->


<!-- Google Tag Manager -->
<!-- 2019.10.17 leo 태깅 전달 스크립트 삽입 -->
<script>
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5JSBJN9');
</script>
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
			new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KW8MKLBZ');
</script>
<!-- End Google Tag Manager -->
<!-- 2019.10.17 leo 태깅 전달 스크립트 삽입 -->
<!-- End Google Tag Manager -->




<!-- 네이버 연관채널 설정 -->
<span itemscope="" itemtype="http://schema.org/Organization">
	<link itemprop="url" href="https://www.osulloc.com/kr/ko"> <a
	itemprop="sameAs" href="https://brand.naver.com/osulloc"></a> <a
	itemprop="sameAs" href="https://www.instagram.com/osulloc_official/"></a>
	<a itemprop="sameAs"
	href="https://www.youtube.com/channel/UC27q_WWuOkdyNIr7M_6trvA"></a>
</span>
<!-- 2022-04-11 추가-->
<meta name="robots" content="noindex">

<style>
.button-style {
	display: inline-block;
	padding: 8px 20px;
	background-color: #DDDDDD; /* 버튼 배경색 */
	color: #fff; /* 버튼 텍스트 색상 */
	text-decoration: none; /* 링크 밑줄 제거 */
	border: 1px solid transparent; /* 테두리 스타일 */
	border-radius: 4px; /* 버튼 테두리 둥글기 */
	cursor: pointer;
	text-align: center;
	margin-left: 1500px;
	border-width: 1px; /* 테두리 두께 */
}

.button-style:hover {
	background-color: #adabab; /* 마우스 호버시 배경색 변화 */
	border-color: #004799; /* 마우스 호버시 테두리 색상 변화 */
}
</style>
</head>
<iframe id="x-sso-check" name="sso_check_iframe"
	title="SSO Session Check Iframe" hidden></iframe>
<body>
	<!-- leo tagging 공통 변수 선언 -->
	<!-- Google Tag Manager (noscript) -->
	<!-- 2019.10.17 leo 태깅 전달 스크립트 삽입 -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5JSBJN9"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- 2019.10.17 leo 태깅 전달 스크립트 삽입 -->
	<!-- 2024.06.05 leo 태깅 전달 스크립트 삽입 -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KW8MKLBZ"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- 2024.06.05 leo 태깅 전달 스크립트 삽입 -->

	<!-- End Google Tag Manager (noscript) -->
	<script type="text/javascript">
	function dataUndefinedChk(inputValue) {
		if (inputValue === 'null' || inputValue === null) {
			return undefined;
		}
		return inputValue;
	}

	var dataLayer = dataLayer || [];

	// 태깅을위한 전역변수 선언
	// 1. 공통
	var AP_DATA_GCID = dataUndefinedChk('6cfa82229f3a9ae7cf5fcc47dbd8be01db43ac067daf511eb75fbaf7648a7e19dd6c69ccb2f92baf46389875bcb06cdf6bc52fa77770807b5d9af3f54e8ee93a');
	var AP_DATA_CID  = dataUndefinedChk('1d956bda84c41659cb0d844f5bec80c2f77e33ba21de7ced689ba13b46d0a4562e25c719975af7bc8f573eda14bca39133cadc3561ec276bd6ea70a6d0d1472f');
	var AP_DATA_ISMEMBER = 'Y';
	var AP_DATA_ISLOGIN = 'Y';
	var AP_DATA_LOGINTYPE = 'NORMAL';
	var AP_DATA_CA = '31';
	var AP_DATA_CD = '1994';
	var AP_DATA_CG = dataUndefinedChk('F');
	var AP_DATA_CT = dataUndefinedChk('welcome');
	var AP_DATA_SITENAME = 'OSULLOC';
	var AP_DATA_CHANNEL = 'PC';
	var AP_DATA_PAGETYPE = 'OTHER';
	var AP_DATA_COUNTRY = 'KR';
	var AP_DATA_LANG = 'KO';
	var AP_PROMO_ID = dataUndefinedChk('null');
	var AP_PROMO_NAME = dataUndefinedChk('null');
	var AP_DATA_BEAUTYCT = dataUndefinedChk('FAMILY');
	var AP_DATA_ISEMPLOYEE = dataUndefinedChk('null');
	var AP_DATA_BREAD = dataUndefinedChk('null');
	var AP_DATA_ENV = 'PRD'

	var AP_LISTPAGE_PRDS = ""; //상품리스트 로드 시 호출되는 모든상품 정보 20210119 가현

	var AP_ECOMM_CURRENCY = 'KRW';

	// 2. 제품상세
	var AP_PRD_NAME = "";
	var AP_PRD_CODE = "";
	var AP_PRD_SAPCODE = "";
	var AP_PRD_PRDPRICE = "";
	var AP_PRD_BRAND = "";
	var AP_PRD_CATEGORY = "";
	var AP_PRD_PRICE = "";
	var AP_PRD_DISCOUNT = "";
	var AP_PRD_ISTOCK = ""; //상품 재고여부 20210929

	// 3. 검색결과
	var AP_SEARCH_TERM = "";
	var AP_SEARCH_PRDRESULT = ""; // json Array
	var AP_SEARCH_NUM = "";
	var AP_SEARCH_TYPE = "";
	var AP_SEARCH_RESULT = "";

	// 4. 리뷰작성
	var AP_REVIEW_RATING = "";
	var AP_REVIEW_PICTURE = "";
	var AP_REVIEW_PRD = "";
	var AP_REVIEW_PRDCODE = "";
	var AP_REVIEW_SAPCODE = "";
	var AP_REVIEW_CONTENT = "";

	// 5. 회원가입
	var AP_JOIN_NAME = "";

	// 6. 이벤트/프로모션 상세
	var AP_PROMO_NAME = "";
	var AP_PROMO_CODE = "";
	var AP_PROMO_TYPE = "";
	var AP_PROMO_ACTION = "";

	// 7. 장바구니
	var AP_CART_PRICE = "";
	var AP_CART_PRDPRICE = "";
	var AP_CART_DISCOUNT = "";
	var AP_CART_PRDS = ""; // json Array
	var AP_CART_ADDPRDS = ""; // json Array

	// 8. 주문결제
	var AP_ORDER_PRICE = "";
	var AP_ORDER_PRDPRICE = "";
	var AP_ORDER_DISCOUNT = "";
	var AP_ORDER_PRDS = "";

	// 9. 주문완료
	var AP_PURCHASE_PRICE = "";
	var AP_PURCHASE_PRDPRICE = "";
	var AP_PURCHASE_DCTOTAL = "";
	var AP_PURCHASE_DCBASIC = "";
	var AP_PURCHASE_COUPON = "";
	var AP_PURCHASE_MEMBERSHIP = "";
	var AP_PURCHASE_GIFTCARD = "";
	var AP_PURCHASE_POINT = "";
	var AP_PURCHASE_ONLINEGIFT = "";
	var AP_PURCHASE_ORDERNUM = "";
	var AP_PURCHASE_BEAUTYACC = "";
	var AP_PURCHASE_SHIPPING = "";
	var AP_PURCHASE_PRDS = "";	// json Array
	var AP_PURCHASE_MEMBERSHIP_LGU = "";
    var AP_PURCHASE_LPOINT = "";
	var AP_PURCHASE_COUPONNAME = "";
	var AP_PURCHASE_COUPONNO = "";
	var AP_PURCHASE_TYPE = "";
	var AP_PURCHASE_TAX = 0;

	// 10. 주문취소
	var AP_REFUND_PRICE = "";
	var AP_REFUND_PRDPRICE = "";
	var AP_REFUND_ORDERNUM = "";
	var AP_REFUND_CONTENT = "";
	var AP_REFUND_PRDS = "";	// json Array

</script>
	<!-- leo tagging 공통 변수 선언 -->



	<!-- //옴니플랫폼 적용으로 인한 주석 2021.08.31 조용현
<form name="ssoForm" action="/kr/ko/login/ssoLogin" method="GET">
	
		
		
			<input type="hidden" name="isLogin" value="true">
		
		
</form>
-->

	<script type="text/javascript">
//옴니플랫폼 적용으로 인한 주석 2021.08.31 조용현
//     document.ssoForm.target = "sso_check_iframe";
//     document.ssoForm.submit();
</script>
	<!--[if lt IE 9]><div id="legacy-browser" style="display:none">
    <div class="legacy-pad">
        <p>
            사용중인 브라우저는 지원이 중단된 브라우저입니다.<br>
            원활한 온라인 서비스와 결제를 위해 브라우저를 <a href="http://windows.microsoft.com/ko-kr/internet-explorer/ie-11-worldwide-languages" target="_blank">최신 버전</a>으로 업그레이드 해주세요.
        </p>
        <input id="legacy-check" name="legacy_check" type="checkbox">
        <label for="legacy-check">하루 동안 보지 않음</label>
    </div>
    <button type="button" id="close-browser-guide" class="close-browser-guide">닫기<i class="icon"></i></button>
  </div><![endif]-->


	<div id="wrap">
		<!-- header -->
		<!-- @section(gnb){data-gnb="xxx"}가 있을 경우 jsp:param 으로 전달 -->


		<script>
    $(window).on('load', function(){
        $(".middleMenu").find("ul:eq(0)").find(".thirdMenu li").click(function(){
            var url = $(this).find("a").attr("href");
            location.href = url;
        });
        $(".search_btn").click(function(e){
            e.preventDefault();
            var search=  $(this).data("target-id");
            if($(search).css("display") == "none"){
                $("html, body").addClass("layer_opened");    //210215 수정
                $(search).show();
                $("#header-search").focus();
            }else{
                $(search).hide();
            }
        });
        $(".close-layer").click(function(){
            $("html, body").removeClass("layer_opened");    //210215 수정
            $("#h-search").hide();
            $("#header-search").val("");
            //$('#renew201906').off('scroll touchmove mousewheel');
        });
        //로그인 성공 시 datalayer 태그 추가
        var loginSet = "logloginNo";
        var isFirstLogin = false;
        var loginAmr = 'ID';
        if (loginSet != null) {
			if (loginSet == "loglogin") {
                window.dataLayer.push({
					event : 'login_complete',
					event_category : 'login',
					event_action : 'login - complete',
					event_label : loginAmr
				});
                
            }

			if (isFirstLogin === true) {
				window.dataLayer.push({
					event : 'sign_up_complete',
					event_category : 'sign_up',
					event_action : 'sign_up - complete',
					event_label : loginAmr
				});
				
			}
        }

        // 바코드 클릭시 app 호출
        $('#barcode').on('click',function(e){
            jQuery.ajax({
                url:"/kr/ko/misc/app/getBarcodeImage",
                type:"POST",
                success:function(data){
                    if(data.success == 'Y'){
                       callBarcodeApp(data.incsCardNoEc);
                    }else{
                       alert(data.msg);
                    }
                },
                error:function(xhr,status){
                    console.log(xhr, status);
                }
            });
        });
    });

    // 앱에 바코드 정보 전달
    function callBarcodeApp(barcode){

        var userAgent = navigator.userAgent.toLowerCase();
        var isAndroid = userAgent.indexOf('osulloc_android');
        var isIos = userAgent.indexOf('osulloc_ios');

        if (isAndroid != -1) {    // Android
            try {
                window.AppJSInterface.startBarcodeActivity(barcode);
            } catch(err) {
                //alert('requestDeviceToken err:'+err);
            }
        } else if (isIos != -1) {    // IOS
            try {
                window.webkit.messageHandlers.AppJSInterface.postMessage({func:'startBarcodeActivity', barcode: barcode});
            } catch(err) {
                //alert('requestDeviceToken err:'+err);
            }
        }
    }
    // app 검색기능 추가 2021-03-30
    function onRequestSearch(){
        if($("#h-search").css("display") == "none"){
            $("html, body").addClass("layer_opened");
            $("#h-search").show();
            $("#header-search").focus();
        }else{
            $(search).hide();
        }
    }
</script>

		<form action="/kr/ko/login/logout" method="POST" id="f_logout"></form>




		<!--230420 대량구매 gnb & lnb-->
		<script>
    $(function() {
        const datesetting = new Date();
    	const dateyear = datesetting.getFullYear();
    	const datemonth = ('0' + (datesetting.getMonth() + 1)).slice(-2);
    	const dateday = ('0' + datesetting.getDate()).slice(-2);
    	const datetoday = parseInt(dateyear + datemonth + dateday);

        if (datetoday < 20230501) {
            $(".listBulk").hide();
            $(".listBulkMo").hide();
        } else {
            $(".listBulk").show();
            $(".listBulkMo").show();
        }
    });
</script>

		<div class="cdj_renew">
			<header id="cdj_header" class="cdj_header">
				<div class="wrapper">
					<div class="inner_box">
						<div class="left_box">
							<h1 class="logo">
								<a href="${pageContext.request.contextPath}/admin"
									class="logo_white"> <img
									src="${pageContext.request.contextPath}/resources/image.osulloc.com/kr/ko/static_cdj/images/main/logo_white.png"
									alt="오설록 로고" style="user-select: none;">
								</a> <a href="${pageContext.request.contextPath}/admin"
									class="logo_black"> <img
									src="${pageContext.request.contextPath}/resources/image.osulloc.com/kr/ko/static_cdj/images/main/logo_black.png"
									alt="오설록 로고" style="user-select: none;">
								</a>
							</h1>
							<nav class="nav">
								<ul class="nav_list_dep1">
									<li class="item_dep1"><a
										href="https://www.osulloc.com/kr/ko/shop/item/list"
										class='link_text'>제품</a>
										<div class="nav_list_dep2_box">
											<div class="wrapper">
												<div class="flex_box">
													<ul class="nav_list_dep2">
														<li class="item_dep2"><a
															href="https://www.osulloc.com/kr/ko/shop/item/list/best/sale"
															class='link_text'>베스트</a>
															<ul class="nav_list_dep3">
																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list/best/sale"
																	class='link_text'>위클리 베스트</a></li>
																<!-- 관리자 지정 메뉴 -->

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list/best/recommand"
																	class='link_text'>베스트</a></li>

															</ul></li>
														<li class="item_dep2"><a
															href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop"
															class='link_text'>티 제품</a>
															<ul class="nav_list_dep3">

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=198"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|티 세트">티 세트</a></li>

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=201"
																	class='link_text' data-track-name="GNB 오설록|Tea Shop|명차">명차</a></li>

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=197"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|녹차/말차">녹차/말차</a></li>

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=249"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|발효차/홍차">발효차/홍차</a></li>

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=196"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|블렌디드티">블렌디드티</a></li>

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=195"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|허브티">허브티</a></li>

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=250"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|밀크티/아이스티">밀크티/아이스티</a></li>

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=252"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|콤부차">콤부차</a></li>
															</ul></li>

														<li class="item_dep2"><a
															href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery"
															data-track-name="GNB 오설록|Tea Shop|Tea Food"
															class='link_text'>티푸드</a>
															<ul class="nav_list_dep3">

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery&line=174"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|과자/초콜릿">과자/초콜릿</a></li>

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery&line=178"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|베이커리">베이커리</a></li>



																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery&line=251"
																	class='link_text'
																	data-track-name="GNB 오설록|Tea Shop|아이스크림">아이스크림</a></li>



															</ul></li>
														<li class="item_dep2"><a
															href="https://www.osulloc.com/kr/ko/shop/teawareshop"
															class='link_text'>티웨어</a>
															<ul class="nav_list_dep3">
																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/teawareshop/use"
																	data-track-name="GNB 오설록|Tea ware Shop|용도별"
																	class='link_text'>용도별</a></li>
																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/teawareshop/brand"
																	class='link_text'>브랜드별</a></li>
															</ul></li>
														<li class="item_dep2"><a
															href="https://www.osulloc.com/kr/ko/shop/item/list?category=themashop"
															class='link_text'>라이프스타일</a>
															<ul class="nav_list_dep3">

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=themashop&line=202"
																	class='link_text'>스킨케어</a></li>

																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=228"
																	class='link_text'>정기배송</a></li>
															</ul></li>
													</ul>

													<div class="img_bnr">
														<!-- 2022-12-29 JHM, url userFunction 으로변경 -->
														<a
															href="https://www.osulloc.com/kr/ko/shop/item/bakery/21646"><img
															srcset="https://image.osulloc.com/upload/kr/ko/adminImage/XK/CR/20240229100150980BC.webp"
															src="https://image.osulloc.com/upload/kr/ko/adminImage/XK/CR/20240229100150980BC.jpg"
															alt=""></a>
													</div>

												</div>
											</div>
										</div></li>
									<!--gnb 프로모션-->

									<!--//gnb 프로모션-->
									<li class="item_dep1 no-child"><a
										href="https://www.osulloc.com/kr/ko/shop/item/gift"
										class='link_text'>선물추천</a></li>

									<li class="item_dep1"><a
										href="https://www.osulloc.com/kr/ko/brandstory"
										class='link_text'>브랜드</a>
										<div class="nav_list_dep2_box">
											<div class="wrapper">
												<div class="flex_box">
													<ul class="nav_list_dep2">
														<li class="item_dep2"><a
															href="https://www.osulloc.com/kr/ko/brandstory"
															class='link_text'>오설록 스토리</a></li>
														<li class="item_dep2"><a
															href="/kr/ko/store-introduction/2" class='link_text'>제주
																티뮤지엄</a></li>
														<li class="item_dep2"><a
															href="/kr/ko/store-introduction" data-track-name="매장 소개"
															class='link_text'>매장 소개 및 예약</a></li>

													</ul>

													<div class="img_bnr">
														<!-- 2022-12-29 JHM, url userFunction 으로변경 -->
														<a
															href="https://www.osulloc.com/kr/ko/shop/item/bakery/21646"><img
															srcset="https://image.osulloc.com/upload/kr/ko/adminImage/XK/CR/20240229100150980BC.webp"
															src="https://image.osulloc.com/upload/kr/ko/adminImage/XK/CR/20240229100150980BC.jpg"
															alt=""></a>
													</div>

												</div>
											</div>
										</div></li>
									<li class="item_dep1 no-child"><a
										href="https://osulloc.biz/" class="link_text" target="_blank">단체
											및 기업 구매</a></li>
								</ul>
							</nav>
						</div>
						<div class="right_box">

							<form style="display: none;" id="headerSearchForm"
								action="/kr/ko/shop/search/main/product" method="get"
								onsubmit="setSearchToSession()">
								<input type="text" name="isSet" value="N"> <input
									type="text" name="q" id="header_search_Submit"> <input
									type="text" name="p" value="0"> <input type="text"
									name="size" value="24"> <input type="text" name="sort"
									value="ranked"> <input type="text" name="reviewType"
									value=""> <input type="text" name="searchType"
									id="inputSearchTypeSubmit" value="product"> <input
									type="text" name="tagSearchType" id="header_tagSearchType">
							</form>
							<ul class="nav_util">
								<li class="item">
									<div class="inpSrchWrap">
										<input type="text" placeholder="검색어를 입력해주세요."
											id="header_search_pc" class="header-search-list"
											onkeyup="keyupSearchInput(event,'search_itag_pc')"> <i
											onclick="srchLayerPcOpen(this); srchLayerMoOpen(this);"
											id="search_itag_pc"></i>
									</div>
								</li>
								<li class="item"><a
									class="nav_util_icon icon_cart nav_cart nav_menu filled"
									href="https://www.osulloc.com/kr/ko/shop/cart"
									id="x-gnb-cart-m" data-track-name="Header 장바구니"
									data-gnb-role="cart"><span class="num">1</span></a></li>
								<li class="item item_icon_more"><a
									class="nav_util_icon icon_more" id="btn_nav"></a>
									<ul class="drop_box drop_box1">
										<li class="drop_item"><a
											href="${pageContext.request.contextPath}/notice"
											data-track-name="Header 고객센터">고객센터</a></li>
										<li class="drop_item"><a
											href="${pageContext.request.contextPath}/store"
											data-track-name="Header 매장찾기">매장정보</a></li>
										<li class="drop_item"><a
											href="${pageContext.request.contextPath}/map"
											data-track-name="Header 매장찾기">매장찾기</a></li>
										<li class="drop_item"><a
											href="https://www.osulloc.com/kr/ko/mypage"
											data-track-name="Header 주문배송조회">주문배송조회</a></li>
										<li class="drop_item"><a
											href="${pageContext.request.contextPath}/reservationCheck"
											data-track-name="Header 예약조회">예약조회</a></li>

									</ul></li>
								<li class="item item_icon_mo_nav"><a
									class="nav_util_icon icon_mo_nav" href="#"></a></li>
							</ul>
							<ul class="nav_drop">


								<li class="item"><a
									href="https://www.osulloc.com/kr/ko/mypage"
									data-track-name="Header 마이페이지">마이페이지</a>
									<ul class="drop_box drop_box3">
										<li class="drop_item"><a
											href="https://www.osulloc.com/kr/ko/mypage"
											data-track-name="Header 마이페이지">마이페이지</a></li>
										<li class="drop_item"><a
											href="https://www.osulloc.com/kr/ko/login/logout"
											id="login-checker" data-track-name="Header 로그아웃">로그아웃</a></li>
									</ul></li>

								<li class="item arr">KOREAN <span class="icon_drop_arr"></span>
									<ul class="drop_box drop_box4">
										<li class="drop_item"><a href="/kr/ko"
											data-track-name="GNB Osulloc | Korea/Korean">한국어</a></li>
										<li class="drop_item"><a href="https://us.osulloc.com"
											data-track-name="GNB Osulloc | Korea/English">English</a></li>
										<li class="drop_item"><a
											href="https://www.osulloc.com/kr/zh"
											data-track-name="GNB Osulloc | Korea/Chinese">中文</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="header_dim_bg" style="display: none;"></div>
			</header>
			<div class="pcHeaderBannerArea">
				<div class="searchArea">
					<div class="searchInnerArea">
						<span class="srchbtnClose" onclick="srchLayerPcClose();"
							id="search_close_pc"></span>
						<div class="chartBox">
							<div class="chartList">
								<div class="tit">
									<p>인기 검색어</p>
									<em class="searchDateDiv"> 24. 07. 01 기준 </em>
								</div>
								<ul class="popular_list">
								</ul>
							</div>
							<div class="chartList chartNewList auto_complete">
								<div class="tit">
									<p>최근 검색어</p>
									<em class="searchDateDiv"> 24. 07. 01 기준 </em>
								</div>
								<ul class="new_list"></ul>
								<p class="logDel">
									<a href="javascript:deleteRecentSearches();"> <i></i><span>검색
											기록 삭제</span>
									</a>
								</p>
							</div>
							<div class="bannerBox" id="bannerBoxPc"></div>
							<div class="chartAuto"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="moHeaderBannerArea" style="display: none;">
				<div class="searchArea">
					<div class="searchInnerArea">
						<div class="searchBox">
							<div class="inpWrap">
								<input type="text" placeholder="검색어를 입력해주세요."
									id="header_search_mo" class="header-search-list"
									onkeyup="keyupSearchInput(event, 'search_itag_mo')"> <i
									onclick="beforeSearchSubmit(this)" id="search_itag_mo"></i>
							</div>
							<span class="srchClose" onclick="srchLayerMoClose();"
								id="search_close_mo"></span>
						</div>
						<div class="listBox">
							<div class="chartBox">
								<div class="tab not_auto_complete">
									<span class="tabLinks active" onclick="openTab(event, 'tab01')">인기
										검색어</span> <span class="tabLinks" onclick="openTab(event, 'tab02')">최근
										검색어</span>
								</div>
								<div class="chartList not_auto_complete">
									<div id="tab01" class="tabCnt" style="display: block;">
										<ul class="popular_list"></ul>
										<p class="log date searchDateDiv">24. 07. 01 기준</p>
									</div>
									<div id="tab02" class="tabCnt" style="display: none;">
										<ul class="new_list"></ul>
										<p class="log logDel">
											<a href="javascript:deleteRecentSearches();"> <i></i><span>검색
													기록 삭제</span>
											</a>
										</p>
									</div>
								</div>
								<div class="chartAuto"></div>
							</div>

						</div>
						<div class="bannerBox" id="bannerBoxMo"></div>
					</div>
				</div>
			</div>
			<div class="dim_bg"></div>

			<!-- 모바일 NAV : S  -->
			<aside class="cdj_mo_nav">
				<!-- 모바일 메뉴 헤터 : S -->
				<div class="mo_nav_header in">

					<!-- 로그인 후 : S -->
					<div class="logOn_top_box">
						<a href="https://www.osulloc.com/kr/ko/mypage"
							style="display: flex; align-items: center;"> <span
							class="mypage_btn"> <img
								srcset="https://image.osulloc.com/kr/ko/static_cdj/images/main/icon_my.webp"
								src="https://image.osulloc.com/kr/ko/static_cdj/images/main/icon_my.png"
								alt="마이페이지 바로가기">
						</span>
							<p class="name">
								<em class="pt">김국민</em>님
							</p> <!-- 등급에 따라 다르게 표시 -->
							<div class="grade_tag">

								<span class="tag_item grade_welcome">Welcome</span>



							</div>
						</a>
						<div class="barcodeBtn"></div>


					</div>
					<!-- 로그인 후 : E -->


					<button class="mo_nav_close" type="button" title="닫기">
						<img
							srcset="https://image.osulloc.com/kr/ko/static_cdj/images/main/icon_mo_nav_close.webp"
							src="https://image.osulloc.com/kr/ko/static_cdj/images/main/icon_mo_nav_close.png"
							alt="닫기">
					</button>
				</div>
				<!-- 모바일 메뉴 헤터 : E -->

				<div class="mo_nav_body">
					<!-- 유틸 영역 : S -->
					<div class="mo_nav_util in">



						<!-- 로그인 후 : S -->
						<div class="logOn_box">
							<div class="top">
								<div class="item">
									<a href="https://www.osulloc.com/kr/ko/mypage/order/normal"
										data-track-name="Header 주문배송조회">주문배송 <span class="count">0</span></a>
								</div>
								<div class="item">
									<a href="https://www.osulloc.com/kr/ko/shop/cart"
										data-track-name="Header 장바구니">장바구니 <span class="count">1</span></a>
								</div>
								<div class="item">
									<a href="https://www.osulloc.com/kr/ko/mypage/wishlist/list">찜한상품</a>
								</div>
							</div>
							<div class="bottom">
								<div class="item i_coupon">
									사용 가능 쿠폰 <a class=""
										href="https://www.osulloc.com/kr/ko/mypage/coupon/available/mypage">
										<span class="num">2</span> <span class="unit">장</span>
									</a>
								</div>
								<div class="item i_point">
									뷰티포인트 <a href="https://www.osulloc.com/kr/ko/beautypoint/list">
										<span class="num">1,500</span> <span class="unit">P</span>
									</a>
								</div>
							</div>

							<div class="subscribe">

								<div class="item">
									<a
										href="https://www.osulloc.com/kr/ko/mypage/subs/list?standingOrderType=A">정기배송
										<strong>0 건</strong>
									</a>
								</div>
							</div>


						</div>
						<!-- 로그인 후 : E -->


					</div>
					<!-- 유틸 영역 : E -->

					<!-- 모바일 네비게이션 : S -->
					<div class="mo_nav">
						<ul class="mo_nav_list_dep1">
							<li class="item_dep1"><a
								href="https://www.osulloc.com/kr/ko/shop/item/list"
								class="link_text">제품</a>
								<ul class="mo_nav_list_dep2">
									<li class="item_dep2"><a
										href="https://www.osulloc.com/kr/ko/shop/item/list/best/sale"
										class="link_text">베스트</a></li>
									<li class="item_dep2"><a
										href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop"
										data-track-name="GNB 오설록|Tea Shop|전체상품" class="link_text">티
											제품</a></li>
									<li class="item_dep2"><a
										href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery"
										data-track-name="GNB 오설록|Tea Shop|Tea Food" class="link_text">티푸드</a></li>
									<li class="item_dep2"><a
										href="https://www.osulloc.com/kr/ko/shop/teawareshop"
										class="link_text">티웨어</a></li>
									<li class="item_dep2"><a
										href="https://www.osulloc.com/kr/ko/shop/item/list?category=themashop"
										class="link_text">라이프 스타일</a></li>

									<li class="item_dep2"><a
										href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=228"
										class='link_text'>정기배송</a></li>
								</ul></li>
							<!--gnb 프로모션-->

							<!--//gnb 프로모션-->
							<li class="item_dep1"><a
								href="https://www.osulloc.com/kr/ko/shop/item/gift"
								class="link_text no_fold">선물추천</a></li>

							<li class="item_dep1"><a
								href="https://www.osulloc.com/kr/ko/brandstory"
								class="link_text">브랜드</a>
								<ul class="mo_nav_list_dep2">
									<li class="item_dep2"><a
										href="https://www.osulloc.com/kr/ko/brandstory"
										data-track-name="GNB 오설록|About Osulloc|Since 1979"
										class="link_text">오설록 스토리</a></li>

									<li class="item_dep2"><a
										href="/kr/ko/store-introduction/2" class="link_text">제주
											티뮤지엄</a></li>
									<li class="item_dep2"><a href="/kr/ko/store-introduction"
										class="link_text">매장 소개 및 예약</a></li>



								</ul></li>
							<li class="item_dep1"><a href="https://osulloc.biz/"
								class="link_text no_fold" target="_blank">단체 및 기업 구매</a></li>
						</ul>
					</div>
					<!-- 모바일 네비게이션 : E -->

					<!-- 모바일 메뉴 배너 : S -->


					<div class="mo_nav_banner in">
						<a href="https://www.osulloc.com/kr/ko/shop/item/bakery/21646">
							<!-- 2022-12-29 JHM, url userFunction 으로변경 --> <img
							srcset="https://image.osulloc.com/upload/kr/ko/adminImage/AI/MP/20240229100155225ZA.webp"
							src="https://image.osulloc.com/upload/kr/ko/adminImage/AI/MP/20240229100155225ZA.jpg"
							alt="">
						</a>
					</div>

					<!-- 모바일 메뉴 배너 : E -->

					<!-- 하단 링크 영역 : S -->
					<div class="mo_nav_link in">
						<div class="item">
							<a href="https://www.osulloc.com/kr/ko/store-introduction">매장찾기</a>
						</div>
						<div class="item">
							<a href="https://www.osulloc.com/kr/ko/cs/notice">공지사항</a>
						</div>
						<div class="item">
							<a href="https://www.osulloc.com/kr/ko/cs">고객센터</a>
						</div>


						<div class="item">
							<a href="https://www.osulloc.com/kr/ko/beautypoint/list"
								data-track-name="Header 뷰티포인트추후적립">뷰티포인트 추후 적립</a>
						</div>



					</div>
					<!-- 하단 링크 영역 : E -->

					<!-- 로그아웃 버튼 - 로그인시 노출 : S -->

					<div class="mo_nav_logout">
						<button type="button" title="로그아웃" class="logOut_btn"
							onclick="location.href='https://www.osulloc.com/kr/ko/login/logout'"
							data-track-name="Header 로그아웃">로그아웃</button>
					</div>
					<!-- 로그아웃 버튼 - 로그인시 노출 : E -->

				</div>
			</aside>
			<div class="popBarcode">
				<div class="popBarcodeClose"></div>
				<div class="barcodeWrapper">
					<div class="barcodeThumb">
						<svg id="barcode"></svg>
						<!-- svg width="444px" id="barcode" height="100px" x="0px" y="0px" viewBox="0 0 444 100" xmlns="http://www.w3.org/2000/svg" version="1.1" style="transform: translate(0,0)"><rect x="0" y="0" width="444" height="100" style="fill:#ffffff;"></rect><g transform="translate(0, 0)" style="fill:#000000;"><rect x="0" y="0" width="4" height="100"></rect><rect x="6" y="0" width="2" height="100"></rect><rect x="12" y="0" width="6" height="100"></rect><rect x="22" y="0" width="4" height="100"></rect><rect x="28" y="0" width="6" height="100"></rect><rect x="40" y="0" width="2" height="100"></rect><rect x="44" y="0" width="2" height="100"></rect><rect x="52" y="0" width="8" height="100"></rect><rect x="62" y="0" width="2" height="100"></rect><rect x="66" y="0" width="6" height="100"></rect><rect x="74" y="0" width="2" height="100"></rect><rect x="78" y="0" width="8" height="100"></rect><rect x="88" y="0" width="4" height="100"></rect><rect x="94" y="0" width="4" height="100"></rect><rect x="102" y="0" width="4" height="100"></rect><rect x="110" y="0" width="2" height="100"></rect><rect x="114" y="0" width="6" height="100"></rect><rect x="122" y="0" width="8" height="100"></rect><rect x="132" y="0" width="2" height="100"></rect><rect x="136" y="0" width="6" height="100"></rect><rect x="146" y="0" width="4" height="100"></rect><rect x="154" y="0" width="2" height="100"></rect><rect x="160" y="0" width="4" height="100"></rect><rect x="168" y="0" width="6" height="100"></rect><rect x="176" y="0" width="6" height="100"></rect><rect x="184" y="0" width="2" height="100"></rect><rect x="188" y="0" width="8" height="100"></rect><rect x="198" y="0" width="4" height="100"></rect><rect x="204" y="0" width="4" height="100"></rect><rect x="212" y="0" width="4" height="100"></rect><rect x="220" y="0" width="2" height="100"></rect><rect x="224" y="0" width="6" height="100"></rect><rect x="232" y="0" width="8" height="100"></rect><rect x="242" y="0" width="2" height="100"></rect><rect x="246" y="0" width="4" height="100"></rect><rect x="258" y="0" width="2" height="100"></rect><rect x="264" y="0" width="2" height="100"></rect><rect x="270" y="0" width="2" height="100"></rect><rect x="276" y="0" width="8" height="100"></rect><rect x="286" y="0" width="6" height="100"></rect><rect x="294" y="0" width="2" height="100"></rect><rect x="298" y="0" width="8" height="100"></rect><rect x="308" y="0" width="4" height="100"></rect><rect x="314" y="0" width="4" height="100"></rect><rect x="322" y="0" width="4" height="100"></rect><rect x="330" y="0" width="2" height="100"></rect><rect x="334" y="0" width="6" height="100"></rect><rect x="342" y="0" width="8" height="100"></rect><rect x="352" y="0" width="6" height="100"></rect><rect x="360" y="0" width="4" height="100"></rect><rect x="366" y="0" width="2" height="100"></rect><rect x="374" y="0" width="6" height="100"></rect><rect x="382" y="0" width="2" height="100"></rect><rect x="386" y="0" width="4" height="100"></rect><rect x="396" y="0" width="2" height="100"></rect><rect x="404" y="0" width="2" height="100"></rect><rect x="410" y="0" width="4" height="100"></rect><rect x="418" y="0" width="4" height="100"></rect><rect x="428" y="0" width="6" height="100"></rect><rect x="436" y="0" width="2" height="100"></rect><rect x="440" y="0" width="4" height="100"></rect></g></svg-->
					</div>
					<div class="barcodeNum" id="barcodeTxt"></div>
				</div>
			</div>
			<script type="text/javascript"
				src="https://image.osulloc.com/kr/ko/static_cdj/js/barcode.js"></script>
			<script>
        // 바코드 클릭시 
        $(".barcodeBtn").on('click',function(e){
            jQuery.ajax({
                url:"/kr/ko/misc/app/getBarcodeImage",
                type:"POST",
                success:function(data){
                    if(data.success == 'Y'){
                       JsBarcode("#barcode", data.incsCardNoEc);
                       $("#barcodeTxt").text(data.incsCardNoEc); 
                       $(".popBarcode").css("display", "flex");
                    }else{
                       alert(data.msg);
                    }
                },
                error:function(xhr,status){
                    console.log(xhr, status);
                }
            });
        });
        $(".popBarcodeClose").on("click", () => {
            $(".popBarcode").css("display", "none");
        });
    </script>
			<!-- 모바일 NAV : E  -->

		</div>




		<script>


    // mobile - tab
    function openTab(evt, tabName) {
        var i, tabCnt, tabLinks;
        tabCnt = document.getElementsByClassName("tabCnt");
        for (i = 0; i < tabCnt.length; i++) {
            tabCnt[i].style.display = "none";
        }
        tabLinks = document.getElementsByClassName("tabLinks");
        for (i = 0; i < tabLinks.length; i++) {
            tabLinks[i].className = tabLinks[i].className.replace(" active", "");
        }
        document.getElementById(tabName).style.display = "block";
        evt.currentTarget.className += " active";
    }



    // PC
    var inpSrchWrap = document.querySelector('.inpSrchWrap'),
    searchArea = document.querySelector('.pcHeaderBannerArea .searchArea'),
    srchbtnClose = document.querySelector('.pcHeaderBannerArea .srchbtnClose'),
    dim_bg = document.querySelector('.dim_bg');

    function srchLayerPcOpen(itag){

    	var searchDivOn = searchArea.classList.value.includes('show');

    	if(searchDivOn){

    		beforeSearchSubmit(itag);

    	}else{

			if(!$('.new_list').children().length){
				showRecentSearches();
			}
			if(!$('.popular_list').children().length){
				showPopularSearches();
			}
			if(!$('.bannerBox').children().length){
				showSearchBanners();
			}



			var bnrHid = $('.main_top_banner').css('display') ==='none';
			var isMain = $('main.main').hasClass('main_contents');
     		$('.header_dim_bg').css('display','block')
    	    inpSrchWrap.classList.add('show');
            searchArea.classList.add('show');
			if(bnrHid){searchArea.classList.remove('hasBanner');}
            dim_bg.style.display = "block";
			setSwiperSearchBanners();
			window.scrollTo(0,0);
			$("html, body").addClass("layer_opened");    //210215 수정
			if(isMain){$('#cdj_header').addClass('scroll');}
    	}

    }

    function srchLayerPcClose(){
    	var $main = $('main.main');

        $('.header_dim_bg').css('display','none')
    	inpSrchWrap.classList.remove('show');
        searchArea.classList.remove('show');
        moHeaderBannerArea.style.display ="none";
        dim_bg.style.display = "none";
		$('#header_search_pc').val('')
		$('#header_search_mo').val('')
		$('#header_search_Submit').val('');
		removeAutoComplete();
		$("html, body").removeClass("layer_opened");    //210215 수정
    }

    // MO
    var moHeaderBannerArea = document.querySelector('.moHeaderBannerArea'),
    srchClose = document.querySelector('.srchClose');

    function srchLayerMoOpen(){

        moHeaderBannerArea.style.display ="block";
        dim_bg.style.display = "block";
		setSwiperSearchBanners();
    }

    function srchLayerMoClose(){
    	 $('.header_dim_bg').css('display','none')
        inpSrchWrap.classList.remove('show');
        searchArea.classList.remove('show');
        moHeaderBannerArea.style.display ="none";
        dim_bg.style.display = "none";
		$('#header_search_pc').val('')
		$('#header_search_mo').val('')
		$('#header_search_Submit').val('');
		removeAutoComplete();
		$("html, body").removeClass("layer_opened");    //210215 수정
    }

	//서치인풋에 커서 올라가면 동작
	function keyupSearchInput (e, itag){
		if(e.keyCode === 13 || e.key === 'Enter'){beforeSearchSubmit($('#'+itag))}//enter시 검색태우기
		setTimeout(()=>{showAutoComplete(e)},100)//keyup시 연관검색어 보여주기

	}

	//인기검색어, 최근검색어, 자동완성 클릭시 서치보내기
	function setHeaderSearchKeyword(strong){

		var {text, tagSearchType} = strong.dataset;
		$('#header_search_mo').val(text);
		$('#header_search_pc').val(text);
		$('#header_search_Submit').val(text);
		$('#header_tagSearchType').val(tagSearchType);
		beforeSearchSubmit();

	}

	//서치 보내기 전에 체크, 세팅
    function beforeSearchSubmit(itag){

		if(itag){
			var userInput = $(itag).prev().val();
			if(!userInput){ alert('검색어를 입력해주세요'); return;}
			$('#header_search_Submit').val(XSSCheck(userInput));
		}
		setRecentSearches();
		$('#headerSearchForm').submit();

    }

	//서치 보내기 전에 검색한거 session에 넣어줌
	function setSearchToSession(){
		var searchData = $('#headerSearchForm').serialize();
		document.cookie = "curSearchData=?"+searchData+";path=/;";
	}

	//최근검색어 가져오기
    function getRecentWords(){
    	var localItem =  localStorage.getItem('acSearchWords');
    	var acWords = !localItem || localItem=="null" ? []: JSON.parse(localItem);
    	return acWords;
    }

    //최근검색어 넣어주기
    function setRecentSearches() {
    	var {parse, stringify} = JSON;
        var curSearchWord = $("#header_search_Submit").val();
        var toDateJson = new Date().toJSON().split('T')[0];

		var acWords = getRecentWords().filter(x=>x[0] !== curSearchWord).slice(0,9);

		acWords.unshift( [ curSearchWord, toDateJson ] );

		localStorage.setItem('acSearchWords',stringify(acWords));
    }


    //최근검색어 삭제
    function deleteRecentSearches(btn){

		if( btn == null ){ //전체삭제일때만 confirm물어봄
			var delYn = confirm("최근 검색어를 모두 삭제하시겠습니까?");
			if(!delYn) {return false;}//삭제 안할거라고하면
		}

    	var delId = $(btn).parents('.rank').index();
        var acWords = getRecentWords().filter((x,i)=>i!==delId);

    	if( btn == null || !acWords.length ){//최근검색어 클리어
    		localStorage.clear();
    		 $(".new_list").html("<li class='no_result'>최근 검색어가 없습니다.</li>");
    	}else{
            localStorage.setItem('acSearchWords',JSON.stringify(acWords));
			$('.new_list').each((i,e)=>$(e).children().eq(delId).remove());
    	}
    	return false;
    }

    // 최근검색어 보여주기
    function showRecentSearches() {

		$('.new_list').empty();
        var acWords = getRecentWords();

		if(!acWords.length) {
			// $('.new_list').each((i,e)=>$(e).html("<li class='no_result'>최근 검색어가 없습니다.</li>"));
			 $(".new_list").html("<li class='no_result'>최근 검색어가 없습니다.</li>");
        }

        for( var [word, date] of acWords ){

        	var viewDate = date.split('-').slice(-2).join('.');
			var li = $('<li>').addClass('rank');
			var p = $('<p>');
			var strong = $('<strong onclick="setHeaderSearchKeyword(this)" data-tag-search-type="latest" data-text="'+word+'" style="cursor: pointer;">')
					.text(word).appendTo(p);
			var span = $('<span>');
			var em = $('<em>').text(viewDate);
			var i = $('<i onclick="deleteRecentSearches(this)" style="cursor: pointer;">').addClass('rankState flagDel');

			span.append(em, i);
			li.append(p, span);
			// $('.new_list').each((i,e)=>$(e).append(li));
			$('.new_list').append(li);
        }

    }

    //인기검색어 보여주기
    async function showPopularSearches(){
    	if($('.popular_list').children().length > 0){return;}

    	let response;
		try {
			response = await fetch('/kr/ko/shop/search/getPopList',{mode: 'no-cors'});
		} catch (e) {
			await new Promise(resolve => setTimeout(resolve, 300));
			await showPopularSearches();
			// response = await fetch('/kr/ko/shop/search/getPopList',{mode: 'no-cors'});
		}

		if(!response.ok){$(".popular_list").empty(); return;}

    	const res = await response.text();
		const data = JSON.parse(res);
		$(".popular_list").empty();
    	JSON.parse(data.popularList).data.content[0].rank_info.slice(0,10).forEach(pop=>{
    		var li = $('<li>').addClass("rank");
    		var p = $("<p>");
    		var b = $("<b>").text(pop.rank);
    		var strong = $('<strong onclick="setHeaderSearchKeyword(this)" data-tag-search-type="favorite" data-text="'+pop.keyword+'" style="cursor: pointer;">').text(pop.keyword);
    		var i = $("<i>", {class: "rankState"});
			var rankTitle = "";
    		switch(pop.status) {
				case "NEW": rankTitle = "flagNew";break;
				case "UP": rankTitle = "flegUp";break;
				case "DOWN": rankTitle = "flagDown";break;
				default:rankTitle = "flagstatus";break;
    		}

    		i.addClass(rankTitle);

    		p.append(b, strong);
    		li.append(p, i);
			// $('.popular_list').each((i,e)=>$(e).append(li));
    		$(".popular_list").append(li);
    	})

    }
    //서치 배너 보여주기
	const header_banner_swiper = [];
    function showSearchBanners(){

		fetch('/kr/ko/shop/search/getBanner/pc',{mode: 'no-cors'})
			.then(response =>response.text())
			.then(html =>$('.pcHeaderBannerArea .bannerBox').html(html))
				.then(e=>setSwiperSearchBannerPc());

		fetch('/kr/ko/shop/search/getBanner/mo',{mode: 'no-cors'})
				.then(response => response.text())
				.then(html => $('.moHeaderBannerArea .bannerBox').html(html))
				.then(e=>setSwiperSearchBannerMo())

    }
	//서치 배너 스와이퍼 세팅
	function setSwiperSearchBanners(){
		setSwiperSearchBannerPc();
		setSwiperSearchBannerMo();

	}

	//서치 배너 스와이퍼 세팅
	function setSwiperSearchBannerPc(){



		header_banner_swiper['pc'] = new Swiper("#bannerBoxPc .swiperBanner", {
			slidesPerView: 1,
			observer: true,
			observeParents: true,
			observeSlideChildren: true,
			loop: true,
			loopedSlides: 1,
			touchRatio: 0.5,
			autoplay: {
				delay: 3000,
			},
			direction: 'horizontal',
			pagination: {
				el: $('#bannerBoxPc').find(".swiper-pagination"),
				clickable: true,
				observer: true,	// 추가
				observeParents: true,	// 추가
				observeSlideChildren: true,
			},
			on:{
				//pc만 페이지네이션 안먹어서 추가
				touchEnd:(e)=>{
					const tSwiper = header_banner_swiper.pc;
					if(tSwiper){
						const bullets = tSwiper.pagination.bullets;
						const bIdx = $('#bannerBoxPc .swiper-pagination-bullet-active').index();
						const idx = Array.from(tSwiper.slides).filter(e=>$(e).hasClass('swiper-slide-active'))[0].dataset.swiperSlideIndex;
						if(bIdx != idx){
							$('#bannerBoxPc .swiper-pagination-bullet-active').removeClass('swiper-pagination-bullet-active');
							$(bullets[idx]).addClass('swiper-pagination-bullet-active');
						}
					}
				}

			}

		});


	}

	function setSwiperSearchBannerMo(){
		header_banner_swiper['mo'] = new Swiper("#bannerBoxMo .swiperBanner", {
			slidesPerView: 1,
			observer: true,
			observeParents: true,
			observeSlideChildren: true,
			loop: true,
			loopedSlides: 1,
			touchRatio: 0.5,
			autoplay: {
				delay: 3000,
			},
			// allowTouchMove: true,
			direction: 'horizontal',
			pagination: {
				el: $('#bannerBoxMo').find(".swiper-pagination"),
				clickable: false,
				observer: true,	// 추가
				observeParents: true,	// 추가
				observeSlideChildren: true,

			},
		});



	}


	//자동완성 없애기
	function removeAutoComplete(){
		$(".chartAuto").empty();
		$('.chartBox').removeClass('attrAdd');
		$('.moHeaderBannerArea').find('.tab').css('display','flex')
		$('.moHeaderBannerArea').find('.chartList').css('display','block')
    }
	//자동완성 보여주기
    async function showAutoComplete(e){
		let searchText = XSSCheck(e.target.value);
    	if( !searchText.length ){
    		removeAutoComplete();
    		return;
    	}
		/*{
			mode: 'no-cors',
					credentials: 'include' // 여기를 추가
		}*/

		let response;
		try {
			response = await fetch('/kr/ko/shop/search/autoComplete?q='+encodeURI(searchText), {mode: 'no-cors'});
		} catch (e) {
			await new Promise(resolve => setTimeout(resolve, 100));
			await showAutoComplete(e)
			// response = await fetch('/kr/ko/shop/search/autoComplete?q='+encodeURI(searchText), {mode: 'no-cors'});
		}
		const res = await response.text();

		const result = JSON.parse(res);

    	if(result?.message !== 'SUCCESS'|| !result?.data.content.length ){
    		removeAutoComplete();
    		 return;
    	}
    	const ul = $("<ul>")

		for (const word of result?.data?.content) {
			const targetText = word.keyword;

			const indexOfMatch = targetText.toLowerCase().indexOf(searchText.toLowerCase());
			const match = targetText.slice(indexOfMatch, indexOfMatch + searchText.length);

			const highlightedText = indexOfMatch === -1 ? targetText
								: targetText.replace(match, '<span style="color:#74a767">' + match + '</span>') ;

			const li = $('<li onclick="setHeaderSearchKeyword(this)" data-text="'
					+ word.keyword + '" style="cursor: pointer;">')
					.html(highlightedText).appendTo(ul);
		}

    	$(".chartAuto").html(ul)
    	$('.chartBox').addClass('attrAdd');
    	$('.moHeaderBannerArea').find('.not_auto_complete').css('display','none')

    }

	//자동완성 마우스오버시 색변경
	function mouseoverAutoComplete(event){

		var{type,currentTarget} = event;
		if(currentTarget.children.length>0){

			switch (type) {
				case 'mouseenter' : currentTarget.children[0].style.color='#668904'; break;
				case 'mouseout'	  : currentTarget.children[0].style.color='#74a767'; break;
			}

		}
	}

    $(function() {
		//배너,인기검색,최근검색세팅
    	showSearchBanners();
    	showPopularSearches();
        showRecentSearches();
		/*setSwiperSearchBanners()*/;

		// console.log('%c🐳  를 탐색합니다.','background: #33691e; color: #fff; padding: 5px 10px; border-radius: 3px;','teststs');



    });




</script>

		<script type="text/javascript">
    let visi = 0;
    let banner = false;
    function bookchonPop() {
        $(".bookchonPop").addClass("on");
    }

    $(".bookchonPopClose").on("click", function () {
        $(".bookchonPop").removeClass("on");
    });

    function gnbPoint() {
        $(".gnbPoint").addClass("on");
        setTimeout(closePointGnb, 10000);
    }

    function closePointGnb() {
        $(".gnbPoint").removeClass("on");
    }

    function lnbPoint(e) {
        $(".lnbPoint").addClass("on");
        setTimeout(closePointLnb, 10000);
    }

    function closePointLnb() {
        $(".lnbPoint").removeClass("on");
    }

    function lnbPointClick() {
        if (visi == 0) {
            lnbPoint();
        }
        visi++;
    }

    function pointup() {
        $(".lnb_pointBanner").addClass("on");
    }

    function pointupClick(e) {
        let height = $(".pointup img").height();
        if (e.target == e.currentTarget) {
            if (banner == false) {
                $(".pointup").height(height);
            } else {
                $(".pointup").height(0);
            }
            banner = !banner;
        }
    }

    function rollingBanner() {
        var bannerHeight = "-" + $(".banner2").height() + "px";
        var ul = $(".rolling1");
        var li = $(".rolling1 li");

        ul.animate({
            top: "0"
        }, {
            complete: function () {
                var clone = li.eq(1).clone();
                ul.append(clone);
                li.eq(0).remove();
                ul.css("top", bannerHeight);
            }
        });
    }

    function bannerShow() {
        var bannerHeight = "-" + $(".banner2").height() + "px";
        $(".banner1").hide();
        $(".banner2").show();

        var clone2 = $(".rolling1 li").eq(1).clone();
        $(".rolling1").prepend(clone2);
        $(".rolling1").css("top", bannerHeight);
        setInterval(rollingBanner, 3000);
    }

 	window.onload = function() {
	  // 로그인 안되었을때
	  if('true' == 'false'){
		var chkCid = "455953289.1719363470";
        var cid = ga.getAll()[0].get('clientId');
        var gcid = ga.getAll()[0].get('_gid');
		let chkEnv = "PRD";
	    let sid;

		if ("PRD" === chkEnv) {
			sid = getCookie('_ga_46DFPHV30H');
		} else {
			sid = getCookie('_ga_45NSDYPFD1');
		}

        // cid 값이 null 일때 세션에 cid, gcid 값 셋팅
	  	if(chkCid.length == 4){
			$.ajax({
				type : "POST",
				url : "/kr/ko/login/makeCid",
				cache : false,
				data : "cid="+cid+"&gcid="+gcid+"&sid="+sid,
				dataType : "json",
				success : function(data) {
					if(data.flag){
						console.log("cid 생성 성공");
						return false;
					}else{
						console.log("cid 생성 실패");
						return false;
					}
				}
			});

	  	}

	  }

  	}
	function getCookie(name) {
		var cName = name + "=";
		var x = 0;
		while ( x <= document.cookie.length )
		{
			var y = (x+cName.length);
			if ( document.cookie.substring( x, y ) == cName )
			{
				if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
					endOfCookie = document.cookie.length;
				return unescape( document.cookie.substring( y, endOfCookie ) );
			}
			x = document.cookie.indexOf( " ", x ) + 1;
			if ( x == 0 )
				break;
		}
		return "";
	}

    $(document).ready(function () {
        var userAgent = navigator.userAgent.toLowerCase();
        var isAndroid = userAgent.indexOf('osulloc_android');
        var isIos = userAgent.indexOf('osulloc_ios');

        if (isIos != -1) {
            $(".btn-toggleBarcode").show();
        } else if (isAndroid != -1) {
            $(".btn-toggleBarcode").show();
        } else {
            $(".btn-toggleBarcode").hide();
        }
    });


    var acIsMobile = "";


    //XSSCheck
    function XSSCheck(str) {
        str = str.replace(/\<|\>|\"|\'|\%|\;|\&|\-/g, "");
        return str;
    }
</script>




		<!-- @render() { } = 해당 페이지 html 내용 들어갈곳 -->
		<!-- CDJ 개선 마이페이지 공지사항 리스트 : S -->
		<main class="main cdj_renew">
			<!-- 타이틀 : S -->
			<section class="section page_tit_box mypageT">
				<div class="w1200">
					<h2 class="page_tit">공지사항</h2>
				</div>
			</section>
			<!-- 타이틀 : E -->

			<!-- 탭 영역 : S -->
			<div class="my_tab">
				<div class="my_tab_inner">
					<ul class="my_tab_list tab3">
						<!-- 활성된 페이지 .item에 on 클래스 추가 -->
						<li class="item on"><a href="/kr/ko/cs/notice/news"
							class="link_text">공지사항</a></li>
						<li class="item "><a href="/kr/ko/cs/notice/event"
							class="link_text">이벤트 발표</a></li>
						<li class="item "><a href="/kr/ko/cs/notice/announce"
							class="link_text">전자 공고</a></li>
					</ul>
				</div>
			</div>
			<!-- 탭 영역 : E -->

			<style>
.cdj_renew .my_cs_notice .notice_search .search .box01 button {
	position: absolute;
	top: 50%;
	right: 12px;
	transform: translateY(-50%);
	width: 24px;
	height: 24px;
	background:
		url(https://image.osulloc.com/kr/ko/static_cdj/images/mypage/icon_search.png)
		no-repeat center/15px 17px;
	text-indent: -9999em;
}

.cdj_renew .my_cs_notice .notice_search .search .box01::after {
	display: none;
}
</style>
			<!-- 컨텐츠 : S -->
			<div class="my_cs_notice">
				<section class="section">
					<div class="w1200">
						<div class="notice_search">
							<div class="inner_box">
								<form id="searchForm" name="searchForm"
									action="/kr/ko/cs/notice/news" onsubmit="return false;">
									<input type="hidden" id="keyword" name="keyword" value="news">
									<div class="search">
										<div class="box01">
											<input type="text" id="notice-search" name="q"
												class="inp_text" placeholder="텍스트를 입력해주세요" value="">
											<button type="button" class="button moBlock btnSearch"
												title="검색" onclick="">검색</button>
										</div>
										<div class="box02">
											<button type="button" class="button pcBlock btnSearch"
												title="검색">검색</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</section>

				<section class="section">
					<div class="w1200">
						<div class="notice_list_table">
							<div class="table_header pcBlock">
								<ul class="list">
									<li class="item">번호</li>
									<li class="item">제목</li>
									<li class="item">등록일</li>
								</ul>
							</div>
							<!-- 한 페이지 당 10개씩 노출 -->
							<div class="table_con">
								<ul class="list">
									<c:forEach items="${list}" var="dto">
										<li class="item">
											<p class="num pcBlock">${dto.notice_index}</p>
											<p class="subject">
												<a class="link_text" href="/kr/ko/cs/notice/news/6319?">
													<span class="new">NEW</span><a
													href="noticeDetail?notice_index=${dto.notice_index}">${dto.notice_title}</a>
												</a>
											</p>
											<p class="date">${dto.input_time}</p>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<!-- pagination : S -->


				<div id="pagination" class="newPagination for-mobile ">


					<span class="btn btn-home is-disabled">페이지 처음으로</span> <span
						class="btn btn-prev is-disabled">이전 페이지</span> <a
						href="/kr/ko/cs/notice/news?q=" class="num on"
						data-track-name="1 페이지 이동">1</a> <a
						href="/kr/ko/cs/notice/news?q=&p=1" class="num "
						data-track-name="2 페이지 이동">2</a> <a
						href="/kr/ko/cs/notice/news?q=&p=2" class="num "
						data-track-name="3 페이지 이동">3</a> <a
						href="/kr/ko/cs/notice/news?q=&p=3" class="num "
						data-track-name="4 페이지 이동">4</a> <a
						href="/kr/ko/cs/notice/news?q=&p=4" class="num "
						data-track-name="5 페이지 이동">5</a> <a
						href="/kr/ko/cs/notice/news?q=&p=5" class="btn btn-next"
						data-track-name="뒷 페이지 그룸 이동">다음 페이지</a> <a
						href="/kr/ko/cs/notice/news?q=&p=14" class="btn btn-end "
						data-track-name="맨 뒷 페이지 이동"> 페이지 끝으로 </a>




				</div>

				<!-- pagination : E -->

				<div class="button-style">
					<a href="noticeWriteForm">글작성</a>
				</div>

			</div>
			<!-- 컨텐츠 : E -->

		</main>
		<!-- CDJ 개선 마이페이지 공지사항 리스트 : E -->


		<!-- footer -->




		<!--new_footer-->
		<div id="new_footer">
			<!--PC-->
			<div class="wrap1 m_pd15 hide_tablet hide_mobile">
				<div class="inner1600 clearfix">
					<div class="right">


						<a href="https://www.osulloc.com/kr/ko/login/logout"
							class="footer_login" data-track-name="Footer 로그아웃">로그아웃</a> <a
							href="https://www.tiktok.com/@osulloc_official" target="_blank"
							class="btn-share--circle" style="z-index: 10000;"
							data-track-name="Footer 오설록 틱톡"> <img
							class="hide_tablet hide_mobile"
							src="https://image.osulloc.com/kr/ko/static_cdj/images/sns/sns_t.png"
							alt="틱톡">
						</a> <a
							href="https://www.youtube.com/channel/UC27q_WWuOkdyNIr7M_6trvA"
							target="_blank" class="btn-share--circle" style="z-index: 10000;"
							data-track-name="Footer 오설록 유튜브"> <img
							class="hide_tablet hide_mobile"
							src="https://image.osulloc.com/kr/ko/static_cdj/images/sns/sns_y.png"
							alt="유튜브">
						</a> <a href="https://www.instagram.com/osulloc_official/"
							target="_blank" class="btn-share--circle" style="z-index: 10000;"
							data-track-name="Footer 오설록 인스타그램"> <img
							class="hide_tablet hide_mobile"
							src="https://image.osulloc.com/kr/ko/static_renew/images/sns_i.png"
							alt="인스타그램"> <img class="hide_pc"
							src="https://image.osulloc.com/kr/ko/static_renew/images/sns_i_m.png"
							alt="인스타그램">
						</a>
					</div>

				</div>
			</div>
			<div class="wrap2 hide_tablet hide_mobile">
				<div class="inner1600 clearfix">
					<div class="left1">
						<div class="tit">고객상담센터 &middot; 주문/배송문의</div>
						<div>
							<a href="mailto:help@osulloc.com"
								style="font-weight: 500; color: #595959; font-size: 18px;">help@osulloc.com</a>
						</div>
						<div class="phone" style="margin-top: 1px; line-height: 1;">080-805-5555</div>
						<div class="time">평일 09:30 - 17:00 (점심 11:30 - 13:00)</div>
					</div>
					<div class="left2">
						<div class="tit">특판, 대량구매 문의</div>
						<div class="phone">
							<a href="mailto:mall@osulloc.com"
								style="font-weight: 700; color: #595959; text-decoration: underline;"
								data-track-name="Footer 이메일 문의">mall@osulloc.com</a><span></span>
						</div>
						<div class="mail" style="line-height: 1;">
							<span
								style="font-family: 'Noto_M,sans-serif'; font-weight: 700; font-size: 13px; color: #797979;">
								<!--010-2515-1979 / -->카카오톡ID : osullocmall
							</span>
							<p style="margin-top: 10px;">
								<span>평일 09:30 - 17:00 (점심 11:30 - 13:00)</span>
							</p>
						</div>
					</div>
					<div class="right">
						<a href="https://www.osulloc.com/kr/ko/store-introduction"
							data-track-name="Footer 매장안내"> <img
							src="https://image.osulloc.com/kr/ko/static_renew/images/f1.png"
							alt="매장안내"> <span>매장안내</span>
						</a> <a href="https://www.osulloc.com/kr/ko/cs/member/benefit"
							data-track-name="Footer 멤버십혜택"> <img
							src="https://image.osulloc.com/kr/ko/static_renew/images/f2.png"
							alt="멤버십혜택"> <span>멤버십혜택</span>
						</a> <a href="https://www.osulloc.com/kr/ko/cs/faq"
							data-track-name="Footer FAQ" class="footerFAQ"> <img
							src="https://image.osulloc.com/kr/ko/static_renew/images/f3.png"
							alt="FAQ"> <span>FAQ</span>
						</a> <a href="https://osulloc.biz/"
							data-track-name="Footer 단체 및 기업 구매" class="footerBulk"
							target="_blank"> <img
							src="https://image.osulloc.com/kr/ko/static_renew/images/f5.png"
							alt="단체 및 기업 구매"> <span>단체 및 <br>기업 구매
						</span>
						</a> <a href="https://www.osulloc.com/kr/ko/mypage/qna"
							data-track-name="Footer 1:1문의"> <img
							src="https://image.osulloc.com/kr/ko/static_renew/images/f4.png"
							alt="1:1문의"> <span>1:1문의</span>
						</a> <a href="https://www.osulloc.com/kr/ko/beautypoint/list"
							data-track-name="Footer 뷰티포인트"> <img
							src="https://image.osulloc.com/kr/ko/static_renew/images/beauti.png"
							alt="뷰티포인트"> <span>뷰티포인트<br>추후적립
						</span>
						</a>
					</div>
				</div>
			</div>
			<div class="wrap3 hide_tablet hide_mobile">
				<div class="inner1600 clearfix">
					<div class="logo logo_footer">
						<a href="https://www.osulloc.com/kr/ko/mypage/qna"
							data-track-name="Footer 1:1문의"><img
							src="https://image.osulloc.com/kr/ko/static_renew/images/logo_f.png"
							width="112" height="158" alt="1:1문의"></a>
					</div>
					<div class="left">
						<div class="cont1">
							<ul>
								<li><a href="https://www.apgroup.com/int/ko"
									data-track-name="Footer 회사소개">회사소개</a></li>
								<li><a href="https://www.osulloc.com/kr/ko/misc/terms"
									data-track-name="Footer 서비스 이용약관">서비스 이용약관</a></li>


								<li><a href="https://www.osulloc.com/kr/ko/misc/procedures"
									data-track-name="Footer 영상정보 처리방침">영상정보 처리방침</a></li>
								<li><a
									href="https://www.amoremall.com/kr/ko/beautypoint/app/guide/main.do"
									data-track-name="Footer 뷰티포인트">뷰티포인트</a></li>
								<li><a
									href="https://www.osulloc.com/kr/ko/mypage/coupon/available/AP"
									data-track-name="Footer 임직원할인">임직원할인</a></li>
								<li><a href="https://www.osulloc.com/kr/ko/misc/sitemap"
									data-track-name="Footer 사이트맵">사이트맵</a></li>
								<li><a
									href="https://www.osulloc.com/kr/ko/cs/notice/announce"
									data-track-name="Footer 전자공고">전자공고</a></li>
							</ul>
						</div>
						<div class="cont2">
							<div class="address">
								㈜ 오설록<br>대표이사:서혁제 주소:서울특별시 용산구 한강대로 100 (한강로2가) 사업자등록번호:
								390-87-01499 <a class="info"
									href="https://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=3908701499"
									data-track-name="Footer_M 사업자 정보확인">사업자 정보확인 ></a> <br>통신판매업신고번호:2019-서울용산-1173호
								호스팅제공자: ㈜오설록 <br> <br> (주)오설록은 오설록 브랜드를 제외한 입점 브랜드에
								대해서는 통신판매중개자 이며 통신판매의 당사자가 아닙니다. <br>따라서 입점판매자가 등록한 상품정보 및
								거래에 대해 책임을 지지 않습니다.
							</div>
							<!-- <a class="info" href="https://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=3908701499" data-track-name="Footer_M 사업자 정보확인"  >사업자 정보확인 ></a> -->
						</div>

					</div>
					<div class="right">
						<div class="box clearfix">
							<div class="tit">NHN KCP 구매안전(에스크로)서비스</div>
							<div class="note">고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에 가입한 NHN
								KCP의 구매안전서비스를 이용하실 수 있습니다.</div>
							<img
								src="https://image.osulloc.com/kr/ko/static_cdj/images/etc/bannerEscrow.png"
								alt="에스크로 가입사실확인" class="escrow_img">
							<!--<img src='https://image.inicis.com/mkt/certmark/escrow/escrow_43x43_gray.png' border="0" alt="클릭하시면 이니시스 결제시스템의 유효성을 확인하실 수 있습니다." onclick="javascript:window.open('https://mark.inicis.com/mark/escrow_popup.php?mid=osulloc101','mark','scrollbars=no,resizable=no,width=565,height=683');" class="escrow_img">-->
							<!-- <a href="https://mark.inicis.com/mark/escrow_popup.php?no=68749&st=1414743448" data-track-name="Footer_M 이니시스 서비스 가입 확인"  >서비스 가입사실 확인</a> -->
						</div>
					</div>
				</div>
			</div>
			<!--//PC-->
			<script>
    $(function(){
      const datesetting = new Date();
      const dateyear = datesetting.getFullYear();
      const datemonth = ('0' + (datesetting.getMonth() + 1)).slice(-2);
      const dateday = ('0' + datesetting.getDate()).slice(-2);
      const datetoday = parseInt(dateyear + datemonth + dateday);
  
      if (datetoday < 20230501) {
        $(".footerFAQ").show();
        $(".footerBulk").hide();
      } else {
        $(".footerFAQ").hide();
        $(".footerBulk").show();
      }

      $(".escrow_img").on("click", function(){
        const windowStatus = "width=500, height=450, menubar=no,scrollbars=no,resizable=no,status=no";
        window.open('http://admin.kcp.co.kr/Modules/escrow/kcp_pop.jsp?site_cd=IP1WY', 'kcp_pop', windowStatus);
      });
    });
  </script>

			<!--모바일 m_footer-->
			<div class="m_footer hide_pc">

				<div class="func">
					<a href="https://www.osulloc.com/kr/ko/cs" class="contactUs"
						data-track-name="Footer_M 고객센터">고객센터</a> <a
						href="https://www.osulloc.com/kr/ko/login/logout" class="signIn"
						data-track-name="Footer_M 로그아웃">로그아웃</a>



					<div class="lang js_select">
						<div class="tit menu">한국어</div>
						<ul>
							<li><a class="name" href="/kr/ko">한국어</a></li>
							<li><a class="name" href="https://us.osulloc.com">English</a></li>
							<li><a class="name" href="/kr/zh">中文</a></li>
						</ul>
					</div>
				</div>
				<div class="certificationInfo">
					<a href="javascript:;"> <span>오설록 사업자 정보확인</span>
					</a>
					<div class="txt_wrap">
						<p>
							㈜ 오설록 <br> 대표이사 : 서혁제 <br>주소 : 서울 특별시 용산구 한강대로 100
							(한강로2가) <br>사업자 등록번호 : 390-87-01499 <br>통신판매업신고번호 :
							2019-서울용산-1173호 <br>호스팅제공자 : ㈜오설록
						</p>
						<p>
							(주)오설록은 오설록 브랜드를 제외한 입점 브랜드에 대해서는 통신판매중개자 이며 통신판매의 당사자가 아닙니다. <br>따라서
							입점판매자가 등록한 상품정보 및 거래에 대해 책임을 지지 않습니다.
						</p>
						<p>
							NHN KCP 구매안전(에스크로)서비스 <br> 고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에
							가입한 NHN KCP의 구매안전서비스를 이용하실 수 있습니다.
						</p>
					</div>
				</div>
				<div class="footer_menu">
					<div class="footer_menu_list">
						<a href="https://www.apgroup.com/int/ko"
							data-track-name="Footer 회사소개">회사소개</a> <a
							href="https://www.osulloc.com/kr/ko/misc/terms"
							data-track-name="Footer 서비스 이용약관">서비스 이용약관</a> <a
							href="https://www.osulloc.com/kr/ko/misc/statement"
							data-track-name="Footer 개인정보 처리방침"><b>개인정보 처리방침</b></a> <br>
						<a href="https://www.osulloc.com/kr/ko/misc/procedures"
							data-track-name="Footer 영상정보 처리방침">영상정보 처리방침</a> <a
							href="https://www.amoremall.com/kr/ko/beautypoint/app/guide/main.do"
							data-track-name="Footer 뷰티포인트">뷰티포인트</a> <a
							href="https://www.osulloc.com/kr/ko/mypage/coupon/available/AP"
							data-track-name="Footer 임직원할인">임직원할인</a> <a
							href="https://www.osulloc.com/kr/ko/misc/sitemap"
							data-track-name="Footer 사이트맵">사이트맵</a> <a
							href="https://www.osulloc.com/kr/ko/cs/notice/announce"
							data-track-name="Footer 전자공고">전자공고</a>
					</div>
				</div>
				<!-- 19.12.05 모바일 고객상담센터  추가 -->
				<div class="footbottom">
					<div class="footer_cs_m clearfix">
						<div class="custCenter_Wrap cs_01">
							<div class="tit">고객상담센터 &middot; 주문/배송문의</div>
							<div
								style="font-size: 15px; font-weight: 500; height: 15px; color: #595959; line-height: 1;">help@osulloc.com</div>
							<div class="phone">080-805-5555</div>
							<div class="time">
								평일 09:30 - 17:00 <br>(점심 11:30 - 13:00)
							</div>
						</div>
						<div class="custCenter_Wrap cs_02">
							<!--200728 추가-->
							<div class="tit">특판, 대량구매 문의</div>
							<div class="phone">mall@osulloc.com</div>
							<div class="kakaotalk">카카오톡ID : osullocmall</div>
							<div class="time">
								평일 09:30 - 17:00 <br>(점심 11:30 - 13:00)
							</div>
						</div>
					</div>
					<div class="snsWrap clearfix">


						<a href="https://www.tiktok.com/@osulloc_official" target="_blank"
							class="ic ic-tiktok" data-track-name="Footer_M 오설록 틱톡">tiktok</a>
						<a href="https://www.youtube.com/channel/UC27q_WWuOkdyNIr7M_6trvA"
							target="_blank" class="ic ic-youtube"
							data-track-name="Footer_M 오설록 유튜브">youtube</a> <a
							href="https://www.instagram.com/osulloc_official/"
							target="_blank" class="ic ic-insta"
							data-track-name="Footer_M 오설록 인스타그램">instagram</a>

					</div>
				</div>
			</div>
			<!--//모바일 m_footer-->
		</div>
		<!--//#new_footer-->

		<!-- CDJ 기본 레이어팝업 typeA : S -->
		<div class="layer_popup_wrap cdj_renew basic" id="layer_alert"
			style="display: none;">
			<div class="layer_box_new">
				<div class="text_box"></div>
				<div class="btn_typeA btn_pop">
					<button type="button" id="btn_alert_ok" class="btn_w100 ptBtn"
						onclick="">확인</button>
				</div>
			</div>
		</div>
		<!-- CDJ 기본 레이어팝업 typeA : E -->

		<!-- CDJ 기본 레이어팝업 typeB : S -->
		<div class="layer_popup_wrap cdj_renew basic" id="layer_confirm"
			style="display: none;">
			<div class="layer_box_new">
				<div class="text_box"></div>
				<div class="btn_typeB btn_pop">
					<button type="button" id="btn_confirm_cancel" class="btn_w50"
						onclick="">취소</button>
					<button type="button" id="btn_confirm_ok" class="btn_w50 ptBtn"
						onclick="">확인</button>
				</div>
			</div>
		</div>
		<!-- CDJ 기본 레이어팝업 typeB : E -->
		<!-- CDJ 로딩 : S -->
		<div class="loading_wrap" style="display: none;">
			<div class="loading_inner">
				<img class="loading_gif"
					src="https://image.osulloc.com/kr/ko/static_cdj/images/etc/loading.gif"
					alt="로딩이미지">
			</div>
		</div>
		<script>
	/* 로딩 호출 함수 */
	function loadingOn() {
		$('.loading_wrap').fadeIn();
	}
	/* 로딩 제거 함수 */
	function loadingOff() {
		$('.loading_wrap').fadeOut();
	}
</script>
		<!-- CDJ 로딩 : E -->

	</div>

	<!-- sidenav -->
	<div id="match-media"></div>
	<div id="igm-blocker"></div>

	<!-- @render(last) { } = @section(last){} 내용  -->
	<script type="text/javascript">
	
	$(function(){
		$('#notice-search').keyup(function(event) {
			event = event || window.event;
		    var keyID = (event.which) ? event.which : event.keyCode;
			if(keyID == 13){
				fnSearch();
			}
		});
		
		$('.btnSearch').click(function(){
			fnSearch();
		});
		
		//검색
		function fnSearch(){
			$.ajax({
				type : "POST",
	 			url : "/kr/ko/cs/notice/search/count",
	 			cache : false,
	 			data : 'q='+encodeURIComponent($('#notice-search').val())+'&keyword='+$('#keyword').val(),
	 			async : false,
	 			success : function(data) {
	 				if(data.totalCount > 0){
		 				document.searchForm.submit();
	 				}else{
	 					fnLayerAlert('검색하신 내용을 찾을 수</br>없습니다.', function(){});
	 				}
	 			},
	 			error : function(xhr, status, error) {
	 				alert('status:'+status+'|error:'+error);
	 			}
			});
		}
	});
	

</script>



	<script type="text/javascript">
        $( function(){
            $('.x-valid-q').submit( function(){
                var q = $(this).find('input[name="q"]').val();
                if ( q == undefined|| q == null || q ===  ""){
                    alert("검색어를 입력해주세요.");
                    return false;
                }else{
              		return true;
                }
            });
        });
    </script>


</body>
</html>