package kr.soft.study.controller;

import java.util.List;

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
import kr.soft.study.service.MemberService;
import kr.soft.study.util.Constant;

/**
 * Handles requests for the application home page.
 */

@Controller // 이 클래스가 Spring MVC의 컨트롤러 역할
public class BController3 {
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		Constant.sqlSession = this.sqlSession;
	}

	@Autowired
	private MemberService ms;

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
		System.out.println("test2()");

		return "login/test3";

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

	// HttpSession 클래스 주입.
	@Autowired
	private HttpSession session;

	@Autowired
	private CartService cartService;

	@RequestMapping(value = "/kakaoLogin", method = RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
		System.out.println("#########" + code);
		String access_Token = ms.getAccessToken(code);
		KakaoDTO userInfo = ms.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.getK_name());
		System.out.println("###email#### : " + userInfo.getK_email());
		System.out.println("###number#### : " + userInfo.getK_number());

		// 아래 코드가 추가되는 내용
		session.invalidate();
		// 위 코드는 session객체에 담긴 정보를 초기화 하는 코드.
		session.setAttribute("kakaoN", userInfo.getK_name());
		session.setAttribute("kakaoE", userInfo.getK_email());
		session.setAttribute("kakaoId", userInfo.getK_number());
		// 위 2개의 코드는 닉네임과 이메일을 session객체에 담는 코드
		// jsp에서 ${sessionScope.kakaoN} 이런 형식으로 사용할 수 있다.


		return "login/basketView";
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

	@RequestMapping(value = "/addCart", method = RequestMethod.POST)
	public String addCart(CartDTO cartItem) {
		Integer kNumber = (Integer) session.getAttribute("kakaoId");
		if (kNumber != null) {
			cartItem.setKNumber(kNumber);
			cartService.addCartItem(cartItem);
		}
		return "redirect:/login/cart";
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
	public String removeCart(@RequestParam("cartItemId") int cartItemId) {
		cartService.deleteCartItem(cartItemId);
		return "redirect:/login/cart";
	}

}
