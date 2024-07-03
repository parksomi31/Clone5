package kr.soft.study.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.soft.study.admincommand.AdminAddProductCommand;
import kr.soft.study.admincommand.AdminCommand;
import kr.soft.study.admincommand.AdminDeleteMemberCommand;
import kr.soft.study.admincommand.AdminDeleteProductCommand;
import kr.soft.study.admincommand.AdminDeleteProgramCommand;
import kr.soft.study.admincommand.AdminFaqCommand;
import kr.soft.study.admincommand.AdminFaqWriteCommand;
import kr.soft.study.admincommand.AdminMListCommand;
import kr.soft.study.admincommand.AdminNoticeCommand;
import kr.soft.study.admincommand.AdminNoticeWriteCommand;
import kr.soft.study.admincommand.AdminPListCommand;
import kr.soft.study.admincommand.AdminProListCommand;
import kr.soft.study.util.Constant;

/**
 * Handles requests for the application home page.
 */

@Controller 
public class AdminController {

	AdminCommand command = null;
	private SqlSession sqlSession;

	@Autowired
	public AdminController(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		Constant.sqlSession = this.sqlSession;
	}


	@RequestMapping("/noticeView") // 공지사항 목록
	public String noticeView(Model model) {
		System.out.println("noticeView()");
		command = new AdminNoticeCommand();
		command.execute(model);
		return "/admin/noticeView";
	}


	@RequestMapping("/noticeWriteForm") // 공지사항 작성 폼
	public String noticeWriteForm() {
		return "/admin/noticeWriteForm";
	}


	@RequestMapping("/noticeWrite") // 공지사항 등록 액션
	public String noticeWrite(HttpServletRequest request, Model model) {
		System.out.println("noticeWrite()");
		model.addAttribute("request", request);
		command = new AdminNoticeWriteCommand();
		command.execute(model);
		return "redirect:noticeView";
	}


	@RequestMapping("/faqView") // faq 목록
	public String faqView(Model model) {
		System.out.println("faqView()");
		command = new AdminFaqCommand();
		command.execute(model);
		return "/admin/faqView";
	}


	@RequestMapping("/faqWriteForm") // faq 작성 폼
	public String faqWriteForm() {
		System.out.println("faqWriteForm()");
		return "/admin/faqWriteForm";
	}


	@RequestMapping("/faqWrite") // faq 등록 액션
	public String faqWrite(HttpServletRequest request, Model model) {
		System.out.println("faqWrite()");
		model.addAttribute("request", request);
		command = new AdminFaqWriteCommand();
		command.execute(model);
		return "redirect:faqView";
	}


	@RequestMapping("/productView") // 제품 관리 목록
	public String productView(Model model) {
		System.out.println("productView()");
		command = new AdminPListCommand();
		command.execute(model);
		return "/admin/productView";
	}


	@RequestMapping("/addProductForm") // 제품 추가 폼
	public String addProductForm() {
		System.out.println("addProductForm()");
		return "/admin/addProductForm";
	}


	@RequestMapping("/addProduct") // 제품 추가 액션
	public String addProduct(HttpServletRequest request, Model model) {
		System.out.println("addProduct()");
		model.addAttribute("request", request);
		command = new AdminAddProductCommand();
		command.execute(model);
		return "redirect:productView";
	}


	@RequestMapping("/deleteProduct") // 제품 삭제
	public String deleteProduct(HttpServletRequest request, Model model) {
		System.out.println("deleteProduct()");
		model.addAttribute("request", request);
		command = new AdminDeleteProductCommand();
		command.execute(model);
		return "redirect:productView";
	}


	@RequestMapping("/memberView") // 회원 관리 목록
	public String memberView(Model model) {
		System.out.println("memberView()");
		command = new AdminMListCommand();
		command.execute(model);
		return "/admin/memberView";
	}
	
	@RequestMapping("/deleteMember") // 회원 삭제
	public String deleteMember(HttpServletRequest request, Model model) {
		System.out.println("deleteMember()");
		model.addAttribute("request", request);
		command = new AdminDeleteMemberCommand();
		command.execute(model);
		return "redirect:memberView";
	}
	
	@RequestMapping("/story") // 오설록 스토리
	public String story() {
		System.out.println("story()");
		return "/etc/story";
	}
	
	@RequestMapping("/programView") // 프로그램 예약 관리 목록
	public String programView(Model model) {
		System.out.println("programView()");
		command = new AdminProListCommand();
		command.execute(model);
		return "/admin/programView";
	}
	
	@RequestMapping("/deleteProgram") // 프로그램 예약 삭제
	public String deleteProgram(HttpServletRequest request, Model model) {
		System.out.println("deleteProgram()");
		model.addAttribute("request", request);
		System.out.println(request);
		command = new AdminDeleteProgramCommand();
		command.execute(model);
		return "redirect:programView";
	}
}
