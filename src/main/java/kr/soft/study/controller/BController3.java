package kr.soft.study.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.soft.study.dto.CartDTO;
import kr.soft.study.dto.KakaoDTO;
import kr.soft.study.dto.RDTO;
import kr.soft.study.service.CartService;
import kr.soft.study.service.KakaoService;
import kr.soft.study.service.MemberService;
import kr.soft.study.util.Constant;

/**
 * Handles requests for the application home page.
 */

@Controller // �씠 �겢�옒�뒪媛� Spring MVC�쓽 而⑦듃濡ㅻ윭 �뿭�븷
public class BController3 {
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		Constant.sqlSession = this.sqlSession;
	}

	@Autowired
	private MemberService ms;

	@Autowired
    private KakaoService kakaoService;
	
	@RequestMapping("/test")
	public String testView(Model model) {
		System.out.println("test()");

		return "login/test";

	}

	@RequestMapping("/test2")
	public String test2View(Model model) {
		System.out.println("test2()");

		return "login/test2";
	}

	@RequestMapping("/test3")
	public String test3View(Model model) {
		System.out.println("test3()");

		return "login/test3";

	}
	@RequestMapping("/present")
	public String presentView(Model model) {
		System.out.println("present()");

		return "login/present";

	}

	@RequestMapping("/basketView")
	public String basketView(Model model) {
		System.out.println("basketView()");

		return "login/basketView";

	}

	@RequestMapping("/login")
	public String login_view(Model model) {
		System.out.println("login()");

		return "login/login";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
	    String accessToken = (String) session.getAttribute("accessToken");
	    System.out.println("logout()");
	    System.out.println(accessToken);

	    if (accessToken != null) {
	        kakaoService.kakaoLogout(accessToken);
	        session.removeAttribute("accessToken"); // 세션에서 액세스 토큰 제거
	    }
	    session.invalidate(); // 세션 무효화
	    
	    // 쿠키 제거
	    Cookie[] cookies = request.getCookies();
	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            cookie.setMaxAge(0);
	            cookie.setPath("/");
	            response.addCookie(cookie);
	        }
	    }
	    System.out.println(accessToken);
	    System.out.println("logout2()");
	    return "redirect:/login";
	}



	// HttpSession �겢�옒�뒪 二쇱엯.
	@Autowired
	private HttpSession session;

	@Autowired
	private CartService cartService;

	@RequestMapping(value = "/kakaoLogin", method = RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpServletRequest request) throws Exception {
		System.out.println("#########" + code);
		String access_Token = ms.getAccessToken(code);
		KakaoDTO userInfo = ms.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.getK_name());
		System.out.println("###email#### : " + userInfo.getK_email());
		System.out.println("###number#### : " + userInfo.getK_number());
		  HttpSession session = request.getSession(false);
		    if (session != null) {
		        session.invalidate(); // 기존 세션 무효화
		    }
		    session = request.getSession(true); // 새로운 세션 생성
		    session.setAttribute("accessToken", access_Token); // accessToken 세션에 저장
		
		
		// �븘�옒 肄붾뱶媛� 異붽��릺�뒗 �궡�슜
		//session.invalidate();
		// �쐞 肄붾뱶�뒗 session媛앹껜�뿉 �떞湲� �젙蹂대�� 珥덇린�솕 �븯�뒗 肄붾뱶.
		session.setAttribute("kakaoN", userInfo.getK_name());
		session.setAttribute("kakaoE", userInfo.getK_email());
		session.setAttribute("kakaoId", userInfo.getK_number());
		// �쐞 2媛쒖쓽 肄붾뱶�뒗 �땳�꽕�엫怨� �씠硫붿씪�쓣 session媛앹껜�뿉 �떞�뒗 肄붾뱶
		// jsp�뿉�꽌 ${sessionScope.kakaoN} �씠�윴 �삎�떇�쑝濡� �궗�슜�븷 �닔 �엳�떎.

		return "home2";
	}

	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String showReservationForm(Model model) {
		model.addAttribute("reservation", new RDTO());
		return "login/reservationForm";
	}

	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public String submitReservation(@ModelAttribute RDTO rdto, Model model) {
		sqlSession.insert("kr.soft.study.dao.RDAO.insertReservation", rdto);
		model.addAttribute("message", "예약이 성공적으로 완료되었습니다.");
		return "login/reservationSuccess";
	}

	/*@RequestMapping(value = "/addCart", method = RequestMethod.POST)
	public String addCart(CartDTO cartItem) {
		Integer kNumber = (Integer) session.getAttribute("kakaoId");
		if (kNumber != null) {
			cartItem.setKNumber(kNumber);
			cartService.addCartItem(cartItem);
		}
		return "redirect:/cart";
	}*/
	
	@RequestMapping(value = "/addCart", method = RequestMethod.POST)
    public String addCart(@RequestParam("productNum") int productNum,
                          @RequestParam("title") String title,
                          @RequestParam("price") int price,
                          @RequestParam("image") String image,
                          @RequestParam("quantity") int quantity) {
        Integer kNumber = (Integer) session.getAttribute("kakaoId");
        if (kNumber != null) {
            CartDTO cartItem = new CartDTO();
            cartItem.setKNumber(kNumber);
            cartItem.setProductNum(productNum);
            cartItem.setTitle(title);
            cartItem.setPrice(price);
            cartItem.setImage(image);
            cartItem.setQuantity(quantity);
            cartItem.setTotal(price * quantity);
            cartService.addCartItem(cartItem);
        }
        return "redirect:/list"; // 장바구니에 추가 후 list 페이지로 리다이렉트
    }

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String showCart(Model model) {
        Integer kNumber = (Integer) session.getAttribute("kakaoId");
        if (kNumber != null) {
            List<CartDTO> cartItems = cartService.getCartItemsByUser(kNumber);
            model.addAttribute("cartItems", cartItems);
        } else {
            model.addAttribute("cartItems", null);
        }
        return "login/cart";
    }

	@RequestMapping(value = "/removeCart", method = RequestMethod.POST)
	public String removeCart(@RequestParam("cartItemId") int cart_item_id) {
		System.out.println("Removing cart item: " + cart_item_id);
		cartService.deleteCartItem(cart_item_id);
		return "redirect:/cart";

	}

}
