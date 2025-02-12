<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<meta charset="UTF-8">
<title>장바구니</title>
<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css'
	rel='stylesheet' />
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script>
<script>
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                dateClick: function(info) {
                    document.getElementById('datepicker').value = info.dateStr;
                }
            });
            calendar.render();
        });
    </script>

<style>
body {
	font-family: Arial, sans-serif;
	font-size: 18px; /* 글씨 크기를 증가시킵니다 */
}

.container {
	width: 90%; /* 컨테이너 크기를 조금 더 넓게 합니다 */
	margin: 0 auto;
}

.header, .footer {
	background-color: #f8f8f8;
	padding: 20px;
	text-align: center;
}

.cart {
	width: 100%;
	margin: 20px 0;
}

.cart th, .cart td {
	padding: 15px; /* 셀 내부 패딩을 증가시킵니다 */
	border: 1px solid #ddd;
	text-align: center;
	font-size: 20px; /* 글씨 크기를 증가시킵니다 */
}

.cart th {
	background-color: #f2f2f2;
}

.cart img {
	max-width: 150px; /* 이미지 최대 너비를 증가시킵니다 */
	height: auto;
}

.cart-total {
	text-align: right;
	padding: 10px;
	font-size: 22px; /* 합계 부분의 글씨 크기를 증가시킵니다 */
}

.btn {
	background-color: #6C801A;
	color: #fff;
	padding: 12px 24px; /* 버튼 크기를 증가시킵니다 */
	border: none;
	cursor: pointer;
	text-align: center;
	display: inline-block;
	font-size: 18px; /* 버튼 글씨 크기를 증가시킵니다 */
}

.product-list-btn {
	text-decoration: none;
	padding: 8px 16px; /* 버튼 크기를 증가시킵니다 */
	font-size: 18px; /* 버튼 글씨 크기를 증가시킵니다 */
}
</style>

<meta charset="UTF-8">
<title>홈화면</title>
<head>
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
<title>전체상품 | 오설록</title>

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

<script type="text/javascript" async=""
	src="https://avd.innity.net/lib/dc.js"></script>
<script type="text/javascript" async=""
	src="https://avd.innity.net/750/container_5ed4ce0147e7045404000000.js"></script>
<script async="" defer=""
	src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-WTX6V4CQJN&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-J7WQK8LYCD&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-46DFPHV30H&amp;l=dataLayer&amp;cx=c"></script>
<script
	src="https://connect.facebook.net/signals/config/494913268302940?v=2.9.159&amp;r=stable&amp;domain=www.osulloc.com&amp;hme=446fb981c8c3baeb03730fe3cbd404f7f15f64c693f24c7fe75da498bc2c95d8&amp;ex_m=67%2C113%2C100%2C104%2C58%2C3%2C93%2C66%2C15%2C91%2C84%2C49%2C51%2C160%2C163%2C174%2C170%2C171%2C173%2C28%2C94%2C50%2C73%2C172%2C155%2C158%2C167%2C168%2C175%2C122%2C39%2C33%2C134%2C14%2C48%2C180%2C179%2C124%2C17%2C38%2C1%2C41%2C62%2C63%2C64%2C68%2C88%2C16%2C13%2C90%2C87%2C86%2C101%2C103%2C37%2C102%2C29%2C25%2C156%2C159%2C131%2C27%2C10%2C11%2C12%2C5%2C6%2C24%2C21%2C22%2C54%2C59%2C61%2C71%2C95%2C26%2C72%2C8%2C7%2C76%2C46%2C20%2C97%2C96%2C98%2C9%2C19%2C18%2C81%2C53%2C79%2C32%2C70%2C0%2C89%2C31%2C78%2C83%2C45%2C44%2C82%2C36%2C4%2C85%2C77%2C42%2C34%2C80%2C2%2C35%2C60%2C40%2C99%2C43%2C75%2C65%2C105%2C57%2C56%2C30%2C92%2C55%2C52%2C47%2C74%2C69%2C23%2C106"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-5BL3CZ7&amp;l=dataLayer"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-5Q4PDFQ&amp;l=dataLayer"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-KW8MKLBZ"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-5JSBJN9"></script>
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
<style></style>
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
	/* 
		


	 */
	
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



<script type="text/javascript">
	 /*  window._rblqueue = window._rblqueue || [];
	  
	  var realBool = false;
	  var mobionId = "";
	  var tmpHostname =  window.location.hostname;
	  if(tmpHostname.indexOf("osulloc.com") > -1 && tmpHostname.indexOf("dev") == -1){//운영 도메인 일 시
	  	realBool = true;
	  }
	  if(realBool){//운영
		  _rblqueue.push(['setVar','cuid','2f854096-46eb-476c-87b1-044b200d3d26']);  
		  mobionId = "osulloc";
	  }else{//개발
		  _rblqueue.push(['setVar','cuid','2f854096-46eb-476c-87b1-044b200d3d27']);
		  mobionId = "osullocDev";
	  }
	  
	  
			
			
				_rblqueue.push(['setVar','device','PW']);
			
	  	
	  
	  _rblqueue.push(['track','visit']);	
	  setTimeout(function() {
	    (function(s,x){s=document.createElement('script');s.type='text/javascript';
	    s.async=true;s.defer=true;s.src=(('https:'==document.location.protocol)?'https':'http')+
	    '://assets.recobell.io/rblc/js/rblc-apne1.min.js';
	    x=document.getElementsByTagName('script')[0];x.parentNode.insertBefore(s, x);})();
	  }, 0); */
	</script>

<!-- Enliple Common Tracker v3.5 [공용] start -->
<!-- 		<script type="text/javascript">
			function mobRf(){
		        require(['Utils','punycode','EN'], function (Utils, punycode, EN) {
		            try {
		                var rf = new EN(Utils, punycode);
		                if(document.location.protocol == 'https:') {
		                    rf.setSSL(true);
		                }
		                rf.setData("userid", mobionId);
		                rf.sendRf();
		            } catch(e){}
		        });	
		    }
		try{
			require.config({  
			    paths: {
					'Utils': 'https://log.mediacategory.com/mediaCategory/js/en_script/3.7/enliple_min3.7_amd',
					'punycode': 'https://log.mediacategory.com/mediaCategory/js/en_script/3.7/enliple_min3.7_amd',
					'EN': 'https://log.mediacategory.com/mediaCategory/js/en_script/3.7/enliple_min3.7_amd'
			    },
			    shim: {
			            'Utils': { 
			                exports:function() {
			                    var u = new Utils();
			                return u;
			                        }
			                },
			                'punycode': { 
			                    exports:function() {
			                        return punycode;
			                        } 
			                },
			                'EN': { 
			                    deps: ['Utils', 'punycode'],
			                        exports: 'EN' 
			                }
			        }
			    });
					mobRf();
			    } catch (e){	  
			    	mobRf();
			    }


		</script> -->
<!-- Enliple Common Tracker v3.5 [공용] end -->

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

<!-- 2023026 제주, 북촌 예약프로그램 오픈 true일때 -->

<!-- 20230712 1979 예약프로그램 오픈 true일때 -->




<script>
	/**
	 * 카트에 상품 담기 실패시 실행함수 (공통)
	 * @param {boolean} isFn - 펑션 alert/confirm 쓸지여부(false:내장 alert/confirm사용)
	 * @param {String} message - 성공했을경우 해당 콜백함수 실행(실패함수 공통 )
	 * @param {function} fnAlert - alert시 실행함수
	 * @return {void} 반환값없음
	 */
	const fnInsertCartMessage = (isFn,message="장바구니 담기에 실패했습니다. 다시 시도해주세요.",fnAlert)=>{

		let { origin,pathname } = location;
		const loginUrl = '/kr/ko/login?r='+origin+pathname;
		const isLoginGo = message.includes("로그인 하시겠습니까?");

		//내장함수 사용시 줄바꾸기 바꿔줌
		if(!isFn){message = message.replaceAll("</br>","\n")}

		//로그인 화면 갈 거 아니면 기존 로직대로 alert
		if(!isLoginGo){
			if(isFn) {fnLayerAlert(message,fnAlert);}
			else{alert(message);};

			return false;
		}



		//수량제한추가: 수량제한상품 + 로그인 안된상태면 confirm띄워야함.
		//로그인 화면으로 이동해야할경우 confirm;
		if(isFn)fnLayerConfirm(message,(res)=>{if(res)location.href=loginUrl})
		else{if(confirm(message))location.href=loginUrl};

		return false;
	}

	//선물하기 함수
	const fnInsertCartPresentMessage = (data)=>{

		let { origin,pathname } = location;
		const loginUrl = '/kr/ko/login?r='+origin+pathname;
		const isLoginGo = data.message.includes("로그인 하시겠습니까?");

		if(isLoginGo) {
			fnLayerConfirm(data.message, (res) => {
				if (res) location.href = '/kr/ko/login?r=' + loginUrl;
			});
		}else{
			fnLayerAlert(data.message, function(){
				location.href='/kr/ko/login?r=' + loginUrl;
			});
		}

		return false;
	}





	/**
	 * 카트에 상품 추가 공통 함수
	 * @param {JSON} param - ajax param
	 * @param {boolean} isFn - 펑션 alert/confirm 쓸지여부(false:내장 alert/confirm사용)
	 * @param {function} callback - 성공했을경우 해당 콜백함수 실행(실패함수 공통 )
	 * @param {function} failCallBack - 실패했을경우 해당 콜백함수 실행 (이 함수에 값을 넣을 경우 공통 함수 안태우고 이 함수 태움)
	 * @return {void} 반환값없음
	 */
	const fnAddCartCommon = (param,isFn,callback, failCallBack) => {
		$.ajax(param).done((data)=>{
			//실패 했을 때 로직 공통으로 변경
			if(!data.success){
				console.info(data);
				//실패했을때 커스텀함수 쓰고싶으면 여기에
				if(failCallBack)failCallBack(data);
				//아니면 공통함수 태움
				else{fnInsertCartMessage(isFn,data.message,()=>{});}
				return false;
			}
			//성공한 경우 각자 화면에서 콜백함수 실행
			callback(data);
		});
	};





</script>

<!-- 네이버 연관채널 설정 -->
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="$"
	src="https://image.osulloc.com/kr/ko/static/js/lib/jquery-1.11.2.min.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="SmoothScroll"
	src="https://image.osulloc.com/kr/ko/static/js/lib/SmoothScroll.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="_"
	src="https://image.osulloc.com/kr/ko/static/js/lib/underscore-min.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="TweenMax"
	src="https://image.osulloc.com/kr/ko/static/js/lib/TweenMax.min.js?ver=230704"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/645486124/?random=1719799514939&amp;cv=11&amp;fst=1719799514939&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be46q0v9173972193za200&amp;gcd=13l3l3l3l1&amp;dma=0&amp;tag_exp=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.osulloc.com%2Fkr%2Fko%2Fshop%2Fitem%2Flist&amp;ref=https%3A%2F%2Fwww.osulloc.com%2Fkr%2Fko&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%A0%84%EC%B2%B4%EC%83%81%ED%92%88%20%7C%20%EC%98%A4%EC%84%A4%EB%A1%9D&amp;npa=0&amp;pscdl=noapi&amp;auid=1024826354.1719211052&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%252FA)Brand%3B8.0.0.0%7CChromium%3B126.0.6478.127%7CGoogle%2520Chrome%3B126.0.6478.127&amp;uamb=0&amp;uam=&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;fledge=1&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="slick"
	src="https://image.osulloc.com/kr/ko/static/js/lib/slick.min.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="gsap"
	src="https://image.osulloc.com/kr/ko/static/js/lib/jquery.gsap.min.js?ver=230704"></script>
<script type="text/javascript" charset="UTF-8" defer=""
	src="https://kn.acrosspf.com/adn_check_1.0.2.ad?rb_adn_uid=rb-adn-1-28c50218934857c1b07a31ae33ca0186"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="utils"
	src="https://image.osulloc.com/kr/ko/static/js/utils.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="ui"
	src="https://image.osulloc.com/kr/ko/static/js/ui.js?ver=230704"></script>
<meta http-equiv="origin-trial"
	content="AwnOWg2dzaxHPelVjqOT/Y02cSxnG2FkjXO7DlX9VZF0eyD0In8IIJ9fbDFZGXvxNvn6HaF51qFHycDGLOkj1AUAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY5NTE2Nzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="utils/fontSpy"
	src="https://image.osulloc.com/kr/ko/static/js/utils/fontSpy.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="utils/nav"
	src="https://image.osulloc.com/kr/ko/static/js/utils/nav.js?ver=230704"></script>
</head>
</head>

<body>
<body class="is_hover">
	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://www.osulloc.com/kr/ko"> <a
		itemprop="sameAs" href="https://brand.naver.com/osulloc"></a> <a
		itemprop="sameAs" href="https://www.instagram.com/osulloc_official/"></a>
		<a itemprop="sameAs"
		href="https://www.youtube.com/channel/UC27q_WWuOkdyNIr7M_6trvA"></a>
	</span>

	<script type="text/javascript">

</script>

	<script type="text/javascript">
	<!-- 20180828 GA 태깅 체크박스 로직-->
   
/*     function chk_GA_Event_Name(Header, index, Label, id) {
        
       
        if(Header == "pack/") {	//제품 제형
        	
        	
      		
        }
     
       
    } */
    
	</script>

	<style>
/*TeaShopMain 호출 오류 로 style  추가  */
.new_main .cont7 {
	margin-top: 130px;
}

.new_main .cont7 h3 {
	
}

.new_main .cont7 .m_pd15 {
	margin-bottom: 28px;
}

.new_main .cont7 .subtit {
	font-size: 18px;
	color: #6c6c6c;
	margin-top: 20px;
}

.new_main .cont7 .subtit em {
	color: #6c801a;
}

.new_main .cont7 .teaShopSlider {
	position: relative;
	width: 100%;
	z-index: 2;
}

.new_main .cont7 .teaShopSlider .wrapper {
	overflow: hidden;
	background: #000000;
}

.new_main .cont7 .teaShopSlider .swiper-wrapper {
	align-items: stretch;
}

.new_main .cont7 .teaShopSlider .swiper-slide {
	display: block;
	position: relative;
	overflow: hidden;
	width: 66.216%;
}

.new_main .cont7 .teaShopSlider .swiper-slide img {
	display: block;
}

.new_main .cont7 .teaShopSlider .swiper-slide .t1 {
	position: absolute;
	bottom: 95px;
	right: 30px;
	color: #ffffff;
	font-size: 40px;
	font-family: 'AritaBuriSB';
}

.new_main .cont7 .teaShopSlider .swiper-slide .t2 {
	position: absolute;
	bottom: 30px;
	right: 30px;
	color: #ffffff;
	font-size: 18px;
	text-align: right;
	font-family: 'notokr-regular';
}

.teaShopSlider .swiper-slide .link {
	position: absolute;
	bottom: 10px;
	right: 30px;
	padding: 0 48px 0 0;
	color: #ffffff;
	font-size: 18px;
	font-weight: normal;
	text-align: right;
	font-family: 'notokr-regular';
	text-decoration: none;
	border: 0;
}

.new_main .cont7 .teaShopSlider .swiper-slide .t1, .new_main .cont7 .teaShopSlider .swiper-slide .t2,
	.new_main .cont7 .teaShopSlider  .swiper-slide .link {
	opacity: 0;
	transition: ease 1200ms;
}

.new_main .cont7 .teaShopSlider .swiper-slide.swiper-slide-active .t1,
	.new_main .cont7 .teaShopSlider .swiper-slide.swiper-slide-active .t2 {
	opacity: 1;
	transition-delay: 500ms;
	transform: translateY(-20px);
	z-index: 4;
}

.new_main .cont7 .teaShopSlider .swiper-button-prev {
	position: absolute;
	margin: 0 !important;
	top: auto !important;
	bottom: -60px !important;
	left: 50px !important;
	width: 30px;
	height: 30px;
	background:
		url(https://image.osulloc.com/kr/ko/static_renew/images/arr_teashop.png)
		0 0 no-repeat;
	z-index: 40;
	opacity: 0.6;
}

.new_main .cont7 .teaShopSlider .swiper-button-next {
	position: absolute;
	margin: 0 !important;
	top: auto !important;
	bottom: -60px;
	right: 50px !important;
	width: 30px !important;
	height: 30px;
	background:
		url(https://image.osulloc.com/kr/ko/static_renew/images/arr_teashop.png)
		0 -30px no-repeat;
	z-index: 40;
	opacity: 0.6;
}

.new_main .cont7 .teaShopSlider .swiper-button-prev:hover, .new_main .cont7 .teaShopSlider .swiper-button-next:hover
	{
	opacity: 1;
}

.new_main .cont7 .teaShopSlider .slide-dimmed {
	position: absolute;
	top: 0;
	width: 16.86%;
	height: 100%;
	content: ' ';
	background: rgba(0, 0, 0, 0.5);
	z-index: 10;
}

.new_main .cont7 .teaShopSlider .slide-dimmed.l {
	left: 0;
}

.new_main .cont7 .teaShopSlider .slide-dimmed.r {
	right: 0;
}

.new_main .cont7 .teaShopSlider .gradation {
	display: block;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 264px;
	background:
		url('https://image.osulloc.com/kr/ko/static_renew/images/mask.png') 0
		0 repeat-x;
	z-index: 3;
}

.teashopThumnails {
	position: relative;
	padding: 0 150px;
	width: 100%;
	height: 90px;
	background: #000000;
	z-index: 1;
}

.teashopThumnails .wrapper {
	overflow: hidden;
	padding-top: 30px;
}

.teashopThumnails .swiper-wrapper {
	
}

.teashopThumnails .swiper-wrapper .swiper-slide {
	margin: 0;
	width: auto;
	color: #969696;
	font-size: 20px;
	text-align: center;
}

.teashopThumnails .swiper-wrapper .swiper-slide.swiper-slide-thumb-active
	{
	color: #ffffff;
}
</style>

	<iframe id="x-sso-check" name="sso_check_iframe"
		title="SSO Session Check Iframe" hidden=""></iframe>

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
	var AP_DATA_GCID = dataUndefinedChk('null');
	var AP_DATA_CID  = dataUndefinedChk('null');
	var AP_DATA_ISMEMBER = '';
	var AP_DATA_ISLOGIN = 'N';
	var AP_DATA_LOGINTYPE = '';
	var AP_DATA_CA = '';
	var AP_DATA_CD = '';
	var AP_DATA_CG = dataUndefinedChk('null');
	var AP_DATA_CT = dataUndefinedChk('null');
	var AP_DATA_SITENAME = 'OSULLOC';
	var AP_DATA_CHANNEL = 'PC';
	var AP_DATA_PAGETYPE = 'PRODUCT_LIST';
	var AP_DATA_COUNTRY = 'KR';
	var AP_DATA_LANG = 'KO';
	var AP_PROMO_ID = dataUndefinedChk('null');
	var AP_PROMO_NAME = dataUndefinedChk('null');
	var AP_DATA_BEAUTYCT = dataUndefinedChk('null');
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
	<!-- leo tagging 공통 변수 선언 끝 -->



	<!-- //옴니플랫폼 적용으로 인한 주석 2021.08.31 조용현
<form name="ssoForm" action="/kr/ko/login/ssoLogin" method="GET">
	
		
		
			<input type="hidden" name="isLogin" value="false">
		
		
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


	<!-- header -->














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
        var loginAmr = 'null';
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
		<header id="cdj_header" class="cdj_header fixed sub_header">
			<div class="wrapper">
				<div class="inner_box">
					<div class="left_box">
						<h1 class="logo">
							<a href="home" class="logo_white"><img
								srcset="https://image.osulloc.com/kr/ko/static_cdj/images/main/logo_white.webp"
								src="https://image.osulloc.com/kr/ko/static_cdj/images/main/logo_white.png"
								alt="오설록 로고"></a> <a href="home" class="logo_black"><img
								srcset="https://image.osulloc.com/kr/ko/static_cdj/images/main/logo_black.webp"
								src="https://image.osulloc.com/kr/ko/static_cdj/images/main/logo_black.png"
								alt="오설록 로고"></a>
						</h1>
						<nav class="nav">
							<ul class="nav_list_dep1">
								<li class="item_dep1"><a
									href="https://www.osulloc.com/kr/ko/shop/item/list"
									class="link_text">제품</a>
									<div class="nav_list_dep2_box">
										<div class="wrapper">
											<div class="flex_box">
												<ul class="nav_list_dep2">
													<li class="item_dep2"><a
														href="https://www.osulloc.com/kr/ko/shop/item/list/best/sale"
														class="link_text">베스트</a>
														<ul class="nav_list_dep3">
															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list/best/sale"
																class="link_text">위클리 베스트</a></li>
															<!-- 관리자 지정 메뉴 -->

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list/best/recommand"
																class="link_text">베스트</a></li>

														</ul></li>
													<li class="item_dep2"><a
														href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop"
														class="link_text">티 제품</a>
														<ul class="nav_list_dep3">

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=198"
																class="link_text"
																data-track-name="GNB 오설록|Tea Shop|티 세트">티 세트</a></li>

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=201"
																class="link_text" data-track-name="GNB 오설록|Tea Shop|명차">명차</a></li>

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=197"
																class="link_text"
																data-track-name="GNB 오설록|Tea Shop|녹차/말차">녹차/말차</a></li>

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=249"
																class="link_text"
																data-track-name="GNB 오설록|Tea Shop|발효차/홍차">발효차/홍차</a></li>

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=196"
																class="link_text"
																data-track-name="GNB 오설록|Tea Shop|블렌디드티">블렌디드티</a></li>
															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=195"
																class="link_text" data-track-name="GNB 오설록|Tea Shop|허브티">허브티</a></li>
															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=250"
																class="link_text"
																data-track-name="GNB 오설록|Tea Shop|밀크티/아이스티">밀크티/아이스티</a></li>



															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=252"
																class="link_text" data-track-name="GNB 오설록|Tea Shop|콤부차">콤부차</a></li>

														</ul></li>
													<li class="item_dep2"><a
														href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery"
														data-track-name="GNB 오설록|Tea Shop|Tea Food"
														class="link_text">티푸드</a>
														<ul class="nav_list_dep3">



															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery&amp;line=174"
																class="link_text"
																data-track-name="GNB 오설록|Tea Shop|과자/초콜릿">과자/초콜릿</a></li>

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery&amp;line=178"
																class="link_text"
																data-track-name="GNB 오설록|Tea Shop|베이커리">베이커리</a></li>

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery&amp;line=251"
																class="link_text"
																data-track-name="GNB 오설록|Tea Shop|아이스크림">아이스크림</a></li>


														</ul></li>
													<li class="item_dep2"><a
														href="https://www.osulloc.com/kr/ko/shop/teawareshop"
														class="link_text">티웨어</a>
														<ul class="nav_list_dep3">
															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/teawareshop/use"
																data-track-name="GNB 오설록|Tea ware Shop|용도별"
																class="link_text">용도별</a></li>
															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/teawareshop/brand"
																class="link_text">브랜드별</a></li>
														</ul></li>
													<li class="item_dep2"><a
														href="https://www.osulloc.com/kr/ko/shop/item/list?category=themashop"
														class="link_text">라이프스타일</a>
														<ul class="nav_list_dep3">

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=themashop&amp;line=202"
																class="link_text">스킨케어</a></li>

															<li class="item_dep3"><a
																href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=228"
																class="link_text">정기배송</a></li>
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
									href="${pageContext.request.contextPath}/present"
									class="link_text">선물추천</a></li>

								<li class="item_dep1"><a
									href="${pageContext.request.contextPath}/reservation"
									class="link_text">프로그램</a>
									<div class="nav_list_dep2_box">
										<div class="wrapper">
											<div class="flex_box">
												<ul class="nav_list_dep2">
													<li class="item_dep2"><a
														href="https://www.osulloc.com/kr/ko/brandstory"
														class="link_text">오설록 스토리</a></li>
													<li class="item_dep2"><a
														href="/kr/ko/store-introduction/2" class="link_text">제주
															티뮤지엄</a></li>
													<li class="item_dep2"><a
														href="/kr/ko/store-introduction" data-track-name="매장 소개"
														class="link_text">매장 소개 및 예약</a></li>

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
								class="nav_util_icon icon_cart nav_cart nav_menu empty"
								href="https://www.osulloc.com/kr/ko/shop/cart" id="x-gnb-cart-m"
								data-track-name="Header 장바구니" data-gnb-role="cart"><span
									class="num">0</span></a></li>
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
								href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/shop/item/list"
								data-track-name="Header 로그인">로그인</a> <!-- <ul class="drop_box drop_box2">
									<li class="drop_item"><a
										href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/shop/item/list"
										data-track-name="Header 로그인">로그인</a></li>
									<li class="drop_item"><a href="/kr/ko/login/joinIn"
										title="새 창" target="_self" data-track-name="Header 회원가입">회원가입</a></li>
								</ul> --></li>


							<!-- <li class="item arr">KOREAN <span class="icon_drop_arr"></span>
								<ul class="drop_box drop_box4">
									<li class="drop_item"><a href="/kr/ko"
										data-track-name="GNB Osulloc | Korea/Korean">한국어</a></li>
									<li class="drop_item"><a href="https://us.osulloc.com"
										data-track-name="GNB Osulloc | Korea/English">English</a></li>
									<li class="drop_item"><a
										href="https://www.osulloc.com/kr/zh"
										data-track-name="GNB Osulloc | Korea/Chinese">中文</a></li>
								</ul>
							</li> -->
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
								<li class="rank"><p>
										<b>1</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="녹차"
											style="cursor: pointer;">녹차</strong>
									</p> <i class="rankState flagstatus"></i></li>
								<li class="rank"><p>
										<b>2</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="달빛"
											style="cursor: pointer;">달빛</strong>
									</p> <i class="rankState flegUp"></i></li>
								<li class="rank"><p>
										<b>3</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="그린티 랑드샤"
											style="cursor: pointer;">그린티 랑드샤</strong>
									</p> <i class="rankState flegUp"></i></li>
								<li class="rank"><p>
										<b>4</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="복숭아"
											style="cursor: pointer;">복숭아</strong>
									</p> <i class="rankState flegUp"></i></li>
								<li class="rank"><p>
										<b>5</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="루이보스"
											style="cursor: pointer;">루이보스</strong>
									</p> <i class="rankState flegUp"></i></li>
								<li class="rank"><p>
										<b>6</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="비스킷"
											style="cursor: pointer;">비스킷</strong>
									</p> <i class="rankState flegUp"></i></li>
								<li class="rank"><p>
										<b>7</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="가루 녹차"
											style="cursor: pointer;">가루 녹차</strong>
									</p> <i class="rankState flegUp"></i></li>
								<li class="rank"><p>
										<b>8</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="달빛 걷기"
											style="cursor: pointer;">달빛 걷기</strong>
									</p> <i class="rankState flegUp"></i></li>
								<li class="rank"><p>
										<b>9</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="그린티 웨하스"
											style="cursor: pointer;">그린티 웨하스</strong>
									</p> <i class="rankState flegUp"></i></li>
								<li class="rank"><p>
										<b>10</b><strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="favorite" data-text="귤 꽃 향 을 품 은 우잣 담"
											style="cursor: pointer;">귤 꽃 향 을 품 은 우잣 담</strong>
									</p> <i class="rankState flegUp"></i></li>
							</ul>
						</div>
						<div class="chartList chartNewList auto_complete">
							<div class="tit">
								<p>최근 검색어</p>
								<em class="searchDateDiv"> 24. 07. 01 기준 </em>
							</div>
							<ul class="new_list">
								<li class="rank"><p>
										<strong onclick="setHeaderSearchKeyword(this)"
											data-tag-search-type="latest" data-text=" 프로그램"
											style="cursor: pointer;"> 프로그램</strong>
									</p> <span><em>06.24</em><i
										onclick="deleteRecentSearches(this)" style="cursor: pointer;"
										class="rankState flagDel"></i></span></li>
							</ul>
							<p class="logDel">
								<a href="javascript:deleteRecentSearches();"> <i></i><span>검색
										기록 삭제</span>
								</a>
							</p>
						</div>
						<div class="bannerBox" id="bannerBoxPc">




							<div class="swiper">
								<div
									class="swiperBanner swiper-container-initialized swiper-container-horizontal"
									id="pc_banner_swiper">
									<div class="swiper-wrapper" style="transition-duration: 300ms;">
										<div class="swiper-slide swiper-slide-duplicate"
											data-swiper-slide-index="0"></div>
										<div class="swiper-slide" data-swiper-slide-index="0"></div>
										<div class="swiper-slide swiper-slide-duplicate"
											data-swiper-slide-index="0"></div>
									</div>
									<span class="swiper-notification" aria-live="assertive"
										aria-atomic="true"></span>
								</div>
							</div>
							<div
								class="swiper-pagination swiper-pagination-horizontal swiper-pagination-clickable swiper-pagination-bullets"></div>
						</div>
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
									<ul class="popular_list">
										<li class="rank"><p>
												<b>1</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite" data-text="녹차"
													style="cursor: pointer;">녹차</strong>
											</p> <i class="rankState flagstatus"></i></li>
										<li class="rank"><p>
												<b>2</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite" data-text="달빛"
													style="cursor: pointer;">달빛</strong>
											</p> <i class="rankState flegUp"></i></li>
										<li class="rank"><p>
												<b>3</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite" data-text="그린티 랑드샤"
													style="cursor: pointer;">그린티 랑드샤</strong>
											</p> <i class="rankState flegUp"></i></li>
										<li class="rank"><p>
												<b>4</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite" data-text="복숭아"
													style="cursor: pointer;">복숭아</strong>
											</p> <i class="rankState flegUp"></i></li>
										<li class="rank"><p>
												<b>5</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite" data-text="루이보스"
													style="cursor: pointer;">루이보스</strong>
											</p> <i class="rankState flegUp"></i></li>
										<li class="rank"><p>
												<b>6</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite" data-text="비스킷"
													style="cursor: pointer;">비스킷</strong>
											</p> <i class="rankState flegUp"></i></li>
										<li class="rank"><p>
												<b>7</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite" data-text="가루 녹차"
													style="cursor: pointer;">가루 녹차</strong>
											</p> <i class="rankState flegUp"></i></li>
										<li class="rank"><p>
												<b>8</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite" data-text="달빛 걷기"
													style="cursor: pointer;">달빛 걷기</strong>
											</p> <i class="rankState flegUp"></i></li>
										<li class="rank"><p>
												<b>9</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite" data-text="그린티 웨하스"
													style="cursor: pointer;">그린티 웨하스</strong>
											</p> <i class="rankState flegUp"></i></li>
										<li class="rank"><p>
												<b>10</b><strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="favorite"
													data-text="귤 꽃 향 을 품 은 우잣 담" style="cursor: pointer;">귤
													꽃 향 을 품 은 우잣 담</strong>
											</p> <i class="rankState flegUp"></i></li>
									</ul>
									<p class="log date searchDateDiv">24. 07. 01 기준</p>
								</div>
								<div id="tab02" class="tabCnt" style="display: none;">
									<ul class="new_list">
										<li class="rank"><p>
												<strong onclick="setHeaderSearchKeyword(this)"
													data-tag-search-type="latest" data-text=" 프로그램"
													style="cursor: pointer;"> 프로그램</strong>
											</p> <span><em>06.24</em><i
												onclick="deleteRecentSearches(this)"
												style="cursor: pointer;" class="rankState flagDel"></i></span></li>
									</ul>
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
					<div class="bannerBox" id="bannerBoxMo">




						<div class="swiper">
							<div
								class="swiperBanner swiper-container-initialized swiper-container-horizontal"
								id="mo_banner_swiper">
								<div class="swiper-wrapper" style="transition-duration: 300ms;">
									<div class="swiper-slide swiper-slide-duplicate"
										data-swiper-slide-index="0"></div>
									<div class="swiper-slide" data-swiper-slide-index="0"></div>
									<div class="swiper-slide swiper-slide-duplicate"
										data-swiper-slide-index="0"></div>
								</div>
								<span class="swiper-notification" aria-live="assertive"
									aria-atomic="true"></span>
							</div>
						</div>
						<div
							class="swiper-pagination swiper-pagination-horizontal swiper-pagination-bullets"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="dim_bg" style="display: none;"></div>

		<!-- 모바일 NAV : S  -->
		<aside class="cdj_mo_nav">
			<!-- 모바일 메뉴 헤터 : S -->
			<div class="mo_nav_header in">


				<!-- 로그인 전 : S -->
				<div class="logOut_top_box">
					<a
						href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/shop/item/list"
						class="text"><span>로그인</span></a>
				</div>
				<!-- 로그인 전 : E -->



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


					<!-- 로그인 전 : S -->
					<div class="logOut_box">
						<p class="text">
							가입하고 <em> 10% 쿠폰</em>을 바로 사용해보세요.
						</p>
						<button type="button" class="join_btn" title="회원가입"
							onclick="javascript:location.href='/kr/ko/login/joinIn'"
							data-track-name="Header 회원가입">회원가입</button>
					</div>
					<!-- 로그인 전 : E -->



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
									href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=228"
									class="link_text">정기배송</a></li>
							</ul></li>
						<!--gnb 프로모션-->

						<!--//gnb 프로모션-->
						<li class="item_dep1"><a
							href="https://www.osulloc.com/kr/ko/shop/item/gift"
							class="link_text no_fold">선물추천</a></li>

						<li class="item_dep1"><a
							href="https://www.osulloc.com/kr/ko/brandstory" class="link_text">브랜드</a>
							<ul class="mo_nav_list_dep2">
								<li class="item_dep2"><a
									href="https://www.osulloc.com/kr/ko/brandstory"
									data-track-name="GNB 오설록|About Osulloc|Since 1979"
									class="link_text">오설록 스토리</a></li>

								<li class="item_dep2"><a href="/kr/ko/store-introduction/2"
									class="link_text">제주 티뮤지엄</a></li>
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
						<a
							href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/beautypoint/list"
							data-track-name="Header 뷰티포인트추후적립">뷰티포인트 추후 적립</a>
					</div>


				</div>
				<!-- 하단 링크 영역 : E -->

				<!-- 로그아웃 버튼 - 로그인시 노출 : S -->

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
	<script type="text/javascript" id="fb-pixel-code">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","494913268302940");</script>


	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript" id="">jQuery(document).on("click","[ap-click-area]",function(a){a=this.getAttribute("ap-click-area");var b=this.getAttribute("ap-click-name"),c=this.getAttribute("ap-click-data");dataLayer.push({event:"commonEvent",eventCategory:a,eventAction:b,eventLabel:c||"-",ga3event:!0});window.dataLayer.push(function(){this.reset()})});
function makeScriptGA_Event(a,b,c){dataLayer.push({event:"commonEvent",eventCategory:a,eventAction:b,eventLabel:c||"-",ga3event:!0});window.dataLayer.push(function(){this.reset()})};</script>
	<script type="text/javascript" id="">$("body").on("click","a",function(c){try{var a="",b="";var d=this;var k=d.getAttribute("href"),l=d.getAttribute("ap-click-area"),m=d.getAttribute("ap-click-name"),e=d.getAttribute("ap-click-data");a=k;if(null!=a&&-1<a.indexOf("\x26clickUrl")){a=a.split("\x26clickUrl");var g=d.tagName+"[href*\x3d'"+a[0]+"']"}else g=null!=a?d.tagName+"[href\x3d'"+k+"']":d.tagName;null!=l&&""!=l.trim()&&(b+="[ap-click-area\x3d'"+l+"']");null!=m&&""!=m.trim()&&(b+="[ap-click-name\x3d'"+m+"']");null!=e&&""!=e.trim()&&
(b+="[ap-click-data\x3d'"+e+"']");g+=b;var f=d.parentElement;g=ga360_AddTag(g,f);var h=f.parentElement;g=ga360_AddTag(g,h);var n=h.parentElement;g=ga360_AddTag(g,n);b="Not Set";k=!1;0<ga360_Trim(d.innerText).length?(b=ga360_Trim(d.innerText),k=!0):0<ga360_Trim(f.innerText).length?b=ga360_Trim(f.innerText):0<ga360_Trim(h.innerText).length?b=ga360_Trim(h.innerText):0<ga360_Trim(n.innerText).length&&(b=ga360_Trim(n.innerText));l="ATag:"+document.title;m="";m=k?b:ga360_textLengthOverCut(b,20,null);e=
g;if(1<$(e).length){var p=$(e).index(this);e=e+":eq("+p+")"}var q=c.pageX-$(e).offset().left,r=c.pageY-$(e).offset().top;"undefined"!=typeof duArray?(dataLayer.push({event:"commonEvent",eventCategory:l,eventAction:"AUTO",eventLabel:e,ga3event:!0,dimension70:q+","+r,dimension58:a,metric20:duArray[0],metric21:duArray[1],metric22:duArray[2],metric23:duArray[3],metric24:duArray[4],metric25:duArray[5],metric26:duArray[6],metric27:duArray[7],metric28:duArray[8],metric29:duArray[9],metric30:duArray[10]}),
duArray=Array.from({length:11},function(){return 0})):dataLayer.push({event:"commonEvent",eventCategory:l,eventAction:"AUTO",eventLabel:e,ga3event:!0,dimension70:q+","+r,dimension58:a});window.dataLayer.push(function(){this.reset()})}catch(t){console.log(t)}});
$("body").on("click","button",function(c){try{var a="";var b=this;var d=b.className,k=b.id,l="",m="",e=b.getAttribute("ap-click-area"),g=b.getAttribute("ap-click-name"),f=b.getAttribute("ap-click-data");""!=d.trim()?l="[class*\x3d'"+d+"']":""!=k.trim()&&(l="[id\x3d'"+k+"']");var h=b.tagName+l;null!=e&&""!=e.trim()&&(m+="[ap-click-area\x3d'"+e+"']");null!=g&&""!=g.trim()&&(m+="[ap-click-name\x3d'"+g+"']");null!=f&&""!=f.trim()&&(m+="[ap-click-data\x3d'"+f+"']");h+=m;var n=b.parentElement;h=ga360_AddTag(h,
n);var p=n.parentElement;h=ga360_AddTag(h,p);var q=p.parentElement;h=ga360_AddTag(h,q);d="Not Set";k=!1;0<ga360_Trim(b.innerText).length?(d=ga360_Trim(b.innerText),k=!0):0<ga360_Trim(n.innerText).length?d=ga360_Trim(n.innerText):0<ga360_Trim(p.innerText).length?d=ga360_Trim(p.innerText):0<ga360_Trim(q.innerText).length&&(d=ga360_Trim(q.innerText));e="ATag:"+document.title;g="";g=k?d:ga360_textLengthOverCut(d,20,null);f=h;if(1<$(f).length){var r=$(f).index(this);f=f+":eq("+r+")"}var t=c.pageX-$(f).offset().left,
u=c.pageY-$(f).offset().top;"undefined"!=typeof duArray?(dataLayer.push({event:"commonEvent",eventCategory:e,eventAction:"AUTO",eventLabel:f,ga3event:!0,dimension70:t+","+u,dimension58:a,metric20:duArray[0],metric21:duArray[1],metric22:duArray[2],metric23:duArray[3],metric24:duArray[4],metric25:duArray[5],metric26:duArray[6],metric27:duArray[7],metric28:duArray[8],metric29:duArray[9],metric30:duArray[10]}),duArray=Array.from({length:11},function(){return 0})):dataLayer.push({event:"commonEvent",eventCategory:e,
eventAction:"AUTO",eventLabel:f,ga3event:!0,dimension70:t+","+u,dimension58:a});window.dataLayer.push(function(){this.reset()})}catch(v){console.log(v)}});function ga360_AddTag(c,a){try{c=""!=a.id.trim()?a.tagName+"[id\x3d'"+a.id+"'] "+c:""!=a.className.trim()?a.tagName+"[class*\x3d'"+a.className+"'] "+c:a.tagName+" "+c}catch(b){}return c}function ga360_Trim(c){try{c=c.replace(/\s+/,""),c=c.replace(/\s+$/g,""),c=c.replace(/\n/g,""),c=c.replace(/\r/g,"")}catch(a){}return c}
function ga360_textLengthOverCut(c,a,b){try{if(""==a||null==a)a=20;if(""==b||null==b)b="...";c.length>a&&(c=c.substr(0,a)+b)}catch(d){}return c};</script>
	<script type="text/javascript" id="">try{if("undefined"==typeof duArray)for(var duArray=[],i=0;11>i;i++)duArray[i]=0;setInterval(function(){calDuration(duArray)},1E3)}catch(a){console.log(a)}function calDuration(a){if(void 0!=$(window).scrollTop()&&null!=$(window).scrollTop()){var b=10*Math.round($(window).scrollTop()/($(document).height()-$(window).height())*100/10);a[b/10]+=1}};</script>




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
	  if('false' == 'false'){
		var chkCid = "1713533988.1716520330";
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


	<!-- 컨텐츠 바디 영역 -->
	<div id="renew201906">
		<div id="contents" class="">

			<!--카테고리 배너-->
			<style>
.CatBanner {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 380px;
	border-bottom: none;
	margin: 0;
	background: url('') 50% 50% no-repeat;
	color: #333;
}

.CatBannerTit {
	font-size: 48px;
	font-weight: 500;
	text-align: center;
	font-family: 'ad', 'sans-serif' !important;
}

.CatBannerM {
	display: none;
}

@media screen and (max-width: 750px) {
	.CatBanner {
		background: none;
		height: auto;
	}
	.CatBannerTit {
		display: none;
	}
	.CatBannerM {
		display: block;
	}
}
</style>
			<div class="CatBanner"
				style="background-image: url(https://image.osulloc.com/upload/kr/ko/adminImage/ZF/TV/20240521095825847IN.webp)">
				<h2 class="CatBannerTit" style="color: white;">장바구니</h2>

			</div>
			<script>
				$(function(){
			
					function CatFilter(Cat, CatTit){
						$('.CatBanner').attr('style', `background-image : url(https://image.osulloc.com/kr/ko/static_cdj/images/catBanner/banner_${Cat}.jpg)`);
						$('.CatBannerTit').text(CatTit);
						$('.CatBannerM').attr('src', `https://image.osulloc.com/kr/ko/static_cdj/images/catBanner/banner_m_${Cat}.jpg`);		// cdnUrl 추가
					}
					const CatText = $('.pageLocation').text();
					const CatArr = [
						['제품', 'teaprod', '티 제품'],
						['티 세트', 'teaset', '티 세트'],
						['명차', 'meung2', '명차'],
						['녹차', 'green2', '녹차 / 말차'],
						['홍차', 'red2', '발효차 / 홍차'],
						['블렌디드티', 'blend', '블렌디드티'],
						['허브티', 'hub', '허브티'],
						['밀크티', 'milk2', '밀크티 / 아이스티'],
						['티푸드', 'teafood', '티푸드'],
						['과자', 'snack2', '과자 / 초콜릿'],
						['베이커리', 'bakery', '베이커리'],
						['아이스크림', 'icecream', '아이스크림'],
						['라이프', 'life', '라이프 스타일'],
						['건강기능식품', 'helth', '건강기능식품'],
						['스킨케어', 'skin', '스킨케어'],
						['정기배송', 'delivery', '정기배송'],
						['콤부차', 'kombu', '콤부차']
					]
					CatArr.forEach(e => {
						const [Cat, CatSrc, CatTitle] = e; //카테고리명, 이미지경로, 카테고리타이틀
						CatText.includes(Cat) && CatFilter(CatSrc, CatTitle);
					});
				});
			</script>


			<!-- 티샵 -->
			<div class="inner1600 itemListPocus">
				<div class="teashopWrapper ">
					<!--  -->
					<!-- <div class="sub-lnb">

						<ul class="for-pc">

							<li class="title">제품</li>
							<li class="handlers thirdMenuLink"><a
								href="/kr/ko/shop/item/list?category=teashop">티 제품</a>
								<div class="sub-thirdMenu">
									<ul>
										<li><a href="/kr/ko/shop/item/list?category=teashop">전체상품</a>



										</li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=198"
											data-track-name="티 세트/라인별 조회/모바일">티 세트</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=201"
											data-track-name="명차/라인별 조회/모바일">명차</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=197"
											data-track-name="녹차/말차/라인별 조회/모바일">녹차/말차</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=249"
											data-track-name="발효차/홍차/라인별 조회/모바일">발효차/홍차</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=196"
											data-track-name="블렌디드티/라인별 조회/모바일">블렌디드티</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=195"
											data-track-name="허브티/라인별 조회/모바일">허브티</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=250"
											data-track-name="밀크티/아이스티/라인별 조회/모바일">밀크티/아이스티</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=252"
											data-track-name="콤부차/라인별 조회/모바일">콤부차</a></li>




									</ul>
								</div></li>
							<li class="handlers thirdMenuLink"><a
								href="/kr/ko/shop/item/list?category=bakery">티푸드</a>
								<div class="sub-thirdMenu">
									<ul>
										<li><a href="/kr/ko/shop/item/list?category=bakery">전체상품</a></li>


										<li><a
											href="/kr/ko/shop/item/list?category=bakery&amp;line=174"
											data-track-name="과자/초콜릿/라인별 조회/모바일">과자/초콜릿</a></li>

										<li><a
											href="/kr/ko/shop/item/list?category=bakery&amp;line=178"
											data-track-name="베이커리/라인별 조회/모바일">베이커리</a></li>

										<li><a
											href="/kr/ko/shop/item/list?category=bakery&amp;line=251"
											data-track-name="아이스크림/라인별 조회/모바일">아이스크림</a></li>

									</ul>
								</div></li>
							<li class="handlers thirdMenuLink"><a
								href="/kr/ko/shop/item/list?category=themashop">라이프 스타일</a>
								<div class="sub-thirdMenu">
									<ul>
										<li><a href="/kr/ko/shop/item/list?category=themashop">전체상품</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=themashop&amp;line=202"
											data-track-name="스킨케어/라인별 조회/모바일">스킨케어</a></li>


									</ul>
								</div></li>
						</ul>
						<div class="fixedMenu-anchor">
							<div class="for-mobile fixedMenu" style="">
								<div class="mn1  js_select">
									<p class="tit menu" id="mteashop">
										<a href="#none"> 티 제품 </a>
									</p>
									<ul class="opt" style="display: none;">
										<li><a class="name">티 제품</a></li>
										<li><a class="name">티푸드</a></li>
										<li><a class="name">라이프 스타일</a></li>
									</ul>
								</div>
								<div class="mn2  js_select">

									<p class="tit menu" id="mallitem">





										<a href="#none">전체상품</a>


									</p>

									<ul class="opt" style="display: none;" id="opt_teashop">

										<li><a href="/kr/ko/shop/item/list?category=teashop">전체상품</a>




										</li>


										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=198"
											data-track-name="티 세트/라인별 조회/모바일">티 세트</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=201"
											data-track-name="명차/라인별 조회/모바일">명차</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=197"
											data-track-name="녹차/말차/라인별 조회/모바일">녹차/말차</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=249"
											data-track-name="발효차/홍차/라인별 조회/모바일">발효차/홍차</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=196"
											data-track-name="블렌디드티/라인별 조회/모바일">블렌디드티</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=195"
											data-track-name="허브티/라인별 조회/모바일">허브티</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=250"
											data-track-name="밀크티/아이스티/라인별 조회/모바일">밀크티/아이스티</a></li>



										<li><a
											href="/kr/ko/shop/item/list?category=teashop&amp;line=252"
											data-track-name="콤부차/라인별 조회/모바일">콤부차</a></li>




									</ul>
									<ul class="opt" style="display: none;" id="opt_bakery">
										<li><a href="/kr/ko/shop/item/list?category=bakery">전체상품</a></li>

										<li><a
											href="/kr/ko/shop/item/list?category=bakery&amp;line=174"
											data-track-name="과자/초콜릿/라인별 조회/모바일">과자/초콜릿</a></li>

										<li><a
											href="/kr/ko/shop/item/list?category=bakery&amp;line=178"
											data-track-name="베이커리/라인별 조회/모바일">베이커리</a></li>

										<li><a
											href="/kr/ko/shop/item/list?category=bakery&amp;line=251"
											data-track-name="아이스크림/라인별 조회/모바일">아이스크림</a></li>

									</ul>
									<ul class="opt" style="display: none;" id="opt_themashop">
										<li><a href="/kr/ko/shop/item/list?category=themashop">전체상품</a></li>


										<li><a
											href="/kr/ko/shop/item/list?category=themashop&amp;line=202"
											data-track-name="스킨케어/라인별 조회/모바일">스킨케어</a></li>


									</ul>
								</div>
							</div>
						</div> -->
				</div>
				<!-- // -->
				<!--  -->
				<!-- 상품 리스트 -->
				<div class="containter">
					<input type="hidden" id="tag_search_name" value="">





























					<!-- 
						<p class="pageLocation">제품</p> -->








					<input type="hidden" id="tag_search_type" value="">











					<!-- 리스트 정렬 -->
					<!-- 첫 list진입 시 sort 리뷰많은순으로 지정 -->



					<!-- //리스트 정렬 -->
					<!-- filter -->



					<div class="container">
						<table class="cart">
							<tr>
								<th>상품명</th>
								<th>이미지</th>
								<th>가격</th>
								<th>수량</th>
								<th>합계</th>
								<th>삭제</th>
							</tr>
							<c:forEach var="item" items="${cartItems}">
								<tr>
									<td>${item.title}</td>
									<td><img src="${item.image}" alt="${item.title} 이미지" /></td>
									<td>${item.price}</td>
									<td>
										<form
											action="${pageContext.request.contextPath}/updateCartQuantity"
											method="post" id="quantityForm-${item.cart_item_id}">
											<input type="hidden" name="cartItemId"
												value="${item.cart_item_id}" />
											<button type="button"
												onclick="updateQuantity(${item.cart_item_id}, -1)">-</button>
											<input type="number" name="quantity" value="${item.quantity}"
												min="1" readonly />
											<button type="button"
												onclick="updateQuantity(${item.cart_item_id}, 1)">+</button>
										</form>
									</td>
									<td>${item.total}</td>
									<td>
										<form action="${pageContext.request.contextPath}/removeCart"
											method="post">
											<input type="hidden" name="cartItemId"
												value="${item.cart_item_id}" /> <input type="submit"
												value="삭제" class="btn" />
										</form>
									</td>
								</tr>
							</c:forEach>
						</table>
						<div class="cart-total">
							<strong>총 합계: <c:set var="totalSum" value="0" /> <c:forEach
									var="item" items="${cartItems}">
									<c:set var="totalSum" value="${totalSum + item.total}" />
								</c:forEach> ${totalSum}원
							</strong>
						</div>
						<div style="text-align: center; margin-top: 20px;">
							<form id="paymentForm">
								<input type="submit" value="결제하기" class="btn" />
							</form>
							<script>
            document.getElementById('paymentForm').addEventListener('submit', function(event) {
                event.preventDefault();
                window.open('https://online-pay.kakao.com/mockup/v1/615a7ae734b1fa5db23654cbd207cfeb84f42ba0f1aa889a7dd82f3a141acbc4/info', 'newwindow', 'width=800,height=1000');
            });

            function updateQuantity(cartItemId, delta) {
                var form = document.getElementById('quantityForm-' + cartItemId);
                var quantityInput = form.querySelector('input[name="quantity"]');
                var newQuantity = parseInt(quantityInput.value) + delta;
                if (newQuantity > 0) {
                    quantityInput.value = newQuantity;
                    form.submit();
                }
            }
        </script>
						</div>
						<div style="text-align: center; margin-top: 20px;">
							<a href="list" class="btn product-list-btn">제품목록으로 이동</a>
						</div>
					</div>


					<!-- 	<div id="pagination" class="newPagination for-mobile ">




									<span class="btn btn-home is-disabled">페이지 처음으로</span> <span
										class="btn btn-prev is-disabled">이전 페이지</span> <a
										href="/kr/ko/shop/item/list?sort=review" class="num on"
										data-track-name="1 페이지 이동">1</a> <a
										href="/kr/ko/shop/item/list?sort=review&amp;p=1" class="num "
										data-track-name="2 페이지 이동">2</a> <a
										href="/kr/ko/shop/item/list?sort=review&amp;p=2" class="num "
										data-track-name="3 페이지 이동">3</a> <a
										href="/kr/ko/shop/item/list?sort=review&amp;p=3" class="num "
										data-track-name="4 페이지 이동">4</a> <a
										href="/kr/ko/shop/item/list?sort=review&amp;p=4" class="num "
										data-track-name="5 페이지 이동">5</a> <a
										href="/kr/ko/shop/item/list?sort=review&amp;p=5"
										class="btn btn-next" data-track-name="뒷 페이지 그룸 이동">다음 페이지</a>
									<a href="/kr/ko/shop/item/list?sort=review&amp;p=6"
										class="btn btn-end " data-track-name="맨 뒷 페이지 이동"> 페이지 끝으로
									</a>




								</div> -->
				</div>






			</div>
			<!-- //상품 리스트 -->
			<!-- // -->
		</div>


	</div>
	<!-- //티샵 -->

	<!-- 	</div>
		</div> -->
	<!-- //컨텐츠 바디 영역 -->


	<script type="text/javascript"
		src="https://image.osulloc.com/kr/ko/static/js/lib/require.min.js"
		data-main="shop/item"></script>


	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=494913268302940&amp;ev=PageView&amp;noscript=1">
	</noscript>



	<script type="text/javascript" id=""
		src="https://www.googletagmanager.com/gtag/js?id=AW-645486124"></script>
	<script type="text/javascript">
//$(window).load(function(){
	//var gv_videoVisible = false; 
	
	/* 티샵 슬라이더 */
    function loadBullets() {
      var _this = $('.teashopThumnails');
      var _bullets = _this.find('.swiper-slide');
      _bullets.each(function(index) {
        $(this).bind('click', function() {
          event.preventDefault();
        });
      });
    }

    var teashopThumbs = new Swiper('.teashopThumnails .wrapper', {
        slidesPerView: 4,
        spaceBetween: 10,
        freeMode: true,
        centeredSlides: false,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
            768: {
                slidesPerView: 3,
                spaceBetween: 0
            },
            1024: {
                slidesPerView: 4,
                spaceBetween: 0
            }
        }
    });
    
    var teaShop = new Swiper('.teaShopSlider .wrapper', {
        slidesPerView: 'auto',
        spaceBetween: 0,
        initialSlide: 1,
        centeredSlides: true,
        //loop: true,
        //resizeEvent: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

        thumbs: {
            swiper: teashopThumbs,
        },
        on: {
            init: function() {
                videoInit();
            },
            slideChangeTransitionEnd: function() {
            	videoClickPlayControll("0");
            	videoInit();
            },
        }
    });

    function videoInit() {
        var _activeSlide = $(".teaShopSlider .swiper-slide-active");
        var _myVideo = _activeSlide.find("iframe");
        var _btnNext = $(".teaShopSlider .swiper-button-next");
        var _btnPrev = $(".teaShopSlider .swiper-button-prev");
        var _btnSpacePrev = $("#slideDimmedL");
        var _btnSpaceNext = $("#slideDimmedR");
        var _thumb = $(".teashopThumnails .swiper-slide");
        videoResizer();
 
        //if (gv_videoVisible){
        	videoPlayControll("1", "local");	
        //}
        
        _btnNext.bind("click", function() {
        	videoPlayControll("0", "local");
        });
        _btnPrev.bind("click", function() {
        	videoPlayControll("0", "local");
        });
        _btnSpaceNext.bind("click", function() {
        	videoPlayControll("0", "local");
        	teaShop.navigation.nextEl.click();
        });
        _btnSpacePrev.bind("click", function() {
        	videoPlayControll("0", "local");
        	teaShop.navigation.prevEl.click();
        });
        _thumb.each(function() {
            $(this).bind("click", function() {
            	videoClickPlayControll("0");
            });
        });
    }

    function videoResizer() {
    	var _screenWidth = $(".teaShopSlider").width();
        var _sizeW = $(".teaShopSlider .swiper-slide").eq(0).width();
        var _sizeH = _sizeW * 0.490;
        var _maskWidth = (_screenWidth - _sizeW) / 2;
        if ($(window).width() > 768) {   
            $(".teaShopSlider .swiper-slide").css({
                "height": _sizeH
            });
            $(".teaShopSlider .slide-dimmed").width(_maskWidth);
        } else {
            
            $(".teaShopSlider .swiper-slide").css({
                "height": _sizeH
            });
        }
    }

    loadBullets();    
    $(window).resize(function() {
        videoResizer();
        if ($(window).width() > 768) {} else {}
    });
    
    function videoPlayControll(fg, pagetype){
        var _activeSlide = $(".teaShopSlider .swiper-slide-active");
        var _myVideo = _activeSlide.find("div");
        
        if (_myVideo.attr("flag") != fg){
        	_myVideo.attr("flag", fg);  
        	var videoplaystr;
			if(false){
				videoplaystr = "<img src='"+_myVideo.attr("poster")+"' style='width:100%; height:100%;' />";
			}else{
	        	if (fg == "1"){
	        		videoplaystr = "<iframe name='videopage' src='/kr/ko/shop/order/videopage?poster="+_myVideo.attr("poster")+"&sourcesrc="+_myVideo.attr("sourcesrc")+"&texttitle="+encodeURI(_myVideo.attr("texttitle"))+"&textcontent="+encodeURI(_myVideo.attr("textcontent"))+"' width='100%'  style='height:  100%' frameborder='0' scrolling='no' />";
	        	}else{
	        		videoplaystr = "<img src='"+_myVideo.attr("poster")+"' style='width:100%; height:100%;' />";
	        	}
			}
        	_myVideo.html(videoplaystr);
        }
        videoResizer();
        
        if (pagetype == "videopage"){
        	videoCallBack();
        }
    }

    function videoClickPlayControll(fg){

    	var _iframeSlide = $(".teaShopSlider .swiper-wrapper .swiper-slide").find("div");
        
    	_iframeSlide.each(function(index) {
            
            if ($(this).attr("flag") != "0"){
            	$(this).attr("flag", fg);
            	var videoplaystr;
            	videoplaystr = "<img src='"+$(this).attr("poster")+"' style='width:100%; height:100%;' />";
            	$(this).html(videoplaystr);
            }
        });
        	
    	videoResizer();
    }

    function videoCallBack(){
    	teaShop.navigation.nextEl.click();
    }

    
     //$(document).ready(function() {
    	
    	 //gv_videoVisible = true;
 		 //videoPlayControll("1");
    	
    //});
	 

    require(['$'] , function(){
    	
    	
        // add to wish list
/*         $('.x-btn-add-wish').click(function(){
        	
        	
           	
               var currentPath = "https://www.osulloc.com/kr/ko/shop/item/list";
               if(confirm("위시리스트 추가는 오설록 회원만 가능합니다. 로그인 화면으로 이동하시겠습니까?")) {
                   $(location).attr('href','/kr/ko/login?r=' + currentPath);
               }
           	
           	
        }); */
        
        // 위시리스트 추가or삭제 ajax _리뉴얼 20190807
        $('.ic.ic-like').click(function(){
        	
        	//alert("wish클릭");
        	
        	
           	
               var currentPath = "https://www.osulloc.com/kr/ko/shop/item/list";
               if(confirm("찜하기는 오설록 회원만 가능합니다. 로그인 화면으로 이동하시겠습니까?")) {
                   $(location).attr('href','/kr/ko/login?r=' + currentPath);
               }
           	
           	
        });

        // 장바구니 담기#contents > div.inner1600 > div > div.containter > div.goods-list > div.list-wrapper.clearfix > div:nth-child(2) > div.thumb > a.pc-bucket.filled.hide_tablet.hide_mobile
        $('.pc-bucket.filled.hide_tablet.hide_mobile').click( function (){
            var url = $(this).data('add-url');
            var $gCart = $('.nav_cart[data-gnb-role=cart]');
            var appBoyUrl = $(this).prev().attr("href");
            var menu = $(this).data('item-name');
            var urlArr = appBoyUrl.split("/");
            var appBoyPrice = $(this).data('item-price');
            
            var saleState = $(this).data('item-state');
            var temporarySoldout = "temporary_soldout";
            var deprecated = "deprecated";
            
            if(saleState == temporarySoldout || saleState == deprecated ){
            	alert("일시품절인 상품은 장바구니에 담을 수 없습니다.");
            	return false;
            }
            
            var pId = url.split("/")[url.split("/").length-1];
			var param = {'url':url};
			fnAddCartCommon(param,false,(data)=>{
				// leo tagging 장바구니 추가 클릭시 실행 함수
				window.fncSetAddCartTagginInfos(pId, 1);
				// leo tagging 장바구니 추가 클릭시 실행 함수

				if ($gCart.find('span.num').text(data.count).length == 0) {
					$gCart.removeClass("empty").addClass("filled");
					$gCart.append('<span class="num">' + data.count + '</span>');
				}
				if (confirm("장바구니로 이동하시겠습니까?")){
					location.href="/kr/ko/shop/cart";
				}
			})




        });
		
		$('input[name=prdline]').click( function (){		
			cateGroup();
		});
		
		$('input[name=prdpack]').click( function (){		
			cateGroup();
		});
		
		$('input[name=prdfilter]').click( function (){		
			cateGroup();
		});
		
		$('input[name=price]').click( function (){		
			cateGroup();
		});
		
		//검색 카테고리 조건 조합
		function cateGroup(){
		
			var prdline = $('input[name=prdline]:checked').map(function(index,elem){
				return $(elem).val();
			}).get().join(',');
			
			var prdpack = $('input[name=prdpack]:checked').map(function(index,elem){
				return $(elem).val();
			}).get().join(',');
			
			var prdfilter = $('input[name=prdfilter]:checked').map(function(index,elem){
				return $(elem).val();
			}).get().join(',');
			
			var price = $('input[name=price]:checked').val();
			if(price == null){
				price = 0;
			}
			
			var para = "line="+prdline+"&pack="+prdpack+"&filter="+prdfilter+"&price="+price;			
			location.href='/kr/ko/shop/item/list?'+para;
		}

    });
</script>

	<!--푸터-->








	<div id="new_footer">
		<!--PC-->
		<div class="wrap1 m_pd15 hide_tablet hide_mobile">
			<div class="inner1600 clearfix">
				<div class="right">



					<a
						href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/shop/item/list"
						class="footer_login" data-track-name="Footer 로그인">로그인</a> <a
						href="https://www.tiktok.com/@osulloc_official" target="_blank"
						class="btn-share--circle" style="z-index: 10000;"
						data-track-name="Footer 오설록 틱톡"> <img
						class="hide_tablet hide_mobile"
						src="https://image.osulloc.com/kr/ko/static_cdj/images/sns/sns_t.png"
						alt="틱톡">
					</a> <a href="https://www.youtube.com/channel/UC27q_WWuOkdyNIr7M_6trvA"
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
					<div class="tit">고객상담센터 · 주문/배송문의</div>
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

							<li><a href="https://www.osulloc.com/kr/ko/misc/statement"
								data-track-name="Footer 개인정보 처리방침"><b>개인정보 처리방침</b></a></li>
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
								data-track-name="Footer_M 사업자 정보확인">사업자 정보확인 &gt;</a> <br>통신판매업신고번호:2019-서울용산-1173호
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
					href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/shop/item/list"
					class="signIn" data-track-name="Footer_M 로그인">로그인</a>


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
						<div class="tit">고객상담센터 · 주문/배송문의</div>
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
						href="https://www.instagram.com/osulloc_official/" target="_blank"
						class="ic ic-insta" data-track-name="Footer_M 오설록 인스타그램">instagram</a>

				</div>
			</div>
		</div>
		<!--//모바일 m_footer-->
	</div>

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

	<script>
  //footer notice list
/*   require(['TweenMax'], function(a){
      function footerNotice() {
        var $noticeList = $('.footer-notice-list-new'),
          tweenTime = 0.8;

        $noticeList.each(function(i, el){
          var $el = $(el),
            $item = $el.find('li'),
            currentSlide = 0;

          TweenLite.set($item.filter(":gt(0)"), {y: '100%'});
          TweenLite.delayedCall(tweenTime*3, nextSlide);

          function nextSlide() {
            TweenLite.to( $item.eq(currentSlide), tweenTime, {y: '-100%'} );

            currentSlide < $item.length - 1 ? currentSlide++ : currentSlide = 0;
            TweenLite.fromTo( $item.eq(currentSlide), tweenTime, {y: '100%'}, {y: '0%'} );
            TweenLite.delayedCall(tweenTime*3, nextSlide);
          }
        });
      }footerNotice();
  }); */
</script>
	<!--//푸터-->


	<script type="text/javascript"
		src="https://image.osulloc.com/kr/ko/static/js/index.js"></script>
	<script type="text/javascript">

	$(document).ready(function(){
		$(".teashopThumnails").addClass("hide_mobile");
	});

	require(['$'], function(){
		
		var nowdate = '';
		var countYN = '';
		var startAt = '';
		var endAt = '';
		 
		var checktime1 = startAt - nowdate;
		var checktime2 = endAt - nowdate;
		
		var checksecond1 = parseInt(checktime1/1000);
		var checksecond2 = parseInt(checktime2/1000);
		
		var timer;

		if(countYN == "Y"){
			if(checksecond1 > 0 || checksecond2 < 0){
				$(".hour1 span").text("0");
				$(".hour2 span").text("0");
				$(".min1 span").text("0");
				$(".min2 span").text("0");
				$(".sec1 span").text("0");
				$(".sec2 span").text("0");
			}else{
				timer = setInterval(function(){ShowCountDown();}, 1000);
			}			
		}
		
		function ShowCountDown(){
			var leftTime = endAt - nowdate;
			var leftsecond = parseInt(leftTime/1000);
			if(leftsecond > 0){
				var hour=Math.floor(leftsecond/3600);
				hour = hour < 10 ? '0'+hour : ''+hour;
				var minute=Math.floor((leftsecond-hour*3600)/60);
				minute = minute < 10 ? '0'+minute : ''+minute;
				var second=Math.floor(leftsecond-hour*3600-minute*60);
				second = second < 10 ? '0'+second : ''+second;
				
				$(".hour1 span").text(hour.substr(0,1));
				$(".hour2 span").text(hour.substr(1,1));
				$(".min1 span").text(minute.substr(0,1));
				$(".min2 span").text(minute.substr(1,1));
				$(".sec1 span").text(second.substr(0,1));
				$(".sec2 span").text(second.substr(1,1));
				
				nowdate = parseInt(nowdate) + parseInt('1000');
			}else{
				$(".hour1 span").text("0");
				$(".hour2 span").text("0");
				$(".min1 span").text("0");
				$(".min2 span").text("0");
				$(".sec1 span").text("0");
				$(".sec2 span").text("0");
				
				clearInterval(timer);
			}
		}
		
		$(".pdtbox").each(function(){
		    var $this = $(this);
		    var t = $this.text();
		    $this.html(t.replace('&lt','<').replace('&gt', '>'));
		});
		
    
    //20180716 신규회원.20180601이후로그인회원 layer
    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for(var i=0; i<ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0)==' ') c = c.substring(1);
            if (c.indexOf(name) != -1) return c.substring(name.length,c.length);
        }
        return "";
    }
    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000));
        var expires = "expires="+d.toUTCString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
    }

    $("#layerLoginEventClose").click(function(){
      if($("#layerNotToday").is(":checked") ==true){
        setCookie("notEventToday","Y",1);
      }
      $("#oPopWelcomePop").hide();
    });
        console.log('%c' + getCookie('notEventToday'), 'color:red;');
    if(getCookie('notEventToday') != 'Y'){
        $("#oPopWelcomePop").show();
    }
    $('.O_pop-inner').on('click', function() {
        $("#oPopWelcomePop").hide();
    });
	
	
	//210129 수정
	var $menu1 = $('.fixedMenu').find('.mn1');
	var $menu1_opt = $menu1.find('.opt');
	var $menu2 = $('.fixedMenu').find('.mn2');
	var $menu2_opt = $menu2.find('.opt');
	var allmenuOpt = $('.fixedMenu').find('.opt');
    
	//현재 선택한 카테고리 담기_20190920
	var nowCategory = '';
	
	$('#mteashop').on('click', function() {
		$menu2_opt.hide();
		if( !$menu1_opt.is(":visible")){
			$menu1_opt.show();
			$('#mteashop').addClass("on");
		}else{
			$menu1_opt.hide();
		}
		
	});
	$menu1_opt.find("a").on('click', function() {
		var num = $(this).closest('li').prevAll().length;
		allmenuOpt.hide();
		$menu2_opt.eq(num).show();
		$('#mallitem').addClass('on');
		if(num == 0){
			$('#mallitem a').attr("href","/kr/ko/shop/item/list?category=teashop");
			nowCategory = null;
		}else if (num == 1){
			$('#mallitem a').attr("href","/kr/ko/shop/item/list?category=bakery")
			nowCategory = 'bakery';
		}else if (num == 2){
			$('#mallitem a').attr("href","/kr/ko/shop/item/list?category=themashop");
			nowCategory = 'themashop';
		}
		
		
	});
	$('#mallitem').on('click', function(e) {
		e.preventDefault();
		if( $menu1_opt.is(":visible")){
			$menu1_opt.hide();
			$('#mteashop').removeClass("on");
		}
		
		var inx = 0;
		var flag = false;
		$menu1_opt.find("a").each(function(){
			if($(this).hasClass("on")){
				flag  = true;
				return false;
			}
			inx++;
		});
		if(!flag){
			inx = 0;
		}
		
		//현재 선택한 카테고리에 따라 opt보여주도록 수정_20190920
		if(nowCategory == 'bakery'){
			inx = 1;
		}else if(nowCategory == 'themashop'){
			inx = 2;
		}else{
			inx = 0;
		}
		if( !$menu2_opt.eq(inx).is(":visible")){
			$menu2_opt.hide();
			$menu2_opt.eq(inx).show();
		}else{
			$('#mallitem').removeClass("on");
			$menu2_opt.hide();
		}
	}); 
 		
 		var packClickFlag = false;
        $(".packageType a").on('click', function() {
            var packs = [];
            var params = [];
            var pack = "";
            var flag = false;
        //	debugger;
            if(packClickFlag){
            //    $(this).addClass("on");
            	return false;
            }else {
            //    $(this).removeClass("on");
            }
          //  return false;
            packClickFlag  = true;

           var sort= "review";
           var pack= "";
           var category= "";
           var line= "";  //2020.08.11 가현 추가
           var packId = $(this).attr("id");
           
           if(packId == "all" || packId == undefined){
               pack = "";
           }else {
               if(pack != ""){
                   packs = pack.split(",");
               
                   for(var i = 0; i < packs.length;i++){
                       if(packs[i] == packId){
                           flag  = true;
                       }
                   }
               
                   for(var i = 0; i < packs.length;i++){
                       if(flag){
                           if(packs[i] != packId){
                               params.push(packs[i]);
                           }
                       }else{
                           params.push(packs[i]);
                       }
                       
                   }
                   
                   if(!flag){
                       params.push(packId);
                   }
                   
               
               }else{
                   params.push(packId);
               }
           }
           pack = params.join(",");
           
           if(params.length == 4){
               pack == "";
           }
           
           if(pack == ""){
               if(line == ""){
            	   location.href="/kr/ko/shop/item/list?sort="+sort+"&category="+category;
            	   }else{
            		   location.href="/kr/ko/shop/item/list?line="+line+"&sort="+sort+"&category="+category;
            	   }
   
           }else{
               if(line == ""){
            	   location.href="/kr/ko/shop/item/list?pack="+pack +"&sort="+sort+"&category="+category;
            	   }else{
            		   location.href="/kr/ko/shop/item/list?line="+line+"&pack="+pack +"&sort="+sort+"&category="+category;
            	   } 
           }
        
        });
        
 	// 모바일 장바구니 담기        
	      $('.ic.ic-bucket').click( function (){
	          var url = $(this).data('add-url');
	          var $gCart = $('.nav_cart[data-gnb-role=cart]');
	          var appBoyUrl = url;
	          var menu = $(this).data('item-name');
	          var urlArr = appBoyUrl.split("/");
	          var appBoyPrice = $(this).data('item-price');
	          var pId = url.split("/")[url.split("/").length-1];
            var pushed_bucket_id = 'pushed_bucket_' + pId;
            var del_bucket_id = 'del_bucket_' + pId;
            
            var saleState = $(this).data('item-state');
            var temporarySoldout = "temporary_soldout";
            var deprecated = "deprecated";
            
            if(saleState == temporarySoldout || saleState == deprecated ){
            	alert("일시품절인 상품은 장바구니에 담을 수 없습니다.");
            	return false;
            }

			  var cartParam = {
				  'url' : url
			  }

			  fnAddCartCommon(cartParam,false,(data)=>{
				  // leo tagging 장바구니 추가 클릭시 실행 함수
				  window.fncSetAddCartTagginInfos(pId,1);
				  // leo tagging 장바구니 추가 클릭시 실행 함수


				  if ($gCart.find('span.num').text(data.count).length == 0) {
					  $gCart.removeClass("empty").addClass("filled");
					  $gCart.append('<span class="num">' + data.count + '</span>');
				  }
				  if (confirm("장바구니로 이동하시겠습니까?")){
					  location.href="/kr/ko/shop/cart";
				  }else{
					  document.getElementById(pushed_bucket_id).style.display = "block";
					  document.getElementById(del_bucket_id).style.display = "none";
				  }
			  })



            
	           /*$.ajax( {
	               'url' : url
	           }).done( function(data){
	               if ( data.success === true ) {
	              	 
	              	 // leo tagging 장바구니 추가 클릭시 실행 함수
	              	 window.fncSetAddCartTagginInfos(pId,1);
	              	 // leo tagging 장바구니 추가 클릭시 실행 함수
	            	   

	                   if ($gCart.find('span.num').text(data.count).length == 0) {
	                       $gCart.removeClass("empty").addClass("filled");
	                       $gCart.append('<span class="num">' + data.count + '</span>');
	                   }
	                   if (confirm("장바구니로 이동하시겠습니까?")){
	                       location.href="/kr/ko/shop/cart";
	                   }else{
	             			 document.getElementById(pushed_bucket_id).style.display = "block";
	             			 document.getElementById(del_bucket_id).style.display = "none";
	                   }
	               } else {
	                   console.log(data);
	                   
	                   if(data.message != null){
	                    	alert(data.message);
	                   }else{
	                   	 	alert("장바구니 담기에 실패했습니다. 다시 시도해주세요.");	 
	                   }

	               }
	          });*/




	      });

	    
	});

	$(document).ready(function(){
		var nh_height = $('#cdj_header').height(); //cdj개선 - 아이디 변경
		var ht_height = $('.header_top').height();
		var fm_height = $('.for-mobile').height();
		var _height;
		var _posY= $('.itemListPocus').offset();
		if($(window).width() > 768){
			/* 초기화면 진입 외, 특정 카테고리 클릭 시 상품리스트로 포커스 맞추기_20191004수정 */
			var thisUrl = location.href;
			var thisParam = thisUrl.split('?');
			_height = nh_height + ht_height;
			if(thisParam[1] != null ){
				//$("html, body").stop().animate({scrollTop: (_posY.top - _height)+"px"}, 100);	
			}
		}else{
			/*모바일-전체상품제외, 특정 카테고리 클릭시  리뷰많은순 포커스_20191106*/
			var lineStr = '';
			_height = nh_height + fm_height;
			if(lineStr != null && lineStr !=''){
				//$("html, body").stop().animate({scrollTop: (_posY.top - _height)+"px"}, 100);
			}
	
		}
	});
    
</script>
	<!-- 검색결과시 태깅 변수설정 스크립트 -->
	<script type="text/javascript">
// 검색시 태깅정보 설정(2019.11.08)
	$(document).ready(function(){
		if($('#tag_search_name').val()!= null && $('#tag_search_name').val() != ''){  /// 검색 리스트 조회
			
			window.AP_SEARCH_TERM = $('#tag_search_name').val();

			// 추후 검색엔진 적용시 검색된 타입을 설정해야함(직접입력, 해시태그, 추천검색어, 최근검색어 등 검색메뉴유형 or 사용자의 검색행동에 따름)
			if(tagSearchType == 'latest') {
				window.AP_SEARCH_TYPE = '최근검색';
			}else if(tagSearchType == 'favorite'){
				window.AP_SEARCH_TYPE = '인기검색';
			}else if(tagSearchType == 'auto'){
				window.AP_SEARCH_TYPE = '자동완성';
			} else {
				window.AP_SEARCH_TYPE = '직접입력';
			}

			window.AP_SEARCH_NUM = parseInt($('#tag_search_totcnt').text().replace(/,/gi, ''));
			window.AP_SEARCH_RESULT = "Y";			// 정상적으로 검색 되었는지
			window.AP_ECOMM_CURRENCY = "KRW";			// 통화 (ISO 3자리)

			var tagSearchType = $('#tag_search_type').val();//검색 타입

			if(window.AP_SEARCH_NUM > 0){
				
				var searchItemIds = [];
				var ItemListNames = [];
				var ItemListdp = [];		
				var ItemListsp = [];
				var ItemCates = [];

				$('[id=tag_search_item]').each(function(){
					searchItemIds.push($(this).data('search-item-id'));					
				});		
				
				$('[id=tag_search_item_nm]').each(function(){
					ItemListNames.push($(this).val());	
				});
				
				$('[id=tag_search_item_dp]').each(function(){
					ItemListdp.push($(this).val());					
				});
				
				$('[id=tag_search_item_sp]').each(function(){
					ItemListsp.push($(this).val());					
				});

				$('[id=tag_search_item_cate]').each(function(){
					ItemCates.push($(this).val());
				});

			 	if(searchItemIds != null && searchItemIds.length > 0){	
			 		var jsnArray = new Array();
					var jsn = new Object();
					
					for(i = 0 ; i < searchItemIds.length ; i++){
						
						jsn = new Object();

						jsn.code = searchItemIds[i]; // 상품 ID
						jsn.name = ItemListNames[i]; // 상품 이름
						jsn.brand = "오설록";
						jsn.index = i + 1;
						jsn.item_list_name = "SEARCH";
						jsn.cate = ItemCates[i];
						jsn.apg_brand_code = undefined;
						jsn.sapcode = "";
						jsn.price = parseInt(ItemListdp[i]);
						jsn.discount = parseInt(ItemListsp[i]) - parseInt(ItemListdp[i]);
						jsn.prdprice = parseInt(ItemListsp[i]);
						jsnArray.push(jsn);
					}

					if(jsnArray != null){
						window.AP_SEARCH_PRDRESULT = jsnArray;
						//console.log(JSON.stringify(jsnArray));
					}
			 	}
			}else{
				window.AP_SEARCH_RESULT = "N";
				window.AP_SEARCH_PRDRESULT = [];
			}
			window.dataLayer.push({event: 'search'});
		} else {		 /// 전체 리스트 조회
		var totcnt = parseInt($('#tag_search_totcnt').text().replace(/,/gi, ''));
		window.AP_SEARCH_RESULT = "N";
		window.AP_ECOMM_CURRENCY = "KRW";
		if(totcnt > 0){
			
			var ItemListIds = [];
			var ItemListNames = [];
			var ItemListdp = [];		
			var ItemListsp = [];
			
			$('[id=tag_search_item]').each(function(){
				ItemListIds.push($(this).data('search-item-id'));					
			});
			
			$('[id=tag_search_item_nm]').each(function(){
				ItemListNames.push($(this).val());	
				//ItemListNames.push(escape(encodeURIComponent($(this).val())));		
			});
			
			$('[id=tag_search_item_sp]').each(function(){
				ItemListsp.push($(this).val());					
			});
			
			
			$('[id=tag_search_item_dp]').each(function(){
				ItemListdp.push($(this).val());					
			});
			
			
			
			
			 if(ItemListIds != null && ItemListIds.length > 0){
			 	
				var jsnArray = new Array();
				var jsn = new Object();

				
				for(i = 0 ; i < ItemListIds.length ; i++){
					jsn = new Object();
					
					jsn.name = ItemListNames[i];
					jsn.code = ItemListIds[i];
					jsn.sapcode = "";
					jsn.brand = "오설록";
					jsn.price = ItemListdp[i];
					jsn.prdprice = ItemListsp[i];
					
					jsnArray.push(jsn);
				}
				
				if(jsnArray != null){
					window.AP_LISTPAGE_PRDS = jsnArray;
					//console.log(JSON.stringify(jsnArray));
				}
				window.dataLayer.push({event: 'productlist'});
				 
				 
				/*  
				var tagginUrl = '/kr/ko/shop/item/tagging/list/infos';
			 	var paramVlaue = 'ids=' + ItemListIds + '&names='+ItemListNames + '&discountPrices='+ItemListdp + '&salePrices='+ItemListsp + '&vvipYn='+ItemListVip;
			 	
			 	
			 	 $.ajax({
			 		type : 'GET',
			 		url : tagginUrl,
			 		dataType : 'json',
			 		data : paramVlaue,
			 		success : function(data){
			 			console.log(data);
			 			if(data != null ){
			 				window.AP_LISTPAGE_PRDS = data;
			 				
			 			}
		 				window.dataLayer.push({event: 'productlist'});
			 		}
			 	});  */
		 	}
		}
		
		
		
		} 
		
	
	});
</script>
	<!-- 검색결과시 태깅 변수설정 스크립트 -->
	<!-- script -->







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


	<!--script type="text/javascript" src="https://image.osulloc.com/kr/ko/static/js/sCommon.js"></script>-->

	<script language="JavaScript" type="text/javascript">
       
        //일정시간이 지나면 자동로그아웃 e 20170601
    </script>








	<script type="text/javascript" id=""
		src="https://www.googletagmanager.com/gtag/js?id=DC-10125800"></script>
	<a href="" class="goTop">위로 가기</a>




	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>

	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];</script>





	<script type="text/javascript" id="">function getADCookie(a){try{var b=document.cookie;if(0<b.length&&(startIndex=b.indexOf(a),-1!=startIndex))return startIndex+=a.length,endIndex=b.indexOf(";",startIndex),-1==endIndex&&(endIndex=b.length),unescape(b.substring(startIndex+1,endIndex))}catch(c){}return""}
function sendRequestFB(a){var b=!1;try{if("PageView"!=a.evt_name&&"InitiateCheckout"!=a.evt_name&&"CompleteRegistration"!=a.evt_name&&"ViewContent"!=a.evt_name&&"Search"!=a.evt_name&&"AddToCart"!=a.evt_name&&"Purchase"!=a.evt_name)return;a.event_source_url=window.location.href;a.action_source="website";Object.entries(a).map(function(c){return c.join("\x3d")}).join("\x26")}catch(c){}return b};</script>


	<script type="text/javascript" id="fb-pixel-pageload">try{"NOTHING"}catch(a){console.warn("AD_comm_pageload warning in GTM")};</script>

	<iframe allow="join-ad-interest-group" data-tagging-id="AW-645486124"
		data-load-time="1719799514954" height="0" width="0"
		src="https://td.doubleclick.net/td/rul/645486124?random=1719799514939&amp;cv=11&amp;fst=1719799514939&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be46q0v9173972193za200&amp;gcd=13l3l3l3l1&amp;dma=0&amp;tag_exp=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.osulloc.com%2Fkr%2Fko%2Fshop%2Fitem%2Flist&amp;ref=https%3A%2F%2Fwww.osulloc.com%2Fkr%2Fko&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%A0%84%EC%B2%B4%EC%83%81%ED%92%88%20%7C%20%EC%98%A4%EC%84%A4%EB%A1%9D&amp;npa=0&amp;pscdl=noapi&amp;auid=1024826354.1719211052&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%252FA)Brand%3B8.0.0.0%7CChromium%3B126.0.6478.127%7CGoogle%2520Chrome%3B126.0.6478.127&amp;uamb=0&amp;uam=&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;fledge=1&amp;data=event%3Dgtag.config"
		style="display: none; visibility: hidden;"></iframe>
	<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","AW-645486124");try{var criteoDeviceType="";criteoDeviceType="PC"==AP_DATA_CHANNEL?"d":"m";"main"==AP_DATA_PAGETYPE&&-1<document.location.href.indexOf("/kr/ko")&&criteo_q.push({event:"setAccount",account:72498},{event:"setSiteType",type:criteoDeviceType},{event:"viewHome"})}catch(a){}
try{if("APP"!=AP_DATA_CHANNEL){var mobionDevice="MOBILE"==AP_DATA_CHANNEL?"M":"W";(function(a,d,e,b,c){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};b=d.createElement(e);b.async=!0;b.defer=!0;b.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";c=d.getElementsByTagName(e)[0];c.parentNode.insertBefore(b,c)})(window,document,"script");enp("create","common","osulloc",{device:"B"});enp("send","common","osulloc")}}catch(a){};</script>


	<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","DC-10125800");</script>


	<script type="text/javascript" id="" charset="UTF-8">(function(a,b,c,d,e){a=b.createElement(c);a.type="text/javascript";a.async=!0;a.src="https://avd.innity.net/"+d+"/container_"+e+".js";b=b.getElementsByTagName(c)[0];b.parentNode.insertBefore(a,b)})(window,document,"script","750","5ed4ce0147e7045404000000");</script>

	<script type="text/javascript" id="">try{var evtId=(new Date).getTime()+Math.random().toString(36).substr(2,8);try{"APP"!=AP_DATA_CHANNEL&&fbq("track","PageView",{},{eventID:evtId})}catch(a){}var fbDataSet={},facebookId=google_tag_manager["rm"]["13218487"](61);fbDataSet.fbid=facebookId;fbDataSet.user_id=AP_DATA_GCID;fbDataSet.beauty_no=AP_DATA_CID;fbDataSet.evt_id=evtId;fbDataSet.evt_name="PageView";fbDataSet.fbp=getADCookie("_fbp");fbDataSet.fbc=getADCookie("_fbc");try{"APP"!=AP_DATA_CHANNEL&&sendRequestFB(fbDataSet)}catch(a){}}catch(a){console.log(a)};</script>


	<script type="text/javascript" id="">try{var adn_param=adn_param||[];adn_param.push([{ui:"103669",ut:"Home"}])}catch(a){};</script>

	<script type="text/javascript" id=""
		src="//fin.rainbownine.net/js/adn_tags_2.1.3.js"></script>
	<script type="text/javascript" id="fb-pixel-view-content">window.fbq?fbq("track","ViewContent"):void 0;try{var cri_employee="",criteoDeviceType="",prodInfo=[];criteoDeviceType="PC"==AP_DATA_CHANNEL?"d":"m";for(var i=0;3>i;i++)prodInfo.push(AP_LISTPAGE_PRDS[i].code);criteo_q.push({event:"setAccount",account:72498},{event:"setSiteType",type:criteoDeviceType},{event:"viewList",item:prodInfo})}catch(a){};</script>
	<div id="criteo-tags-div" style="display: none;"></div>
	<div id="adn_container" style="display: none">
		<div id="adn_wrap_91759152361" style="display: none"></div>
	</div>




	<script type="text/javascript" id="" src="//wcs.naver.net/wcslog.js"></script>
	<iframe id="avdfi_1719799515202"
		src="javascript:'<html><body style=&quot;background:transparent&quot;></body></html>'"
		height="0" width="0" marginheight="0" marginwidth="0" frameborder="0"
		scrolling="no"
		style="width: 0px; height: 0px; border: 0px none; background: none; display: none;"></iframe>
	<script type="text/javascript" id="">if(!wcs_add)var wcs_add={};wcs_add.wa="s_bf516546e48";if(!_nasa)var _nasa={};window.wcs&&(wcs.inflow(),wcs_do(_nasa));</script>


	<script type="text/javascript" id="">kakaoPixel("6763084706725607045").pageView();</script>

	<iframe height="0" width="0" sandbox="allow-same-origin allow-scripts"
		title="Criteo DIS iframe" style="display: none;"></iframe>
	<div style="display: none; visibility: hidden;">
		<script type="text/javascript">try{var TRS_AIDX=11965,TRS_PROTOCOL=document.location.protocol,TRS_URL=TRS_PROTOCOL+"//"+("https:"==TRS_PROTOCOL?"analysis.adinsight.co.kr":"adlog.adinsight.co.kr")+"/emnet/trs_esc.js";(function(a,b){a=document.createElement("script");a.type="text/javascript";a.async=!0;a.defer=!0;a.src="https:"==document.location.protocol?"https://analysis.adinsight.co.kr/emnet/trs_esc.js":"http://adlog.adinsight.co.kr/emnet/trs_esc.js";b=document.getElementsByTagName("body")[0];b.appendChild(a,b)})()}catch(a){console.log(a)};</script>
	</div>
	<iframe allow="join-ad-interest-group" data-tagging-id="G-J7WQK8LYCD"
		data-load-time="1719799833030" height="0" width="0"
		src="https://td.doubleclick.net/td/ga/rul?tid=G-J7WQK8LYCD&amp;gacid=1713533988.1716520330&amp;gtm=45je46q0v896109433za200zb896311161&amp;dma=0&amp;gcd=13l3l3l3l1&amp;npa=0&amp;pscdl=noapi&amp;aip=1&amp;fledge=1&amp;frm=0&amp;z=244554406"
		style="display: none; visibility: hidden;"></iframe>
	<iframe allow="join-ad-interest-group" data-tagging-id="G-WTX6V4CQJN"
		data-load-time="1719799833045" height="0" width="0"
		src="https://td.doubleclick.net/td/ga/rul?tid=G-WTX6V4CQJN&amp;gacid=1713533988.1716520330&amp;gtm=45je46q0v9132860867za200zb9132846583&amp;dma=0&amp;gcd=13l3l3l3l1&amp;npa=0&amp;pscdl=noapi&amp;aip=1&amp;fledge=1&amp;frm=0&amp;z=1386354899"
		style="display: none; visibility: hidden;"></iframe>
	<script type="text/javascript" async="" defer=""
		src="https://analysis.adinsight.co.kr/emnet/trs_esc.js"></script>
</body>


</html>