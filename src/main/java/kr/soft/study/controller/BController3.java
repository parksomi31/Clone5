package kr.soft.study.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.soft.study.dto.KakaoDTO;
import kr.soft.study.service.MemberService;
import kr.soft.study.util.Constant;

/**
 * Handles requests for the application home page.
 */

@Controller // �� Ŭ������ Spring MVC�� ��Ʈ�ѷ� ����
public class BController3 {
	private SqlSession sqlSession;

	@Autowired
	private MemberService ms;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		Constant.sqlSession = this.sqlSession;
	}
	@RequestMapping("/test")
	public String testView(Model model) {
		System.out.println("test()");

		return "test";
	}
	@RequestMapping("/test2")
	public String test2View(Model model) {
		System.out.println("test2()");

		return "test2";
	}

	@RequestMapping("/basketView")
	public String basketView(Model model) {
		System.out.println("basketView()");

		return "basketView";
	}

	@RequestMapping("/login")
	public String login_view(Model model) {
		System.out.println("login()");

		return "login";
	}
	// HttpSession Ŭ���� ����.
	@Autowired
	private HttpSession session;

	@RequestMapping(value="/kakaoLogin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
		System.out.println("#########" + code);
		String access_Token = ms.getAccessToken(code);
		KakaoDTO userInfo = ms.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.getK_name());
		System.out.println("###email#### : " + userInfo.getK_email());
	    
		// �Ʒ� �ڵ尡 �߰��Ǵ� ����
		session.invalidate();
		// �� �ڵ�� session��ü�� ��� ������ �ʱ�ȭ �ϴ� �ڵ�.
		session.setAttribute("kakaoN", userInfo.getK_name());
		session.setAttribute("kakaoE", userInfo.getK_email());
		// �� 2���� �ڵ�� �г��Ӱ� �̸����� session��ü�� ��� �ڵ�
		// jsp���� ${sessionScope.kakaoN} �̷� �������� ����� �� �ִ�.

		return "basketView";

	}

}
