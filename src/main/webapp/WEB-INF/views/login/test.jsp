<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>예약결제 | 오설록</title>
    <link rel="shortcut icon" sizes="192*192" href="https://image.osulloc.com/upload/kr/ko/favicon.ico">
    <link rel="apple-touch-icon" href="https://image.osulloc.com/upload/kr/ko/favicon114.png">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_renew/css/system/swiper.min.css">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static/css/style_product.css">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_renew/css/style/common.css?ver=231129_1">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static/css/style.css?ver=231101_1">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_renew/css/style/sub.css?ver=231108_1">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_renew/css/style/new_sub.css?ver=230411_1">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_cdj/css/style.css?ver=20240521">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_cdj/css/style2.css?ver=20231102_1">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_cdj/css/main.css">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_cdj/css/mypage1.css?ver=20240514_3">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_cdj/css/mypage2.css?ver=20240611_2">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_renew/css/style/ddis_mypage.css?ver=240223">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_cdj/search/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_cdj/search/css/renew_search.css?ver=20230915_1">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_cdj/others/css/stdd_common.css?ver=20230519_1">
    <link rel="stylesheet" href="https://image.osulloc.com/kr/ko/static_cdj/others/css/stdd_reservation.css?ver=20240521">
    <style>
        /* Add any custom styles here */
    </style>
</head>
<body>
    <div class="reservation_wrap osl_stdd_common_wrap cdj_renew">
        <header id="cdj_header" class="cdj_header">
            <div class="wrapper">
                <div class="inner_box">
                    <div class="left_box">
                        <h1 class="logo">
                            <a href="/kr/ko" class="logo_white"><img srcset="https://image.osulloc.com/kr/ko/static_cdj/images/main/logo_white.webp" src="https://image.osulloc.com/kr/ko/static_cdj/images/main/logo_white.png" alt="오설록 로고"></a>
                            <a href="/kr/ko" class="logo_black"><img srcset="https://image.osulloc.com/kr/ko/static_cdj/images/main/logo_black.webp" src="https://image.osulloc.com/kr/ko/static_cdj/images/main/logo_black.png" alt="오설록 로고"></a>
                        </h1>
                        <nav class="nav">
                            <ul class="nav_list_dep1">
                                <li class="item_dep1">
                                    <a href="https://www.osulloc.com/kr/ko/shop/item/list" class='link_text'>제품</a>
                                    <div class="nav_list_dep2_box">
                                        <div class="wrapper">
                                            <div class="flex_box">
                                                <ul class="nav_list_dep2">
                                                    <li class="item_dep2">
                                                        <a href="https://www.osulloc.com/kr/ko/shop/item/list/best/sale" class='link_text'>베스트</a>
                                                        <ul class="nav_list_dep3">
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list/best/sale" class='link_text'>위클리 베스트</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list/best/recommand" class='link_text'>베스트</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="item_dep2">
                                                        <a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop" class='link_text'>티 제품</a>
                                                        <ul class="nav_list_dep3">
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=198" class='link_text'>티 세트</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=201" class='link_text'>명차</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=197" class='link_text'>녹차/말차</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=249" class='link_text'>발효차/홍차</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=196" class='link_text'>블렌디드티</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=195" class='link_text'>허브티</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=250" class='link_text'>밀크티/아이스티</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=252" class='link_text'>콤부차</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="item_dep2">
                                                        <a href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery" class='link_text'>티푸드</a>
                                                        <ul class="nav_list_dep3">
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery&line=174" class='link_text'>과자/초콜릿</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery&line=178" class='link_text'>베이커리</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=bakery&line=251" class='link_text'>아이스크림</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="item_dep2">
                                                        <a href="https://www.osulloc.com/kr/ko/shop/teawareshop" class='link_text'>티웨어</a>
                                                        <ul class="nav_list_dep3">
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/teawareshop/use" class='link_text'>용도별</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/teawareshop/brand" class='link_text'>브랜드별</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="item_dep2">
                                                        <a href="https://www.osulloc.com/kr/ko/shop/item/list?category=themashop" class='link_text'>라이프스타일</a>
                                                        <ul class="nav_list_dep3">
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=themashop&line=202" class='link_text'>스킨케어</a></li>
                                                            <li class="item_dep3"><a href="https://www.osulloc.com/kr/ko/shop/item/list?category=teashop&line=228" class='link_text'>정기배송</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                                <div class="img_bnr">
                                                    <a href="https://www.osulloc.com/kr/ko/shop/item/bakery/21646"><img srcset="https://image.osulloc.com/upload/kr/ko/adminImage/XK/CR/20240229100150980BC.webp" src="https://image.osulloc.com/upload/kr/ko/adminImage/XK/CR/20240229100150980BC.jpg" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="item_dep1 no-child">
                                    <a href="https://www.osulloc.com/kr/ko/shop/item/gift" class='link_text'>선물추천</a>
                                </li>
                                <li class="item_dep1">
                                    <a href="https://www.osulloc.com/kr/ko/brandstory" class='link_text'>브랜드</a>
                                    <div class="nav_list_dep2_box">
                                        <div class="wrapper">
                                            <div class="flex_box">
                                                <ul class="nav_list_dep2">
                                                    <li class="item_dep2">
                                                        <a href="https://www.osulloc.com/kr/ko/brandstory" class='link_text'>오설록 스토리</a>
                                                    </li>
                                                    <li class="item_dep2">
                                                        <a href="/kr/ko/store-introduction/2" class='link_text'>제주 티뮤지엄</a>
                                                    </li>
                                                    <li class="item_dep2">
                                                        <a href="/kr/ko/store-introduction" class='link_text'>매장 소개 및 예약</a>
                                                    </li>
                                                </ul>
                                                <div class="img_bnr">
                                                    <a href="https://www.osulloc.com/kr/ko/shop/item/bakery/21646"><img srcset="https://image.osulloc.com/upload/kr/ko/adminImage/XK/CR/20240229100150980BC.webp" src="https://image.osulloc.com/upload/kr/ko/adminImage/XK/CR/20240229100150980BC.jpg" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="item_dep1 no-child">
                                    <a href="https://osulloc.biz/" class="link_text" target="_blank">단체 및 기업 구매</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="right_box">
                        <form style="display:none;" id="headerSearchForm" action="/kr/ko/shop/search/main/product" method="get" onsubmit="setSearchToSession()">
                            <input type="text" name="isSet" value="N">
                            <input type="text" name="q" id="header_search_Submit">
                            <input type="text" name="p" value="0">
                            <input type="text" name="size" value="24">
                            <input type="text" name="sort" value="ranked">
                            <input type="text" name="reviewType" value="">
                            <input type="text" name="searchType" id="inputSearchTypeSubmit" value="product">
                            <input type="text" name="tagSearchType" id="header_tagSearchType">
                        </form>
                        <ul class="nav_util">
                            <li class="item">
                                <div class="inpSrchWrap">
                                    <input type="text" placeholder="검색어를 입력해주세요." id="header_search_pc" class="header-search-list">
                                    <i id="search_itag_pc"></i>
                                </div>
                            </li>
                            <li class="item">
                                <a class="nav_util_icon icon_cart nav_cart nav_menu empty" href="https://www.osulloc.com/kr/ko/shop/cart" id="x-gnb-cart-m"><span class="num">0</span></a>
                            </li>
                            <li class="item item_icon_more">
                                <a class="nav_util_icon icon_more" id="btn_nav"></a>
                                <ul class="drop_box drop_box1">
                                    <li class="drop_item"><a href="https://www.osulloc.com/kr/ko/cs">고객센터</a></li>
                                    <li class="drop_item"><a href="https://www.osulloc.com/kr/ko/store-introduction">매장찾기</a></li>
                                    <li class="drop_item"><a href="https://www.osulloc.com/kr/ko/mypage">주문배송조회</a></li>
                                    <li class="drop_item"><a href="https://www.osulloc.com/kr/ko/login/nonMember?gnb=reservation">예약조회</a></li>
                                    <li class="drop_item"><a href="https://www.osulloc.com/kr/ko/beautypoint/list">뷰티포인트 추후적립</a></li>
                                </ul>
                            </li>
                            <li class="item item_icon_mo_nav">
                                <a class="nav_util_icon icon_mo_nav" href="#"></a>
                            </li>
                        </ul>
                        <ul class="nav_drop">
                            <li class="item">
                                <a href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/reservation/program/21">로그인</a>
                                <ul class="drop_box drop_box2">
                                    <li class="drop_item"><a href="https://www.osulloc.com/kr/ko/login?r=https://www.osulloc.com/kr/ko/reservation/program/21">로그인</a></li>
                                    <li class="drop_item"><a href="/kr/ko/login/joinIn" title="새 창" target="_self">회원가입</a></li>
                                </ul>
                            </li>
                            <li class="item arr">
                                KOREAN <span class="icon_drop_arr"></span>
                                <ul class="drop_box drop_box4">
                                    <li class="drop_item"><a href="/kr/ko">한국어</a></li>
                                    <li class="drop_item"><a href="https://us.osulloc.com">English</a></li>
                                    <li class="drop_item"><a href="https://www.osulloc.com/kr/zh">中文</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header_dim_bg" style="display:none;"></div>
        </header>
        <div class="pcHeaderBannerArea">
            <div class="searchArea">
                <div class="searchInnerArea">
                    <span class="srchbtnClose" id="search_close_pc"></span>
                    <div class="chartBox">
                        <div class="chartList">
                            <div class="tit">
                                <p>인기 검색어</p>
                                <em class="searchDateDiv">24. 07. 01 기준</em>
                            </div>
                            <ul class="popular_list"> </ul>
                        </div>
                        <div class="chartList chartNewList auto_complete">
                            <div class="tit">
                                <p>최근 검색어</p>
                                <em class="searchDateDiv">24. 07. 01 기준</em>
                            </div>
                            <ul class="new_list"></ul>
                            <p class="logDel">
                                <a href="javascript:deleteRecentSearches();">
                                    <i></i><span>검색 기록 삭제</span>
                                </a>
                            </p>
                        </div>
                        <div class="bannerBox" id="bannerBoxPc"></div>
                        <div class="chartAuto"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="moHeaderBannerArea" style="display:none;">
            <div class="searchArea">
                <div class="searchInnerArea">
                    <div class="searchBox">
                        <div class="inpWrap">
                            <input type="text" placeholder="검색어를 입력해주세요." id="header_search_mo" class="header-search-list">
                            <i id="search_itag_mo"></i>
                        </div>
                        <span class="srchClose" id="search_close_mo"></span>
                    </div>
                    <div class="listBox">
                        <div class="chartBox">
                            <div class="tab not_auto_complete">
                                <span class="tabLinks active" onclick="openTab(event, 'tab01')">인기 검색어</span>
                                <span class="tabLinks" onclick="openTab(event, 'tab02')">최근 검색어</span>
                            </div>
                            <div class="chartList not_auto_complete">
                                <div id="tab01" class="tabCnt" style="display: block;">
                                    <ul class="popular_list"></ul>
                                    <p class="log date searchDateDiv">24. 07. 01 기준</p>
                                </div>
                                <div id="tab02" class="tabCnt" style="display: none;">
                                    <ul class="new_list"></ul>
                                    <p class="log logDel">
                                        <a href="javascript:deleteRecentSearches();">
                                            <i></i><span>검색 기록 삭제</span>
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
    </div>
</body>
</html>
