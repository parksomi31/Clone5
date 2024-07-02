package kr.soft.study.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.soft.study.admincommand.AdminCommand;
import kr.soft.study.admincommand.AdminFaqWriteCommand;
import kr.soft.study.admincommand.AdminNoticeCommand;
import kr.soft.study.admincommand.AdminNoticeWriteCommand;
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
		return "/admin/noticeView";
	}
	
	@RequestMapping("/noticeWriteForm") //�������� �ۼ� ��
	public String noticeWriteForm() {
		
		return "/admin/noticeWriteForm";
	}
	
	@RequestMapping("/noticeWrite") //�������� ��� �׼�
	public String noticeWrite(HttpServletRequest request, Model model) {
		System.out.println("noticeWrite()");		
		model.addAttribute("request", request);
		command = new AdminNoticeWriteCommand();
		command.execute(model);
		return "redirect:/admin/noticeView";
	}
	
	@RequestMapping("/faqView") //faq ���
	public String faqView() {
		System.out.println("faqView()");		
		return "/admin/faqView";
	}
	
	@RequestMapping("/faqWriteForm") //�������� �ۼ� ��
	public String faqWriteForm() {
		System.out.println("faqWriteForm()");	
		return "/admin/faqWriteForm";
	}
	
	@RequestMapping("/faqWrite") //�������� ��� �׼�
	public String faqWrite(HttpServletRequest request, Model model) {
		System.out.println("faqWrite()");		
		model.addAttribute("request", request);
		command = new AdminFaqWriteCommand();
		command.execute(model);
		return "redirect:/admin/faqView";
	}
}
