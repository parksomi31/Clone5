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

@Controller // �� Ŭ������ Spring MVC�� ��Ʈ�ѷ� ����
public class AdminController {
	
	AdminCommand command = null;
	private SqlSession sqlSession;
	
	@Autowired
	public AdminController(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		Constant.sqlSession = this.sqlSession;
	}

	@RequestMapping("/noticeView") //�������� ���
	public String noticeView(Model model) {
		System.out.println("noticeView()");
		command = new AdminNoticeCommand();
		command.execute(model);		
		return "/noticeView";
	}
	
	@RequestMapping("/noticeWriteForm") //�������� �ۼ� ��
	public String noticeWriteForm() {
		
		return "/noticeWriteForm";
	}
	
	@RequestMapping("/noticeWrite") //�������� ��� �׼�
	public String noticeWrite(HttpServletRequest request, Model model) {
		System.out.println("noticeWrite()");		
		model.addAttribute("request", request);
		command = new AdminNoticeWriteCommand();
		command.execute(model);
		return "redirect:noticeView";
	}
	
	@RequestMapping("/faqView") //faq ���
	public String faqView() {
		System.out.println("faqView()");		
		return "/faqView";
	}
	
	@RequestMapping("/faqWriteForm") //�������� �ۼ� ��
	public String faqWriteForm() {
		System.out.println("faqWriteForm()");	
		return "/faqWriteForm";
	}
	
	@RequestMapping("/faqWrite") //�������� ��� �׼�
	public String faqWrite(HttpServletRequest request, Model model) {
		System.out.println("faqWrite()");		
		model.addAttribute("request", request);
		command = new AdminFaqWriteCommand();
		command.execute(model);
		return "redirect:faqView";
	}
}
