package kr.soft.study.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.soft.study.admincommand.AdminCommand;
import kr.soft.study.customerCommand.CustomerNoticeDetailCommand;
import kr.soft.study.customerCommand.FaqListCommand;
import kr.soft.study.customerCommand.NoticeListCommand;
import kr.soft.study.customerCommand.PListCommand;
import kr.soft.study.util.Constant;

/**
 * Handles requests for the application home page.
 */

@Controller // 이 클래스가 Spring MVC의 컨트롤러 역할
public class CustomerController {

	AdminCommand command = null; // BCommand 인터페이스 타입의 참조변수를 선언

	private SqlSession sqlSession;

	@Autowired
	public CustomerController(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		Constant.sqlSession = this.sqlSession;
	}

	@RequestMapping("/notice") // 상품 목록
	public String notice(Model model) {

		System.out.println("notice()");

		command = new NoticeListCommand();
		command.execute(model);

		return "/customer/notice";
	}

	@RequestMapping("/noticeDetail2") // 怨듭��궗�빆 �긽�꽭�궡�슜
	public String noticeDetail(HttpServletRequest request, Model model) {
		System.out.println("noticeDetail2()");
		model.addAttribute("request", request);
		command = new CustomerNoticeDetailCommand();
		command.execute(model);
		return "/customer/noticeDetail";
	}

	@RequestMapping("/reservationCheck") // 怨듭��궗�빆 �긽�꽭�궡�슜
	public String reservationCheck(HttpServletRequest request, Model model) {
		System.out.println("reservationCheck()");

		command = new PListCommand();
		command.execute(model);
		return "/customer/reservationCheck";
	}

	@RequestMapping("/faqList") // 怨듭��궗�빆 �긽�꽭�궡�슜
	public String faqView(Model model) {
		System.out.println("faqView()");

		command = new FaqListCommand();
		command.execute(model);
		return "/customer/faqList";
	}

}
