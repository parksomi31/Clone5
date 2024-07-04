<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역조회</title>


<style>
.logo {
	font-size: 27px;
	font-weight: 500;
	background-color: transparent;
}

.my_order_tit_no_border {
	background-color: transparent;
	color: #333;
}

.my_order_tit {
	background-color: transparent;
	color: #333;
}
</style>
<!-- head -->







<!-- main 변수 -->


<!-- AWS 프로젝트 신규 추가  230213 GSW -->


<!-- AWS 프로젝트 신규 추가  END -->


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
<title>예약상세내역 | 오설록</title>

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
	src="https://connect.facebook.net/signals/config/494913268302940?v=2.9.160&amp;r=stable&amp;domain=www.osulloc.com&amp;hme=733c3732ec767f7a62e7787aff967e6d19b1e13e533937876f2e15efe07bf678&amp;ex_m=67%2C113%2C100%2C104%2C58%2C3%2C93%2C66%2C15%2C91%2C84%2C49%2C51%2C160%2C163%2C175%2C171%2C172%2C174%2C28%2C94%2C50%2C73%2C173%2C155%2C158%2C168%2C169%2C176%2C122%2C39%2C33%2C134%2C14%2C48%2C181%2C180%2C124%2C17%2C38%2C1%2C41%2C62%2C63%2C64%2C68%2C88%2C16%2C13%2C90%2C87%2C86%2C101%2C103%2C37%2C102%2C29%2C25%2C156%2C159%2C131%2C27%2C10%2C11%2C12%2C5%2C6%2C24%2C21%2C22%2C54%2C59%2C61%2C71%2C95%2C26%2C72%2C8%2C7%2C76%2C46%2C20%2C97%2C96%2C98%2C9%2C19%2C18%2C81%2C53%2C79%2C32%2C70%2C0%2C89%2C31%2C78%2C83%2C45%2C44%2C82%2C36%2C4%2C85%2C77%2C42%2C34%2C80%2C2%2C35%2C60%2C40%2C99%2C43%2C75%2C65%2C105%2C57%2C56%2C30%2C92%2C55%2C52%2C47%2C74%2C69%2C23%2C106"
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
	href="https://image.osulloc.com/kr/ko/static_renew/css/style/sub.css?ver=240628">


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
	data-requirecontext="_" data-requiremodule="TweenMax"
	src="https://image.osulloc.com/kr/ko/static/js/lib/TweenMax.min.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="gsap"
	src="https://image.osulloc.com/kr/ko/static/js/lib/jquery.gsap.min.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="utils"
	src="https://image.osulloc.com/kr/ko/static/js/utils.js?ver=230704"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/645486124/?random=1720064304042&amp;cv=11&amp;fst=1720064304042&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be4730v9173972193za200&amp;gcd=13l3l3l3l1&amp;dma=0&amp;tag_exp=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.osulloc.com%2Fkr%2Fko%2Fmypage%2Freservation%2Fdetail%2FOSL202407040008&amp;ref=https%3A%2F%2Fwww.osulloc.com%2Fkr%2Fko%2Flogin%2FnonMember%3Fgnb%3Dreservation&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%98%88%EC%95%BD%EC%83%81%EC%84%B8%EB%82%B4%EC%97%AD%20%7C%20%EC%98%A4%EC%84%A4%EB%A1%9D&amp;npa=0&amp;pscdl=noapi&amp;auid=1774105865.1719987314&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%252FA)Brand%3B8.0.0.0%7CChromium%3B126.0.6478.127%7CGoogle%2520Chrome%3B126.0.6478.127&amp;uamb=0&amp;uam=&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;fledge=1&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="ui"
	src="https://image.osulloc.com/kr/ko/static/js/ui.js?ver=230704"></script>
<script type="text/javascript" charset="UTF-8" defer=""
	src="https://kn.acrosspf.com/adn_check_1.0.2.ad?rb_adn_uid=rb-adn-1-28c50218934857c1b07a31ae33ca0186"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="utils/fontSpy"
	src="https://image.osulloc.com/kr/ko/static/js/utils/fontSpy.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="utils/nav"
	src="https://image.osulloc.com/kr/ko/static/js/utils/nav.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="modal"
	src="https://image.osulloc.com/kr/ko/static/js/lib/jquery.modal.min.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="_"
	src="https://image.osulloc.com/kr/ko/static/js/lib/underscore-min.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="datepicker"
	src="https://image.osulloc.com/kr/ko/static/js/lib/jquery-ui.datepicker.min.js?ver=230704"></script>
<script type="text/javascript" charset="utf-8" async=""
	data-requirecontext="_" data-requiremodule="slick"
	src="https://image.osulloc.com/kr/ko/static/js/lib/slick.min.js?ver=230704"></script>
</head>





<body class="is_hover">
	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://www.osulloc.com/kr/ko"> <a
		itemprop="sameAs" href="https://brand.naver.com/osulloc"></a> <a
		itemprop="sameAs" href="https://www.instagram.com/osulloc_official/"></a>
		<a itemprop="sameAs"
		href="https://www.youtube.com/channel/UC27q_WWuOkdyNIr7M_6trvA"></a>
	</span>

	<!-- 오설록 RENEW STDD css/js -->
	<link rel="stylesheet"
		href="https://image.osulloc.com/kr/ko/static_cdj/others/css/stdd_common.css">
	<link rel="stylesheet"
		href="https://image.osulloc.com/kr/ko/static_cdj/others/css/stdd_mypage.css?ver=20230630">
	<script
		src="https://image.osulloc.com/kr/ko/static_cdj/others/js/stdd_common.js"
		type="text/javascript"></script>


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
	var AP_DATA_PAGETYPE = 'MY';
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
	<!-- leo tagging 공통 변수 선언 -->



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


	<div id="wrap">
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
								<a href="${pageContext.request.contextPath}/home"
									class="logo_white"> <img
									src="${pageContext.request.contextPath}/resources/image.osulloc.com/kr/ko/static_cdj/images/main/logo_white.png"
									alt="오설록 로고" style="user-select: none;">
								</a> <a href="${pageContext.request.contextPath}/home"
									class="logo_black"> <img
									src="${pageContext.request.contextPath}/resources/image.osulloc.com/kr/ko/static_cdj/images/main/logo_black.png"
									alt="오설록 로고" style="user-select: none;">
								</a>
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
																	class="link_text"
																	data-track-name="GNB 오설록|Tea Shop|허브티">허브티</a></li>







																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=250"
																	class="link_text"
																	data-track-name="GNB 오설록|Tea Shop|밀크티/아이스티">밀크티/아이스티</a></li>



																<li class="item_dep3"><a
																	href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&amp;line=252"
																	class="link_text"
																	data-track-name="GNB 오설록|Tea Shop|콤부차">콤부차</a></li>







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
									href="https://www.osulloc.com/kr/ko/shop/cart"
									id="x-gnb-cart-m" data-track-name="Header 장바구니"
									data-gnb-role="cart"><span class="num">0</span></a></li>
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
									href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/mypage/reservation/detail/OSL202407040008"
									data-track-name="Header 로그인">로그인</a>
									<ul class="drop_box drop_box2">
										<li class="drop_item"><a
											href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/mypage/reservation/detail/OSL202407040008"
											data-track-name="Header 로그인">로그인</a></li>
										<li class="drop_item"><a href="/kr/ko/login/joinIn"
											title="새 창" target="_self" data-track-name="Header 회원가입">회원가입</a></li>
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
									<em class="searchDateDiv"> 24. 07. 04 기준 </em>
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
									<em class="searchDateDiv"> 24. 07. 04 기준 </em>
								</div>
								<ul class="new_list">
									<li class="no_result">최근 검색어가 없습니다.</li>
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
										<div class="swiper-wrapper"
											style="transition-duration: 300ms;">
											<div class="swiper-slide swiper-slide-duplicate"
												data-swiper-slide-index="0"></div>
											<div class="swiper-slide" data-swiper-slide-index="0">


											</div>
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
										<p class="log date searchDateDiv">24. 07. 04 기준</p>
									</div>
									<div id="tab02" class="tabCnt" style="display: none;">
										<ul class="new_list">
											<li class="no_result">최근 검색어가 없습니다.</li>
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
			<div class="dim_bg"></div>

			<!-- 모바일 NAV : S  -->
			<aside class="cdj_mo_nav">
				<!-- 모바일 메뉴 헤터 : S -->
				<div class="mo_nav_header in">


					<!-- 로그인 전 : S -->
					<div class="logOut_top_box">
						<a
							href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/mypage/reservation/detail/OSL202407040008"
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
		var chkCid = "449686334.1719986345";
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
		<main id="main"
			class="main cdj_renew stdd_mypage_reservation_wrap osl_stdd_common_wrap"
			role="main">







			<!-- pc용 마이페이지 메뉴 : S -->
			<div class="w1200 pcBlock">
				<nav class="my_nav">
					<ul class="nav_list_dep1">
						<li class="item_dep1"><a href="/kr/ko/mypage/order/normal"
							class="link_text">주문/예약관리</a>
							<div class="box">
								<ul class="nav_list_dep2">
									<li class="item_dep2"><a href="/kr/ko/mypage/order/normal"
										class="link_text">주문/배송 조회</a></li>
									<li class="item_dep2"><a
										href="/kr/ko/mypage/order/otherThenList" class="link_text">취소/반품/교환
											조회</a></li>



									<li class="item_dep2"><a
										href="/kr/ko/mypage/reservation/list" class="link_text">예약
											조회</a></li>

									<li class="item_dep2"><a
										href="/kr/ko/mypage/present/receive" class="link_text">선물함</a>
									</li>
								</ul>
							</div></li>

						<li class="item_dep1"><a
							href="/kr/ko/mypage/subs/list?standingOrderType=A"
							class="link_text">정기배송</a>
							<div class="box">
								<ul class="nav_list_dep2">

									<li class="item_dep2"><a
										href="/kr/ko/mypage/subs/list?standingOrderType=A"
										class="link_text">정기배송</a></li>
								</ul>
							</div></li>

						<li class="item_dep1"><a href="/kr/ko/mypage/wishlist/list"
							class="link_text">활동내역</a>
							<div class="box">
								<ul class="nav_list_dep2">
									<li class="item_dep2"><a
										href="/kr/ko/mypage/wishlist/list" class="link_text">찜하기</a></li>
									<li class="item_dep2"><a
										href="/kr/ko/mypage/userHistory/list" class="link_text">히스토리</a>
									</li>
									<li class="item_dep2"><a
										href="/kr/ko/mypage/userReview/write" class="link_text">후기관리</a>
									</li>
								</ul>
							</div></li>
						<li class="item_dep1"><a href="/kr/ko/cs/member/benefit"
							class="link_text">나의 혜택</a>
							<div class="box">
								<ul class="nav_list_dep2">
									<li class="item_dep2"><a href="/kr/ko/cs/member/benefit"
										class="link_text">멤버십혜택</a></li>
									<li class="item_dep2"><a href="/kr/ko/mypage/coupon"
										class="link_text">보유 쿠폰</a></li>
									<li class="item_dep2"><a href="/kr/ko/beautypoint/list"
										class="link_text">뷰티포인트</a></li>
									<li class="item_dep2"><a href="/kr/ko/mypage/point"
										class="link_text">찻잎포인트</a></li>
								</ul>
							</div></li>
						<li class="item_dep1"><a
							href="/kr/ko/mypage/detail/profileCheck" class="link_text">정보관리</a>
							<div class="box">
								<ul class="nav_list_dep2">
									<li class="item_dep2"><a
										href="/kr/ko/mypage/detail/profileCheck" class="link_text">회원정보
											관리</a></li>
									<li class="item_dep2"><a href="/kr/ko/mypage/addressbook"
										class="link_text">배송지 관리</a></li>
								</ul>
							</div></li>
						<li class="item_dep1"><a href="/kr/ko/cs" class="link_text">고객센터</a>
							<div class="box">
								<ul class="nav_list_dep2">
									<li class="item_dep2"><a href="/kr/ko/cs/faq"
										class="link_text">자주찾는 질문</a></li>
									<li class="item_dep2"><a href="/kr/ko/mypage/qna"
										class="link_text">1:1 문의내역</a></li>
									<li class="item_dep2"><a href="/kr/ko/cs/notice"
										class="link_text">공지사항</a></li>
								</ul>
							</div></li>
					</ul>
					<div class="my_nav_bg"></div>
				</nav>
			</div>
			<!-- pc용 마이페이지 메뉴 : E -->





			<!-- 뷰 상단 : S -->
			<section class="section my_section">
				<div class="my_view_top">
					<div class="inner_box">
						<div class="top_box">
							<div class="left">
								<p class="text01">
									예약 번호 <span class="num">OSL202407040008</span>
								</p>

								<p class="text02">2024.07.05</p>
							</div>
							<div class="right">
								<!-- 상태에 따라 다르게 노출 됨 -->
								<ul class="state_list">
									<li class="item c3">예약완료</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- 뷰 상단 : E -->

			<!-- 컨텐츠 : S -->
			<section class="section my_section">
				<div class="my_order_prd_list">
					<div class="inner_box">
						<h3 class="my_order_tit no_border">
							<div class="left">
								<p class="text">예약상품</p>
							</div>
						</h3>
						<div class="order_prd_list">
							<div class="order_list_box">
								<ul class="list_type_2">
									<li class="list_item">
										<div class="thumb_con">
											<div class="img_box">
												<img
													src="https://image.osulloc.com/upload/kr/ko/adminImage/OE/RG/20230626124427735VU.jpg"
													alt="">
											</div>
											<div class="text_box">
												<p class="prd_name">제주 티뮤지엄</p>
												<p class="packing_state" style="font-weight: bold;">오설록
													티스톤 프리미엄 티코스</p>
												<ul class="info_txt_wrap">
													<c:forEach items="${products}" var="dto">
														<li><span class="title">날&nbsp;&nbsp;&nbsp;짜</span> <span
															class="txt">${dto.date}</span></li>

														<li><span class="title">시&nbsp;&nbsp;&nbsp;간</span><span
															class="txt">${dto.time}</span></li>
													</c:forEach>

												</ul>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="my_order_btn_box">
							<div class="btn_list">
								<div class="item">

									<!-- 예약신청 or 완료 / 결제완료 상태 일때 -->

									<div class="btn_box">
										<button class="btn_type01" type="button"
											onclick="location.href='/kr/ko/mypage/reservation/cancel/OSL202407040008';">예약취소</button>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<section class="section my_section my_order_info_wrap"
				id="form-order">
				<div class="inner_box">
					<div class="my_order_info_box">
						<h3 class="my_order_tit">
							<div class="left">
								<p class="text">예약자 정보</p>
								<input type="hidden" id="isCustomer" value="false">
							</div>
						</h3>
						<div class="con_box">
							<table class="my_table_type01">
								<caption>예약자 정보</caption>
								<colgroup class="mo">
									<col style="width: 90px;">
									<col>
								</colgroup>
								<colgroup class="pc">
									<col style="width: 140px;">
									<col>
								</colgroup>
								<tbody>
									<c:forEach items="${products}" var="dto">
										<tr>
											<th scope="row">
												<p class="left">예약자명</p>
											</th>
											<td>
												<p class="td_text">${dto.name}</p>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</section>

			<!--취소건 리스트 style-->
			<style>
.cdj_renew .pay_price_info .price_info .expected_price.cancel_list {
	margin-top: 15px;
	display: block;
}

.cdj_renew .pay_price_info .price_info .expected_price.cancel_list .item_name
	{
	padding-bottom: 0.5em;
}
</style>
			<section class="section">
				<div class="my_order_bottom_box">
					<div class="inner_box">
						<div class="my_dot_box">
							<h4>유의사항 :</h4>
							<br> - 10인 이상, 외국인 단체 예약, 임직원 할인은 전화문의 부탁드립니다. <br> -
							1회 티클래스 최대 정원은 14명으로 선착순 조기 마감될 수 있습니다. <br> - 티코스 시작 이후에는
							입장이 제한됩니다. <br> <br> - 투어는 야외로 진행되며, 노약자 또는 이동이 불편하신
							분들은 티스톤으로 사전 문의 바랍니다. <br> - 10세 이상부터 참여가능합니다. 단, 13세 미만의 경우
							아동 1명당 보호자 1인 동반 필수 입니다. <br> (어린이 동반 시, 나이를 확인할 수 있는 서류를 필히
							지참하시기바랍니다) <br> - 반려견 동반입장은 불가합니다 <br> - 특정 음식에 알러지가
							있으신 분은 클래스 시작 하루 전까지 티스톤으로 문의 바랍니다. <br> - 코로나 바이러스 감염 예방을
							위해, 일부 서비스를 제공하는 직원들이 마스크를 착용할 수 있습니다. <br> - 고객과 직원의 안전을 위한
							조치이오니 양해 부탁드립니다. <br> <br> - 문의전화 : 010-4568-5312 <br>
							- 상담시간 09:00~18:00(연중무휴) <br> - 점심시간 11:30~12:30 <br>

						</div>
					</div>
				</div>
			</section>
			<!-- 컨텐츠 : E -->
			<!-- CDJ 개선 마이페이지 예약배송조회 - 상세뷰 : E -->
		</main>

		<!-- footer -->








		<!--new_footer-->
		<div id="new_footer">
			<!--PC-->
			<div class="wrap1 m_pd15 hide_tablet hide_mobile">
				<div class="inner1600 clearfix">
					<div class="right">



						<a
							href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/mypage/reservation/detail/OSL202407040008"
							class="footer_login" data-track-name="Footer 로그인">로그인</a> <a
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
							data-track-name="Footer FAQ" class="footerFAQ"
							style="display: none;"> <img
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
						href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/mypage/reservation/detail/OSL202407040008"
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
	</div>

	<!-- sidenav -->
	<div id="match-media"></div>
	<div id="igm-blocker"></div>

	<!-- @render(last) { } = @section(last){} 내용  -->
	<script type="text/javascript"
		src="https://image.osulloc.com/kr/ko/static/js/mypage/main.js"></script>
	<script type="text/javascript">
</script>
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



	<a href="" class="goTop">위로 가기</a>
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

	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=494913268302940&amp;ev=PageView&amp;noscript=1">
	</noscript>



	<script type="text/javascript" id=""
		src="https://www.googletagmanager.com/gtag/js?id=AW-645486124"></script>


	<script type="text/javascript" id=""
		src="https://www.googletagmanager.com/gtag/js?id=DC-10125800"></script>




	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>

	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];</script>





	<script type="text/javascript" id="">function getADCookie(a){try{var b=document.cookie;if(0<b.length&&(startIndex=b.indexOf(a),-1!=startIndex))return startIndex+=a.length,endIndex=b.indexOf(";",startIndex),-1==endIndex&&(endIndex=b.length),unescape(b.substring(startIndex+1,endIndex))}catch(c){}return""}
function sendRequestFB(a){var b=!1;try{if("PageView"!=a.evt_name&&"InitiateCheckout"!=a.evt_name&&"CompleteRegistration"!=a.evt_name&&"ViewContent"!=a.evt_name&&"Search"!=a.evt_name&&"AddToCart"!=a.evt_name&&"Purchase"!=a.evt_name)return;a.event_source_url=window.location.href;a.action_source="website";Object.entries(a).map(function(c){return c.join("\x3d")}).join("\x26")}catch(c){}return b};</script>


	<script type="text/javascript" id="fb-pixel-pageload">try{"NOTHING"}catch(a){console.warn("AD_comm_pageload warning in GTM")};</script>

	<iframe allow="join-ad-interest-group" data-tagging-id="AW-645486124"
		data-load-time="1720064304048" height="0" width="0"
		src="https://td.doubleclick.net/td/rul/645486124?random=1720064304042&amp;cv=11&amp;fst=1720064304042&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be4730v9173972193za200&amp;gcd=13l3l3l3l1&amp;dma=0&amp;tag_exp=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.osulloc.com%2Fkr%2Fko%2Fmypage%2Freservation%2Fdetail%2FOSL202407040008&amp;ref=https%3A%2F%2Fwww.osulloc.com%2Fkr%2Fko%2Flogin%2FnonMember%3Fgnb%3Dreservation&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%98%88%EC%95%BD%EC%83%81%EC%84%B8%EB%82%B4%EC%97%AD%20%7C%20%EC%98%A4%EC%84%A4%EB%A1%9D&amp;npa=0&amp;pscdl=noapi&amp;auid=1774105865.1719987314&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%252FA)Brand%3B8.0.0.0%7CChromium%3B126.0.6478.127%7CGoogle%2520Chrome%3B126.0.6478.127&amp;uamb=0&amp;uam=&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;fledge=1&amp;data=event%3Dgtag.config"
		style="display: none; visibility: hidden;"></iframe>
	<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","AW-645486124");try{var criteoDeviceType="";criteoDeviceType="PC"==AP_DATA_CHANNEL?"d":"m";"main"==AP_DATA_PAGETYPE&&-1<document.location.href.indexOf("/kr/ko")&&criteo_q.push({event:"setAccount",account:72498},{event:"setSiteType",type:criteoDeviceType},{event:"viewHome"})}catch(a){}
try{if("APP"!=AP_DATA_CHANNEL){var mobionDevice="MOBILE"==AP_DATA_CHANNEL?"M":"W";(function(a,d,e,b,c){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};b=d.createElement(e);b.async=!0;b.defer=!0;b.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";c=d.getElementsByTagName(e)[0];c.parentNode.insertBefore(b,c)})(window,document,"script");enp("create","common","osulloc",{device:"B"});enp("send","common","osulloc")}}catch(a){};</script>


	<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","DC-10125800");</script>


	<script type="text/javascript" id="" charset="UTF-8">(function(a,b,c,d,e){a=b.createElement(c);a.type="text/javascript";a.async=!0;a.src="https://avd.innity.net/"+d+"/container_"+e+".js";b=b.getElementsByTagName(c)[0];b.parentNode.insertBefore(a,b)})(window,document,"script","750","5ed4ce0147e7045404000000");</script>

	<script type="text/javascript" id="">try{var evtId=(new Date).getTime()+Math.random().toString(36).substr(2,8);try{"APP"!=AP_DATA_CHANNEL&&fbq("track","PageView",{},{eventID:evtId})}catch(a){}var fbDataSet={},facebookId=google_tag_manager["rm"]["13218487"](53);fbDataSet.fbid=facebookId;fbDataSet.user_id=AP_DATA_GCID;fbDataSet.beauty_no=AP_DATA_CID;fbDataSet.evt_id=evtId;fbDataSet.evt_name="PageView";fbDataSet.fbp=getADCookie("_fbp");fbDataSet.fbc=getADCookie("_fbc");try{"APP"!=AP_DATA_CHANNEL&&sendRequestFB(fbDataSet)}catch(a){}}catch(a){console.log(a)};</script>


	<script type="text/javascript" id="">try{var adn_param=adn_param||[];adn_param.push([{ui:"103669",ut:"Home"}])}catch(a){};</script>

	<script type="text/javascript" id=""
		src="//fin.rainbownine.net/js/adn_tags_2.1.3.js"></script>
	<div id="criteo-tags-div" style="display: none;"></div>
	<iframe id="avdfi_1720064304077"
		src="javascript:'<html><body style=&quot;background:transparent&quot;></body></html>'"
		height="0" width="0" marginheight="0" marginwidth="0" frameborder="0"
		scrolling="no"
		style="width: 0px; height: 0px; border: 0px none; background: none; display: none;"></iframe>
	<div id="adn_container" style="display: none">
		<div id="adn_wrap_38714443842" style="display: none"></div>
	</div>




	<script type="text/javascript" id="" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript" id="">if(!wcs_add)var wcs_add={};wcs_add.wa="s_bf516546e48";if(!_nasa)var _nasa={};window.wcs&&(wcs.inflow(),wcs_do(_nasa));</script>


	<script type="text/javascript" id="">kakaoPixel("6763084706725607045").pageView();</script>

	<div style="display: none; visibility: hidden;">
		<script type="text/javascript">try{var TRS_AIDX=11965,TRS_PROTOCOL=document.location.protocol,TRS_URL=TRS_PROTOCOL+"//"+("https:"==TRS_PROTOCOL?"analysis.adinsight.co.kr":"adlog.adinsight.co.kr")+"/emnet/trs_esc.js";(function(a,b){a=document.createElement("script");a.type="text/javascript";a.async=!0;a.defer=!0;a.src="https:"==document.location.protocol?"https://analysis.adinsight.co.kr/emnet/trs_esc.js":"http://adlog.adinsight.co.kr/emnet/trs_esc.js";b=document.getElementsByTagName("body")[0];b.appendChild(a,b)})()}catch(a){console.log(a)};</script>
	</div>
	<script type="text/javascript" async="" defer=""
		src="https://analysis.adinsight.co.kr/emnet/trs_esc.js"></script>
</body>
</html>