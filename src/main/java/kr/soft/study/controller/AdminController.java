package kr.soft.study.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.soft.study.command.AdminCommand;
import kr.soft.study.command.AdminFaqWriteCommand;
import kr.soft.study.command.AdminNoticeCommand;
import kr.soft.study.command.AdminNoticeWriteCommand;
import kr.soft.study.util.Constant;

/**
 * Handles requests for the application home page.
 */

@Controller // 이 클래스가 Spring MVC의 컨트롤러 역할
public class AdminController {
	
	AdminCommand command = null;
	private SqlSession sqlSession;
	
	@Autowired
	public AdminController(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		Constant.sqlSession = this.sqlSession;
	}

	@RequestMapping("/noticeView") //공지사항 목록
	public String noticeView(Model model) {
		System.out.println("noticeView()");
		command = new AdminNoticeCommand();
		command.execute(model);		
		return "/noticeView";
	}
	
	@RequestMapping("/noticeWriteForm") //공지사항 작성 폼
	public String noticeWriteForm() {
		
		return "/noticeWriteForm";
	}
	
	@RequestMapping("/noticeWrite") //공지사항 등록 액션
	public String noticeWrite(HttpServletRequest request, Model model) {
		System.out.println("noticeWrite()");		
		model.addAttribute("request", request);
		command = new AdminNoticeWriteCommand();
		command.execute(model);
		return "redirect:noticeView";
	}
	
	@RequestMapping("/faqView") //faq 목록
	public String faqView() {
		System.out.println("faqView()");		
		return "/faqView";
	}
	
	@RequestMapping("/faqWriteForm") //공지사항 작성 폼
	public String faqWriteForm() {
		System.out.println("faqWriteForm()");	
		return "/faqWriteForm";
	}
	
	@RequestMapping("/faqWrite") //공지사항 등록 액션
	public String faqWrite(HttpServletRequest request, Model model) {
		System.out.println("faqWrite()");		
		model.addAttribute("request", request);
		command = new AdminFaqWriteCommand();
		command.execute(model);
		return "redirect:faqView";
	}
}
