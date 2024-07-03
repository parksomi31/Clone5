$(function(){
    /***********************공통기능***********************/
    //커스텀 셀렉트박스
    //20190810 수정 start
    function jsSelect(){
      if($('.js_select').length > 0){
        var i;
        $('.js_select').each(function(index){
          var _cont = $(this);
          var _val = _cont.find('.tit');
          var _optPack = _cont.find('ul');
          var _opts = _optPack.find(".name");
          _val.bind('click',function(){
        	  
        	  // 열려있는 창 모두 닫기
        	  $('.js_select').each(function(index_a){
        		  if (index != index_a){
        			  $(this).find('.tit').removeClass('on');
                      $(this).find('ul').removeClass('activate');
        		  }
        	  });
        	  
            _val.toggleClass('on');
            _optPack.toggleClass('activate');
          });
          _opts.each(function(index){
            var _this = $(this);
            _this.bind('click', function(){
              //event.preventDefault();
              var _optVal = _this.html();
              _val.html(_optVal);
              _val.removeClass('on');
              _opts.removeClass('on');
              _this.addClass('on');
              _optPack.removeClass('activate');
            });
          });
        });
      }
    }
    jsSelect();
    /* 리뷰쓰기 별점주기 스크립트 */
    if($(".starWrapper").length > 0){
      $(".starWrapper").each(function(){
        var _starCont = $(this);
        var _wrapper = _starCont.parent();
        var _handler = _starCont.find(".star");
        var _flag = null;
        _handler.each(function(index){
          $(this).bind("mouseenter", function(){
            var _i = parseInt(index + 1);
            _handler.removeClass("gave");
            _starCont.find(".star:lt(" + _i +")").addClass("on");
            _starCont.find(".star:gt(" + index +")").removeClass("on");
          }).bind("mouseleave", function(){
            if(_flag > 0){
              _starCont.find(".star:lt(" + _flag +")").addClass("gave");
              _wrapper.find(".value").text(_flag + "점");
            }
            _handler.removeClass("on");
          }).bind("click", function(){
            var _this = $(this);
            var _i = parseInt(index + 1);
            _flag = _i;
            _starCont.find(".star:lt(" + _i +")").addClass("gave");
            _wrapper.find(".value").text(_i + "점");
            $(this).addClass("twingkle");
            setTimeout(function(){_this.removeClass("twingkle");}, 50);
          });
        });
      });
    }

    /* 리뷰쓰기 체크리스트 */
    if( $(".qualityChecker").length > 0 ){
       $(".qualityChecker").each(function(){
         var _cont = $(this);
         var _checkList = _cont.find(".checkList");
         var _opts = _checkList.find("a");
         _opts.each(function(){
           $(this).bind("click", function(){
             _opts.removeClass("isChecked");
             $(this).addClass("isChecked");
           });
         });
       });
    }
    //20190810 수정 end
    //
    // 메인페이지 weekly best tap behavior
    if($(".js_radio").length > 0){
      $(".js_radio").each(function(){
        var _handler = $(this).find(".sortHandler");
        _handler.each(function(){
          $(this).bind("click", function(){
            _handler.removeClass("on");
            $(this).addClass("on");
          });
        });
      });
    }

    // 검색바 value 삭제
/*    if($('.search-bar').length > 0){
      $('.search-bar').each(function(){
        var _this = $(this);
        var _btnDeleteValue = _this.find(".btn-delete");
        var _placeHolder;
        _this.find('input').on( "change  paste keyup", function(){
          if(_this.find('input').val().length > 0){
            _btnDeleteValue.show();
          }
        }).bind('focusin', function(){
          _placeHolder = $(this).val();
          $(this).removeClass('placeholder');
          $(this).val('');
        }).bind('focusout', function(){
          var a =$(this).val();
          if(a.length <= 0){
            $(this).val(_placeHolder).addClass('placeholder');
          }
        });
        _btnDeleteValue.bind("click", function(){
          _this.find('input').val('');
          _this.find('input').val(_placeHolder).addClass('placeholder');
          _btnDeleteValue.hide();
        });
      });
    }*/
    /***********************헤더***********************/
    
    // gift shop tab
    function tab_giftshop(){
      if ($('.giftShopTab').length > 0) {
        var _tab = $('.giftShopTab');
        var _winW;
        var _header;
        var _v = 0;
        var _point;
        //var st = $(window).scrollTop();

        _winW = $(window).width();
        if (_winW > 1024) {
          _header = $('#osulloc_header');
        } else {
          _header = $('#m_header .m_gnb');
        }
        _v = _header.outerHeight();
        _point = _tab.offset().top - _v;

        function posY() {
          var st = $(window).scrollTop();
          if ( st > _point ) {
            if (!_tab.hasClass('fixed')){
              _tab.addClass('fixed');
              _tab.css('top', _v);
            }
          } else {
            if (_tab.hasClass('fixed')){
              _tab.removeClass('fixed');
              _tab.css('top', 'auto');
            }
          }
        }posY();

        $(window).on('scroll',function(){
          posY();
        });
        $(window).on('resize',function(){
          _tab.removeClass('fixed').css('top', 'auto');
          _winW = $(window).width();
            if (_winW > 1024) {
            _header = $('#osulloc_header');
          } else {
            _header = $('#m_header .m_gnb');
          }
          _v = _header.outerHeight();
          _point = _tab.offset().top - _v;
          posY();
        })
      }
    }

    $('.topFloatingBanner .bt-close').click(function() {
      $('.topFloatingBanner').hide();
      //gnbFloating();
    });
    //모바일 gnb
    var swiper1 = new Swiper('.swiper-container1', {
        slidesPerView:'auto',
        spaceBetween: 40
    });

    //PC Weekly Best
    //Weekly Best swiper 202003 수정 반영
    var swiper2 = new Swiper('.swiper-container2', {
      observer: true,
      observeParents: true,
      //slidesPerView: 5,
      slidesPerView: 'auto',
      roundLengths : true, //prevent blurry text
      spaceBetween: 50, 
      speed : 500,
      breakpoints: {
        // when window width is <= 
        480: {
          slidesPerView: 'auto',
          watchSlidesVisibility: true,
          spaceBetween: 15
        },
        768: {
          slidesPerView: 'auto',
          watchSlidesVisibility: true,
          spaceBetween: 20
        },
        1024: {
          slidesPerView: 'auto',
          watchSlidesVisibility: true,
          spaceBetween: 30
        },
        1400: {
          slidesPerView: 'auto',
          watchSlidesVisibility: true,
          spaceBetween: 40
        }
      },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
          el: '.swiper-pagination',
          type: 'progressbar',
        },
    });

    /* 모바일 Weekly Best
    var swiper3 = new Swiper('.swiper-container3', {
        slidesPerView: 'auto',
        freeMode: true,
        spaceBetween: 21,
        pagination: {
          el: '.swiper-pagination',
          type: 'progressbar',
        },
    });
    */
    //PC 다다상점
    
	var swiper4 = new Swiper('.swiper-container4', {
		slidesPerView: 1,
		spaceBetween: 30,
		speed :500,
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		pagination: {
			el: '.swiper-pagination',
			type: 'progressbar',
		},
	});

    /* 모바일 다다상점
    var swiper5 = new Swiper('.swiper-container5', {
        slidesPerView: 1,
        spaceBetween: 30,
        speed :500,
        pagination: {
          el: '.swiper-pagination',
          type: 'progressbar',
        },
    });
    */
    /* Tea ware shop 슬라이더 이미지 높이 리사이징 스크립트 */
    var _twConHeight;
    function twImgHeightResizer(){
      if( $(".store_box").length > 0 ){
        var _screen = $(window).width();
        var _cont;
        var _mb;
        var _imgLeftCont;
        var _imgRightCont;
        var _imgs;
         if(_screen > 1024){
          _cont = $(".cont3 .pc_slider");
          _mb = 30;
        }
        else{
          _cont = $(".cont3 .pc_slider");
          _mb = 7;
        }
        _imgLeftCont = _cont.find(".leftDiv");
        _imgRightCont = _cont.find(".rightDiv");
        _twConHeight = parseInt(_cont.find(".dummy").children().height());
        _cont.height(_twConHeight);

        _imgLeftCont.each(function(){
          _imgs = $(this).children();
            var a = _imgs.length;
            var b = a - 1;
            var c = _mb * b;
            var d = _twConHeight - c;
            _imgs.height(d / a);
        });
        _imgRightCont.each(function(){
          _imgs = $(this).children();
            var a = _imgs.length;
            var b = a - 1;
            var c = _mb * b;
            var d = _twConHeight - c;
            _imgs.height(d / a);
        });
      }
    }

    //모바일 인스타 팔로우업
    var fallowUp = new Swiper('.mobile_insta', {
      slidesPerView: 6,
      spaceBetween: 0,
      breakpoints: {
        // when window width is <= 480px
        480: {
          slidesPerView: 4,
          spaceBetween: 0
        },
        // when window width is <= 768px
        768: {
          slidesPerView: 4,
          spaceBetween: 0
        },
        // when window width is <= 1000px
        1024: {
          slidesPerView: 6,
          spaceBetween: 0
        }// when window width is <= 640px
      },
    });
    /***********************공통기능***********************/
    //탭기능(일반적인 탭)
    /*
    $(".js_tabs1 > li").bind('click', function () {
        var index = $(this).closest('li').index();
        $(".js_conts1").hide().eq(index).show();
        $(this).parent().find('li').removeClass('on');
        $(this).addClass('on');
    });
    */
    //탭기능2(일반적인 탭)
    /*
    $(".js_tabs2 > li").bind('click', function () {
        var index = $(this).closest('li').index();
        $(".js_conts2").hide().eq(index).show();
        $(this).parent().find('li').removeClass('on');
        $(this).addClass('on');
    });
    */
    //클릭시 on 토글(체크박스 등)
    $(document).on("click", ".js_on", function () {
        //event.preventDefault();
        $(this).toggleClass('on');
    });

    $('.certificationInfo a').bind('click', function(){
      //event.preventDefault();
      if($(this).parent().hasClass('show')){
        $(this).parent().removeClass('show');
      }
      else{
        $(this).parent().addClass('show');
      }
    });

  /* GNB 메뉴 토글 */
  if($('#new_header').length > 0){
    var _cont =  $('.pc_gnb');
    var _subMenu = $('.new_lnb');
    _cont.find('a').each(function(i){
      $(this).bind('mouseenter', function(){
        _cont.find('a').removeClass('on');
        _subMenu.removeClass('subMenuOn');
        $('.subclass').hide();
        $(".contactMenu").hide();
        _subMenu.find('.category-wrapper').removeClass('hover');
        _subMenu.find('.handler').removeClass('on');
        $(this).addClass('on');
        _subMenu.find('.cat' + i).addClass('hover');
        _subMenu.addClass('menuActivate');
      }).bind('mouseleave', function(){
        //$(this).removeClass('on');
      });

    });
    $('#new_header').bind('mouseleave', function(){
      _subMenu.removeClass('menuActivate');
      _cont.find('a').removeClass('on');
    });
    _subMenu.find('.category-wrapper').each(function(){
      $(this).bind('mouseenter', function(){
        _subMenu.find('.category-wrapper').removeClass('hover');
        $(this).addClass('hover');
      });
    });
  }

  /* 서브 메뉴 2뎁스메뉴 동작 */
  if($('.category-wrapper').length > 0){
    var cont = $('.category-wrapper');
    var handlers = cont.find('.handler');
    handlers.each(function(i){
      var _this = $(this);
      _this.bind('mouseenter', function(){
        //event.preventDefault();

        $('.pc_gnb a').removeClass('on');
        $('.pc_gnb a').eq(_this.parent().index()).addClass('on');
        $('.new_lnb').removeClass('subMenuOn');
        $('.subclass').hide();
        if(_this.hasClass('thirdMenuLink')){
          $('.new_lnb').addClass('subMenuOn');
          $('.subclass').hide();
          $('.subclass').eq($(this).index()).css("display", 'flex');
        }
      })
      /* .bind('mouseleave', function(){
      });
      */
    });
  }
  /* 페이지 스크롤링 */
  function fixedAnchorTab(){
    if($('.anchorTab').length > 0){
      var _stickyMenu = $('.anchorTab > .sort-bar');
      var _anchors = _stickyMenu.find('a');
      var _scroll = $(window).scrollTop();
      //var _header = $('#new_header');
      var _header;
      var _bnr = $('.topFloatingBanner');
      var _winW = $(window).width();
      var _menuH = _stickyMenu.outerHeight();
      var _v = 0;
      //var _objPosY = Math.floor( $('.itemIntroduceWrap').offset().top - 200 );
      var _objPosY;

      if (_winW > 1280) {
        _header = $('#cdj_header'); // CDJ개선 - header변경으로 인한 아이디값 수정
      } else {
        _header = $('#cdj_header'); // CDJ개선 - header변경으로 인한 아이디값 수정
      }
      if(_bnr.css('display') == 'none'){
        _v = _header.outerHeight();
      }
      else{
        _v = _header.outerHeight() + _bnr.height();
      }
      _objPosY = Math.floor( $('.itemIntroduceWrap').offset().top - _v );

      if(_scroll > _objPosY   ){
        _stickyMenu.parent().addClass('fixed');
        _stickyMenu.css('top', _v);
      }
      else{
        _stickyMenu.parent().removeClass('fixed');
        _stickyMenu.css('top', 0);
      }
      _anchors.each(function(index){
        var _obj = $($(this).attr("href"));
        var _objTop = _obj.offset().top - _v - _menuH - 1;
        var flag = $(this).attr("href").split('#anchor');
        if(_scroll > _objTop){
          _stickyMenu.find('a').removeClass('on');
          _stickyMenu.find('a').eq(flag[1] - 1).addClass('on');
        }
      });
    }
  }

  if($('.anchorTab').length > 0){
    var _stickyMenu = $('.anchorTab > .sort-bar');
    var _anchors = _stickyMenu.find('a');
    var _header;
    var _bnr = $('.topFloatingBanner');
    var _winW = $(window).width();
    var _v = 0;

    if (_winW > 1280) {
      _header = $('#cdj_header'); // CDJ개선 - header변경으로 인한 아이디값 수정
    } else {
      _header = $('#cdj_header'); // CDJ개선 - header변경으로 인한 아이디값 수정
    }
    if(_bnr.css('display') == 'none'){
      _v = _header.outerHeight();
    }
    else{
      _v = _header.outerHeight() + _bnr.height();
    }

    _anchors.each(function(index){
      var $this = $(this);
      var _target;
      var _posY;
      $this.on('click', function(e){
        e.preventDefault();
        _anchors.removeClass('on');
        $this.addClass('on');
        _target = $($this.attr('href'));
        _posY = _target.offset().top;
        $("html, body").animate({ scrollTop: _posY - _v - _stickyMenu.height() }, 300);
      });
    });

  }

  /* 상품 상세설명 접어보기 */
  if($(".btn-toggleBox").length > 0){
    var _viewRecommend = $(".contentsToggleBox");
    var _viewDetail;
    var _viewOptionPrd;
    if ($(".detail_default_info").children().length > 0) {
      _viewDetail = $(".detail_default_info").children().not(".default_info_box").not("style");
    }
    if ($(".option-product-wrapper").length > 0) {
      _viewOptionPrd = $(".option-product-wrapper");
    }

    $(".btn-toggleBox").on("click", function(e){
      e.preventDefault();
      var $this = $(this);
      if($this.hasClass("hideContents")){
        $this.removeClass("hideContents");
        $this.text("상품 상세 접어보기");
        _viewRecommend.show();
        if ( _viewDetail !== undefined && _viewDetail.length > 0 ) _viewDetail.show();
        if ( _viewOptionPrd !== undefined && _viewOptionPrd.length > 0 ) _viewOptionPrd.show();
      }
      else{
        $this.addClass("hideContents");
        $this.text("상품 상세 펼쳐보기");
        _viewRecommend.hide();
        if ( _viewDetail !== undefined && _viewDetail.length > 0 ) _viewDetail.hide();
        if ( _viewOptionPrd !== undefined && _viewOptionPrd.length > 0 ) _viewOptionPrd.hide();
      }
    });
  }
  /* 모바일용 하단 플로팅 버튼이 있을 경우 푸터 아래 여백 추가 */
  /* 2019.08.20 modified */
  function initFloatingWrapper(){
    if($(".bottom-fnc-wrapper").length > 0){
      var _floatingContainer = $(".fixed-wrapper");
      var _btnClose = $(".btn-closeBuyPanel");
      var _btnShow = $(".btn-openBuyPanel");
      if(_floatingContainer.css("display") == "block"){
          $('body').css("paddingBottom", "49px");
          //if($('.goTop').hasClass('show')){
            $('.goTop').css("bottom", 75);
          //}
          _btnShow.bind("click", function(){
            //event.preventDefault();
            _floatingContainer.addClass("full-size-wrapper");
            $('html, body').css('overflow','hidden');
          });
          _btnClose.bind("click", function(){
            //event.preventDefault();
            _floatingContainer.removeClass("full-size-wrapper");
            $('html, body').css('overflow-y','auto');
          });
      }
      else{
        $('body').css("paddingBottom", 0);
        $('.goTop').css("bottom", 27);
      }

      var $winW = $(window).innerWidth();
      $(window).on('resize', function(){

        var $resizedW = $(window).innerWidth();
        if ( $winW != $resizedW ) {
          if ( _floatingContainer.hasClass("full-size-wrapper") ) {
            _floatingContainer.removeClass("full-size-wrapper");
            $('html, body').css('overflow-y','auto');
          }
        }
      })
    }
  }
  /* 2019.08.20 modified start */
  // function animateScroller(obj){
  //   //var _header = $('#new_header');
  //   var _header;
  //   var _bnr = $('.topFloatingBanner');
  //   var _v = 0;
  //   var _stickyMenu = $('.anchorTab > .mSort-bar');
  //   var _target = $(obj);
  //   var _posY = _target.offset().top;

  //   if (_winW > 1280) {
  //     _header = $('#w_gnb');
  //   } else {
  //     _header = $('#m_header .m_gnb');
  //   }
  //   if(_bnr.css('display') == 'none'){
  //     _v = _header.outerHeight();
  //   } else{
  //     _v = _header.outerHeight() + _bnr.height();
  //   }
  //   $("html, body").animate({ scrollTop: _posY - _v - _stickyMenu.height() }, 300);
  // }
  if($('.anchorTab > .mSort-bar').length >0){
    var _header;
    var _bnr = $('.topFloatingBanner');
    var _v = 0;
    var _stickyMenu = $('.anchorTab > .mSort-bar');
    var _target;
    var _posY;

    if (_winW > 1280) {
      _header = $('#w_gnb');
    } else {
      _header = $('#m_header .m_gnb');
    }
    if(_bnr.css('display') == 'none'){
      _v = _header.outerHeight();
    } else{
      _v = _header.outerHeight() + _bnr.height();
    }

    $('.anchorTab > .mSort-bar').each(function(){

      var _opt = $(this).find('.name');
      _opt.each(function(){
        var $this = $(this);
        $this.on('click', function(){
          //event.preventDefault();
          _opt.removeClass('on');
          $this.addClass('on');
        });
      });

      // var _anchorMenu = $(this).find('.anchorTarget');
      // $('.anchorTab > .mSort-bar')
      var _anchorMenu = $('.anchorTab > .mSort-bar').find('.anchorTarget');
      if (_anchorMenu.length > 0) {
        _anchorMenu.each(function(){
          var $this = $(this);
          $this.on('click', function(){
            _anchorMenu.removeClass('on');
            $this.addClass('on');
            _target = $($this.attr('href'));
            _posY = _target.offset().top;
            $("html, body").animate({ scrollTop: _posY - _v - _stickyMenu.height() }, 300);
          });
        });
      }
    });
  }
  /* 2019.08.20 modified end */
  if($('.filterGroup').length >0){
    var _all = $('.filterGroup > .all');
    var _filters = $('.filterGroup > .filter');
    var _fCount = _filters.length;
    var _flag = 0;
    _all.bind('click', function(){
      //event.preventDefault();
      if($(this).hasClass('on')){
        _filters.removeClass('on');
        $(this).removeClass('on');
      }
      else{
        _filters.removeClass('on');
        $(this).addClass('on');
      }
    });
    _filters.each(function(i){
      $(this).bind('click', function(){
        //event.preventDefault();
        if(!$(this).hasClass('on')){
          _flag++;
          $(this).addClass('on');
        }
        else{
          _flag--;
          $(this).removeClass('on');
        }
        if(_flag == _fCount){
          _filters.removeClass('on');
          _all.addClass('on');
        }
        else{_all.removeClass('on')}
      });
    });
  }
  if($(".sub-lnb").length > 0){
    var _handler = $(".sub-lnb .handlers");
    _handler.each(function(index){
      var _this = $(this);
      _this.bind('mouseenter', function(){
        _handler.removeClass('on');
        _this.addClass('on');
      }).bind('mouseleave', function(){
        _this.removeClass('on');
      });
    });
    $(".sub-thirdMenu a").each(function(){
      $(this).bind("click", function(){
        $(".sub-thirdMenu a").removeClass("on");
        $(this).addClass("on");
      });
    });
  }

  /* 모바일GNB 메뉴 높이조절 */
  function initMgnbSize(){
    var _wHeight = $(window).height();
    var _wWidth = $(window).width();
    var _hh = $('.topWrapper').height();
    var _mnBox = $('.frontMenu, .middleMenu');
    var _vh = _wHeight - _hh;
    if(_wWidth > 460){
      //$('.mMenuLayer').css({'width': '460px', 'left': '-460px'});
    }
    else{
      //$('.mMenuLayer').css({'width': _wWidth, 'left': -_wWidth});
    }
    if(_vh < 440){
      //$('.frontMenu').addClass('mh');
    }
    else{
      //$('.frontMenu').removeClass('mh');
    }
    //_mnBox.css('height', _vh);

  }
  /* 모바일 GNB 마이페이지 토글 */
  $('.btn-toggleMyPage').bind('click', function(){
    var _myPageCont = $('.mMenuLayer');
    if(!_myPageCont.hasClass('activated')){
      _myPageCont.addClass('activated');
     // initMgnbSize();
    }
    else{
      _myPageCont.removeClass('activated');
    }
  });
  /* 2뎁스 메뉴 토글 */
  $('.frontMenu .list > a').each(function(index){
    var _this = $(this);
    _this.bind('click', function(){
      $('.frontMenu .list > a').removeClass('on');
      $('.middleMenu > ul').hide();
      _this.addClass('on');
      $('.middleMenu > ul').eq(index).show();
    });
  });
  /* 3뎁스 메뉴 토글 */
  $('.handler').each(function(index){

    $(this).bind('click', function(){
      if($(this).hasClass('on')){
          $(this).removeClass('on');
      }
      else{
        $('.handler').removeClass('on');
        $(this).addClass('on');
      }
    });
  });
  
  /* 모바일 GNB 열기 닫기 */
  function mgnbClose(){
    $('body > .dimmed').remove();
    $('.mMenuLayer').removeClass("show");
    $("body").removeClass("layer_open");
  }
  $('.m_hamberger').bind('click', function(){
    //var _screenWidth = $(window).width();
    //if(_screenWidth < 460){
        //$('.mMenuLayer').css('transform', 'translateX('+ _screenWidth +'px)');
    //}
    //else{
      //$('.mMenuLayer').css('transform', 'translateX(460px)');
    //}
	  
	$(".mMenuLayer").addClass("show");
	$("body").addClass("layer_open");
    $('body').append("<div class='dimmed' style='position:fixed;top:0;left:0;bottom:0;width:100%;background:rgba(0,0,0,0.5);z-index:999998;'></div>");
  });
  $('.mMenuLayer .btn-closeMenu').bind('click', function(){ mgnbClose(); });
  /* goTop */
  function jumpTop(){
      var _posY =  $(window).scrollTop();
      if($(".diyType").length > 0){
        $("body").addClass("diyGiftShop");
      }
      if( _posY > 300 ){
        $(".goTop").addClass("show");
      }
      else{
        $(".goTop").removeClass("show");
      }
  }
  if(! $(".goTop").length > 0 ){
    var _sh = parseInt( $(window).height() + 200 );
    var _bh = $('body').height();
    if(_bh > _sh){
      $("body").append("<a href='' class='goTop'>위로 가기</a>");
      $(".goTop").bind('click', function(e){
        e.preventDefault();
        var position = $("body").offset().top;
        $("html, body").animate({ scrollTop: position }, 300);
      //  return false;
      });
      jumpTop();
    }
  }

  $(".btn-gnbMore").bind('mouseenter', function(){
    var _this = $(".contactMenu");
      _this.show();
  });
  $(".contactMenu").bind('mouseleave', function(){
      $(this).hide();
  });
  
  function leaf(){
	    var _input1 = $('#widthPer');
	    var _input2 = $('#progress');
	    if($('#progress').length > 0){//해당 ID 있을 경우만
	    	var _cont = $('#'+_input2[0].value);
	    	var _countIn = $('#countIn');
	    	initLeafBar(_input1[0].value, _cont, _countIn.value);
		  }
	    }

/* 메인페이지 쿠폰지급 그래프 */
/* 2019.08.21 modified start */
function initLeafBar(p, obj, countIn){
var _cont = $(obj);
var _progress = _cont.find('.bar');
var _wrapper = _cont.find('.wrapper');
var _p = p;
var _countIn = countIn;

_wrapper.width(_p + '%');
_progress.width(_cont.width());

if(_cont.hasClass("type2")){
  if(_p >= 80.5){
    //console.log('500 개 달성');
    _cont.attr('class', 'leaf-bar type2');
    _cont.addClass('case3');
    _cont.find('.c1').text(_countIn);
    _cont.find('.c2').text(_countIn);
    _cont.find('.c3').text(_countIn).append('개<br>달성');
  }
  else if(_p >= 47){
      //console.log('200개 달성');
      _cont.attr('class', 'leaf-bar type2');
      _cont.addClass('case2');
      _cont.find('.c1').text(_countIn);
      _cont.find('.c2').text(_countIn).append('개<br>달성');
      _cont.find('.c3').text(_countIn);
  }
  else{
    if(_p >= 14){
      //console.log('100개 달성');
      _cont.attr('class', 'leaf-bar type2');
      _cont.addClass('case1');
      _cont.find('.c1').text(_countIn).append('개<br>달성');
      _cont.find('.c2').text(_countIn);
      _cont.find('.c3').text(_countIn);
    }
    else{
      _cont.attr('class', 'leaf-bar  type2');
      _cont.addClass('case0');
    }
  }
}else if(_cont.hasClass("type4")){//뭉치면할인 4단계일경우 추가 
  if(_p >= 90){
    //console.log('500 개 달성');
    _cont.attr('class', 'leaf-bar type4');
    _cont.addClass('case4');
    _cont.find('.c1').text(_countIn);
    _cont.find('.c2').text(_countIn);
    _cont.find('.c3').text(_countIn);
    _cont.find('.c4').text(_countIn).append('개<br>달성');
  }
  else if(_p >= 63){
      //console.log('200개 달성');
      _cont.attr('class', 'leaf-bar type4');
      _cont.addClass('case3');
      _cont.find('.c1').text(_countIn);
      _cont.find('.c2').text(_countIn);
      _cont.find('.c3').text(_countIn).append('개<br>달성');
      _cont.find('.c4').text(_countIn);
  }
  else if(_p >= 36.5){
      //console.log('200개 달성');
      _cont.attr('class', 'leaf-bar type4');
      _cont.addClass('case2');
      _cont.find('.c1').text(_countIn);
      _cont.find('.c2').text(_countIn).append('개<br>달성');
      _cont.find('.c3').text(_countIn);
      _cont.find('.c4').text(_countIn);
  }
  else{
    if(_p >= 10){
      //console.log('100개 달성');
      _cont.attr('class', 'leaf-bar type4');
      _cont.addClass('case1');
      _cont.find('.c1').text(_countIn).append('개<br>달성');
      _cont.find('.c2').text(_countIn);
      _cont.find('.c3').text(_countIn);
      _cont.find('.c4').text(_countIn);
    }
    else{
      _cont.attr('class', 'leaf-bar  type4');
      _cont.addClass('case0');
    }
  }
}
else{
  if(_p >= 63.4){
      if(_p >= 90.8){
      //console.log('1000 개 달성');
      _cont.attr('class', 'leaf-bar');
      _cont.addClass('case5');
      _cont.find('.c5').text(_countIn).append('개<br>달성');
      }
      else{
        //63.5~99.9
        //console.log('700개 달성');
        _cont.attr('class', 'leaf-bar');
        _cont.addClass('case4');
        _cont.find('.c1').text(_countIn);
        _cont.find('.c2').text(_countIn);
        _cont.find('.c3').text(_countIn);
        _cont.find('.c4').text(_countIn).append('개<br>달성');
        _cont.find('.c5').text(_countIn);
      }
  }
  else if(_p >= 27.5){
    if(_p >= 45.5){
      //45.5~63.3
      //console.log('500개 달성');
      _cont.attr('class', 'leaf-bar');
      _cont.addClass('case3');
      _cont.find('.c1').text(_countIn);
      _cont.find('.c2').text(_countIn);
      _cont.find('.c3').text(_countIn).append('개<br>달성');
      _cont.find('.c4').text(_countIn);
      _cont.find('.c5').text(_countIn);
    }
    else if (_p >= 26.7){
      //27.5~45.4
      //console.log('200개 달성');
      _cont.attr('class', 'leaf-bar');
      _cont.addClass('case2');
      _cont.find('.c1').text(_countIn);
      _cont.find('.c2').text(_countIn).append('개<br>달성');
      _cont.find('.c3').text(_countIn);
      _cont.find('.c4').text(_countIn);
      _cont.find('.c5').text(_countIn);
    }
  }
  else{
      if(_p >= 9.5){
        //9.5~27.4
        //console.log('100개 달성');
        _cont.attr('class', 'leaf-bar');
        _cont.addClass('case1');
        _cont.find('.c1').text(_countIn).append('개<br>달성');
        _cont.find('.c2').text(_countIn);
        _cont.find('.c3').text(_countIn);
        _cont.find('.c4').text(_countIn);
        _cont.find('.c5').text(_countIn);
      }
      else{
        //0~9.4
        //console.log('구매 횟수가 부족합니다.');
        _cont.attr('class', 'leaf-bar');
        _cont.addClass('case0');
      }
  }
}
}  /* 2019.08.21 modified end */

  /*
  if($('.leaf-bar').length > 0){
      var _wrapper = $('.leaf-bar .wrapper');
      var _t = $('.leaf-bar').width();
      var _p = _wrapper.width() * 100 / _t;
      //initLeafBar(_p, obj);
  }
  */

//  $('#testBtn').bind('click', function(){
//      var _input1 = $('#testIpt');
//      var _input2 = $('#testObjId');
//      var _cont = $('#'+_input2[0].value);
//      initLeafBar(_input1[0].value, _cont);
//    });
  function fixedMenu(){ //210222 수정
    if($('.fixedMenu').length > 0){
      var _stickyMenu = $('.fixedMenu');
      var _scroll = $(window).scrollTop();
      //var _header = $('#new_header');
      var _header = $('#m_header .m_gnb');
      var _bnr = $('.topFloatingBanner');
      var _v = 0;
      //var _objPosY = Math.floor( $('.fixedMenu-anchor').offset().top) - 100;
      var _objPosY;
      if($(window).width() < 1025){
        
        if(_bnr.css('display') == 'none'){
          _v = _header.outerHeight();
        } else {
          _v = _header.outerHeight() + _bnr.height();
        }
        _objPosY = Math.floor( $('.fixedMenu-anchor').offset().top) - _v;

        if(_scroll > _objPosY){
          _stickyMenu.addClass('fixed');
          _stickyMenu.css('top', _v);
        } else {
          _stickyMenu.removeClass('fixed');
        }
      }
    }
  }
  function initLeafBarWidth(){
    var _cont = $('.leaf-bar');
    var _progress = _cont.find('.bar');
    _progress.width(_cont.width());
  }
  function shopListWrapChecker(){
    var _item = $('.list-wrapper .item');
    var _itemLength =  _item.length;
    var _contWidth = $(window).width();
    _item.removeClass('x');
    /*
    if(_contWidth > 1300){
      var _rows = _itemLength / 4;
      var v = (Math.floor(_rows) * 4);

      if(Math.floor(_rows) == _rows){
        for (i = v-4; i <= _itemLength; i++){
          _item.eq(i).addClass('x');
        }
      }
      else{
        for (i = v; i <= _itemLength; i++){
          _item.eq(i).addClass('x');
        }
      }
    }
    else{
      var _rows = _itemLength / 2;
      var v = (Math.floor(_rows) * 2);
      if(Math.floor(_rows) == _rows){
        for (i = v-2; i <= _itemLength; i++){
          _item.eq(i).addClass('x');
        }
      }
      else{
        for (i = v; i <= _itemLength; i++){
          _item.eq(i).addClass('x');
        }
      }
    }
     */
     var _rows = _itemLength / 4;
     var v = (Math.floor(_rows) * 4);

     if(Math.floor(_rows) == _rows){
       for (i = v-4; i <= _itemLength; i++){
         _item.eq(i).addClass('x');
       }
     }
     else{
       for (i = v; i <= _itemLength; i++){
         _item.eq(i).addClass('x');
       }
     }
  }
  if($('.brand-tab').length > 0 ){
    $('.brand-tab').each(function(){
      var _this = $(this);
      _this.find('a').each(function(){
        $(this).bind('click', function(){
          //event.preventDefault();
          _this.find('a').removeClass('on');
          $(this).addClass('on');
        });
      });
    })
  }
  if($('.m-sideBar-tab').length > 0){
    $('.m-sideBar-tab > a').each(function(index){
      var _this = $(this);
      var _con = $(this).parent().parent();
      var _toggleBox = _con.find('.obs');
      _this.bind('click', function(){
        //event.preventDefault();
        $('.m-sideBar-tab > a').removeClass('on');
        $(_toggleBox).removeClass('on');
        _toggleBox.eq(index).addClass('on');
        _this.addClass('on');
      });
    });
  }
  if($('.searchFilter').length > 0){
    $('.searchFilter > a').each(function(){
      var _this = $(this);
      _this.bind('click', function(){
        //event.preventDefault();
        if(_this.hasClass('on')){
          _this.removeClass('on');
        }
        else{
          _this.addClass('on');
        }
      })
    });
  }
  if($('.icheck_flat').length > 0){//해당 CLASS 있을 경우만
  $('.icheck_flat').icheck({
    checkboxClass: 'icheckbox_flat-green',
    radioClass: 'iradio_flat-green',
    area: '20%' // optional
  });
  }
  if($('.option-bar').length > 0){
    $('.option-bar').each(function(){
      var _cont = $(this);
      var _handler = _cont.find('.valueBox');
      var _subOption = $(this).next().find('.tit');
      
      _handler.bind('click', function(){
        //event.preventDefault();
    	//입점몰 상품관리_클릭한option창을 제외하고 열려있는 창 모두 닫기
    	$('.option-bar').not(_cont).removeClass('open');
    	
        if(_cont.hasClass('open')){
        	_cont.removeClass('open');
        }
        else{
          _cont.addClass('open');
         //클릭한option창을 제외하고 열려있는 창 모두 닫기
         if(_subOption.hasClass('on')){
        	 _subOption.removeClass('on');
        	 _subOption.next().removeClass('activate');
         }
        }
      });
    });
  }
  if($('.selected-item').length > 0){
    $(".selected-item").each(function(index){
      var _this = $(this);
      var _del = _this.find('.btn-deleteItem');
      _del.bind('click', function(){
        //event.preventDefault();
        _this.remove();
      });
    });
  }
  /* 텍스트에리어 placeholder */
/*  if($("textarea").length > 0){
    $("textarea").each(function(){
      var _this = $(this);
      var _oldVal = _this.text();
      _this.bind("focusin", function(){
        _this.text('');
      }).bind("focusout", function(){
        _this.text(_oldVal);
      });
    });
  }*/
  /* 레이어 팝업 닫기, 세로 스크롤 관련 높이값 수정 스크립트 */
  if($(".popupWrapper").length > 0){
    var _layer = $(".popupWrapper");
    var _btnClose = _layer.find(".btnCloseLayer");
    _btnClose.each(function(){
      $(this).on("click", function(){
        _layer.removeClass("open");
        // 2019-09-10 레이어 팝업닫은 후 body auto
        $("html, body").css({
          "overflow-y": "auto"
        });
      });
    });
  }

  // 구 modal iOS 외부 스크롤 방지
	// $('.jquery-modal').on('shown.bs.modal', function () {
  //   var $body = $('html, body');
  //   var scrollY = window.scrollY;
  //   $body.css({
  //     'position' : 'fixed',
  //     'top' :  - scrollY + "px",
  //     'left' : '0',
  //     'right' : '0',
  //     'overflow' : 'hidden'
  //   });
	// });
	// $('.jquery-modal').on('hidden.bs.modal', function () {
	// 	var $body = $('html, body');
  //   var scrollY = $body.style.top;
  //   $body.css({
  //     'position' : '',
  //     'top' :  '',
  //     'left' : '',
  //     'right' : '',
  //     'overflow' : '',
  //     'overflow-y' : 'auto'
  //   });
	// 	window.scrollTo(0, parseInt(scrollY || '0') * -1);
	// });

  leaf();
  initMgnbSize();              //모바일GNB 메뉴 높이조절
  shopListWrapChecker();       //상품 리스트 마지막 열 체크
  //gnbFloating();               // GNB 상단 플로팅
  fixedAnchorTab();            // 제품상세보기 앵커 탭 플로팅
  initFloatingWrapper();       // 모바일 제품상세 구매버튼레이어 초기화
  twImgHeightResizer();
  tab_giftshop();              //gift shop tab
  
  $(window).load(function(){
	    //gnbFloating();               // GNB 상단 플로팅
	    twImgHeightResizer();
  });

  
  $(window).resize(function(){
    initLeafBarWidth();
    //gnbFloating();
    //mgnbClose();
    initMgnbSize();
    fixedMenu();
    shopListWrapChecker();
    fixedAnchorTab();            // 제품상세보기 앵커 탭 플로팅
    initFloatingWrapper();       // 모바일 제품상세 구매버튼레이어 초기화
    twImgHeightResizer();
    tab_giftshop();              //gift shop tab
  });
  $(window).scroll(function(){
	  
	 //setTimeout(gnbFloating, 100);
    //gnbFloating();
    fixedAnchorTab();            // 제품상세보기 앵커 탭 플로팅
    //tab_giftshop();              //gift shop tab
    fixedMenu();
    jumpTop();
  });

});

//장바구니 추가 클릭시 leo tagging 변수 설정 및 트리거 수행함수
function fncSetAddCartTagginInfo(itemId, quantity){

	if(itemId != null){

	 	var tagginUrl = '/kr/ko/shop/item/tagging/info/' + itemId;
	 	$.ajax({
	 		type : 'GET',
	 		url : tagginUrl,
	 		data : {
	 			'quantity' : quantity 
	 		},
	 		dataType : 'json',
	 		success : function(data){

	 			if(data != null ){
	 				window.AP_CART_ADDPRDS = data;
	 				window.dataLayer.push({event: 'addcart'});
	 			}
	 		}
	 	});

	}
}

//장바구니 추가 클릭시 leo tagging 변수 설정 및 트리거 수행함수
function fncSetAddCartTagginInfos(itemIds, quantitys){

	if(itemIds != null){

	 	var tagginUrl = '/kr/ko/shop/item/tagging/infos';
	 	var paramVlaue = 'ids=' + itemIds  + '&quantitys=' + quantitys;
	 	$.ajax({
	 		type : 'GET',
	 		url : tagginUrl,
	 		dataType : 'json',
	 		data : paramVlaue,
	 		success : function(data){

	 			if(data != null ){
	 				window.AP_CART_ADDPRDS = data;
	 				window.dataLayer.push({event: 'addcart'});
	 			}
	 		}
	 	});

	}
}

// osulloc front header
$(function(){

  //브라우저체크
  (function(){ // 외부 라이브러리와 충돌을 막고자 모듈화.
    // 브라우저 및 버전을 구하기 위한 변수들.
    'use strict';
    var agent = navigator.userAgent.toLowerCase(),
          name = navigator.appName,
          browser;

      // MS 계열 브라우저를 구분하기 위함.
      if(name === 'Microsoft Internet Explorer' || agent.indexOf('trident') > -1 || agent.indexOf('edge/') > -1) {
          browser = 'ie';
          $("#nav").addClass("msie");//익스에서 nav css클래스 추가
          if(name === 'Microsoft Internet Explorer') { // IE old version (IE 10 or Lower)
              agent = /msie ([0-9]{1,}[\.0-9]{0,})/.exec(agent);
              browser += parseInt(agent[1]);
          } else { // IE 11+
              if(agent.indexOf('trident') > -1) { // IE 11
                  browser += 11;
              } else if(agent.indexOf('edge/') > -1) { // Edge
                  browser = 'edge';
              }
          }
      } else if(agent.indexOf('safari') > -1) { // Chrome or Safari
          if(agent.indexOf('opr') > -1) { // Opera
              browser = 'opera';
          } else if(agent.indexOf('chrome') > -1) { // Chrome
              browser = 'chrome';
          } else { // Safari
              browser = 'safari';
          }
      } else if(agent.indexOf('firefox') > -1) { // Firefox
          browser = 'firefox';
      }
      // IE: ie7~ie11, Edge: edge, Chrome: chrome, Firefox: firefox, Safari: safari, Opera: opera
      document.getElementsByTagName('html')[0].classList.add(browser);

      var is_hover = window.matchMedia('(hover: hover)').matches;
      if (is_hover) {
        document.body.classList.add('is_hover');
      }
  }());

  var $body = $('html, body');
  var is_main = $(document).find(".osulloc_main").length;
  var $header = $('#osulloc_header');
  var $w_gnb = $('#w_gnb');
  var $nav = $w_gnb.find('.nav_menu');
  var $nav_a = $nav.find('a');
  var $w_lnb = $('#w_lnb');
  var $sub_on = $w_gnb.find('.sub_on');
  var $sub_box = $w_gnb.find('.sub_box');
  var $depth_menu = $('.w_lnb .category .sub_on');
  var $body = $('html, body');

  // is main
  if (is_main && !$body.hasClass('is_main')) {
    $body.addClass('is_main');
  } else if ( !is_main && $body.hasClass('is_main')) {
    $body.removeClass('is_main');
  }
  // is breadcrumbs
  if ($('#breadcrumbs').length > 0){
    $body.addClass('is_breadcrumbs');
  }

  // pc gnb nav action
  // lnb open
  $nav_a.each(function(){
    var $this = $(this);
    $this.on('mouseenter',function(e){
      e.stopPropagation();
      if (!$w_lnb.hasClass('active')) {
        $w_lnb.addClass('active');
      }
    }); 
  });
  $header.on('mouseleave', function(e){
    e.stopPropagation();
    if ($w_lnb.hasClass('active')) {
      $sub_box.removeClass('active');
      $w_lnb.removeClass('active');
    }
    $sub_on.removeClass('on');
    $('#w_gnb .sub_box').removeClass('active')
  });

  $w_lnb.on('mouseleave', function(e){
    e.stopPropagation();
    $sub_box.removeClass('active');
    if ($w_lnb.hasClass('active')) {
      $w_lnb.removeClass('active');
    }
  });


  //var $sub_on = $w_gnb.find('.sub_on');
  $sub_on.each(function(){
    var $this = $(this);
    var $this_subBox = $this.siblings('.sub').find('.sub_box');
    $this.on('focus mouseover',function(){
      $this.addClass('on');
      $sub_box.removeClass('active');
      $this_subBox.addClass('active');
    });
    $this.on('click',function(e){
      e.preventDefault();
      e.stopPropagation();

      if ($this.hasClass('on')){
        $sub_on.removeClass('on');
        $sub_box.removeClass('active');
        $this.removeClass('on');
        $this_subBox.removeClass('active');
      } else {
        $this.addClass('on');
        $this_subBox.addClass('active');
      }
    });
  });
  $('#w_gnb .sub_box').on('mouseenter',function(e){
    e.stopPropagation();
    var $this = $(this);
    $this.attr('data-focused','1');
  });
  $('#w_gnb .sub_box').on('mouseleave',function(e){
    e.stopPropagation();
    var $this = $(this);
    $sub_on.removeClass('on');
    if( $this.hasClass('active')) {
      $this.removeClass('active');
      $this.attr('data-focused','0');
    }
  });
  $('.nav_select').on('mouseleave',function(e){
    e.stopPropagation();
    $sub_on.removeClass('on');
    $('#w_gnb .sub_box').removeClass('active');
  });
  $('.nav_more').on('mouseleave',function(e){
    e.preventDefault();
    e.stopPropagation();
    var $this = $(this);
    var $this_subbox = $this.siblings('.sub').find('.sub_box');
    var is_focused;

    setTimeout(function(){
      is_focused = parseInt($this_subbox.attr('data-focused'));
      if ( !is_focused ) {
        $this.removeClass('on');
        $this_subbox.removeClass('active');
      }
    });

  });

  $depth_menu.each(function(){
    var $this = $(this);
    var $this_depth = $this.find('.depth');
    $this.on('focus mouseover',function(){
      $this.addClass('on');
      $('.depth').removeClass('active');
      $this_depth.addClass('active');
    }).on('blur mouseleave',function(){
      var $this = $(this);
      $this.removeClass('on');
      $('.depth').removeClass('active');

    });
  });

  //mobile nav
  var $body = $("html, body");
  var $m_lnb = $("#m_lnb");
  var $m_menu = $(".lnb_menu").find(".category");
  var $m_menu_depth2 = $('#m_lnb .submenu').find('.on_sub');

  var $menu_depth2 = $('.has_depth').find('.on_sub');
  $m_menu.each(function(){
      var $this = $(this);
      
      $this.on('click', function(){
        $menu_depth2.removeClass('active');
        $menu_depth2.siblings('.sub_depth').slideUp('200');
        if ($this.hasClass('active')) {
          $m_menu.siblings('.sub').slideUp('200');
          $m_menu.removeClass('active');
        } else {
          $m_menu.removeClass('active');
          $this.addClass('active');
          $m_menu.siblings('.sub').slideUp('200');

          var $this_sub = $this.siblings('.sub');
          $this_sub.slideDown('200');
        }
      });
  });

  //depth2
  $menu_depth2.each(function(){
    var $this = $(this);
    $this.on('click', function(e){
      e.preventDefault();
      if ($this.hasClass('active')) {
        $menu_depth2.removeClass('active');
        $menu_depth2.siblings('.sub_depth').slideUp('200');
      } else {
        $menu_depth2.removeClass('active');
        $menu_depth2.siblings('.sub_depth').slideUp('200');
        $this.addClass('active');

        var $this_sub = $this.siblings('.sub_depth');
        $this_sub.slideDown('200');
      }
    });
  });
});

// *** osulloc layer popup 
var layerPageUrl = '';
var cont_st = 0;
var osLayerHistory = [];

if ($(document).find('.os_layer_wrap').hasClass('open')) {
  if (osLayerHistory.length < 1) {
    var openedLayerId = '';
    if ($('.os_layer_wrap').attr('id') === undefined) {
      var t = new Date();
      $('.os_layer_wrap.opened').attr('id', 'layer_'+ t.getTime());
    }
    openedLayerId = '#' + $layer.attr('id');
    osLayerHistory.push(openedLayerId);
  }
}

// preventDefault
function t_lock(e){
    e.preventDefault();
}
// layer open
function osLayerOpen(target){
    layerPageUrl = location.href;
    cont_st = $(window).scrollTop();//레이어 오픈 시 스크롤 위치 저장
    if (document.removeEventListener) {
        document.removeEventListener('touchmove', t_lock);
    } else {
        document.detachEvent('touchmove', t_lock);
    }
    $('.os_layer').css('margin-top', 0);

    var $body = $('html, body');
    var winH = window.innerHeight;
    var $layer = $(target);
    var layerBox = $layer.find('.os_layer');
    var layerId = '';

    if ($layer.attr('id') === undefined) {
      var t = new Date();
      $layer.attr('id', 'layer_'+ t.getTime());
    }
    layerId = '#' + $layer.attr('id');

    $body.addClass('layer_open');
    $layer.addClass('open');
    layerBox.focus();

    var layerH = layerBox.outerHeight();
    var mt = (winH - layerH) / 2;
    if (mt > 0) {
        layerBox.css('margin-top', mt);
    } else {
        layerBox.css('margin-top', 0);
    }
    
    //window.history.pushState({page : "layer"}, null, layerId);
    window.history.pushState({page : "layer"}, null, layerPageUrl); //새로고침될 페이지
    osLayerHistory.push(layerId);// push layer id
}
// layer close 
function osLayerClose(target){
    if (document.removeEventListener) {
        document.removeEventListener('touchmove', t_lock);
    } else {
        document.detachEvent('touchmove', t_lock);
    }
    var $body = $('html, body');
    var $layer = $(target);
    var layerBox = $layer.find('.os_layer');

    if (osLayerHistory.length < 2) {
      $body.removeClass('layer_open');
    }
    $layer.removeClass('open');
    layerBox.css('margin-top', 0);
    layerBox.blur();
    
    if (cont_st !== undefined) {
      $body.scrollTop(cont_st);
    }

    osLayerHistory.pop();
}
// layer close (+history back)
function osLayerClose_h(){ 
  window.history.back();
}
// close layer when browser history back 
window.onpopstate = history.onpushstate = function() {
  var openLayerId = osLayerHistory[osLayerHistory.length - 1];
  if (openLayerId !== undefined) {
    osLayerClose(openLayerId);
  }
}
// //end *** osulloc layer popup 

//BFCache 대응
const checkUrl = (href) => {
  let filteredHref = href.split('/').filter((e)=> e !== '');
  filteredHref = [...filteredHref].map((e) => e.replace('#', ''));
  const lastHref = filteredHref[filteredHref.length - 1];
  const checkList = ['ko', 'www.osulloc.com', 'dev.osulloc.com', 'stg.osulloc.com'];
  const checkList2 = ['item'];

  //url이 메인페이지일 때
  if (checkList.includes(lastHref)) {
    return false;
  }

  //url이 list로 끝날 때
  if (lastHref.indexOf('list') !== -1) { 
    if (checkList2.includes(filteredHref[filteredHref.length - 2])) {
      return false;
    }
  }

  //url이 숫자로 끝날 때
  if (!Number.isNaN(Number(lastHref))) {
    if (checkList2.includes(filteredHref[filteredHref.length - 3])) {
      return false;
    }
  }

  return true;
}
// window.onpageshow = function(event) {
//   if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
//     if (checkUrl(window.location.href)) {
//       window.location.reload();
//     }
//   }
// }

(function(){

  // 모바일 vh 리사이징 대응
  function setScreenHeight() {
    let vh = window.innerHeight * 0.01;
    document.documentElement.style.setProperty('--vh', `${vh}px`);
  }
  setScreenHeight();

  $(window).on('resize', function(){
    setScreenHeight();
  });

}())