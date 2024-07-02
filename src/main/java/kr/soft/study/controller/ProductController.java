package kr.soft.study.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.soft.study.ProductCommand.PListCommand;
import kr.soft.study.ProductCommand.PNewListCommand;
import kr.soft.study.product.ProductCommand;
import kr.soft.study.util.Constant;

/**
 * Handles requests for the application home page.
 */

@Controller // �� Ŭ������ Spring MVC�� ��Ʈ�ѷ� ����
public class ProductController {

	ProductCommand command = null; // BCommand �������̽� Ÿ���� ���������� ����

	private SqlSession sqlSession;

	@Autowired
	public ProductController(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		Constant.sqlSession = this.sqlSession;
	}

	/*
	 * @RequestMapping("/list") public String list(Model model) {
	 * System.out.println("list"); return "/item/list"; }
	 */

	@RequestMapping("/list") //��ǰ ���
	public String list(Model model) {

		System.out.println("list()");

		command = new PListCommand();
		command.execute(model);

		return "/item/list";
	}

	@RequestMapping("/newlist")   // ���ƿ� ������Ʈ
	public String newlist(HttpServletRequest request, Model model) {

		System.out.println("newlist()");
		String title = request.getParameter("title");
		model.addAttribute("title", title);

		command = new PNewListCommand();
		command.execute(model);

		return "/item/list";
	}

	
	@RequestMapping("/review")
	public String review(Model model) {
		System.out.println("review()");
		return "/item/review";
	}
	
	
	/*
	 * @RequestMapping("/review") public String review(HttpServletRequest request,
	 * Model model) {
	 * 
	 * System.out.println("newlist()"); String title =
	 * request.getParameter("title"); model.addAttribute("title", title);
	 * 
	 * command = new PNewListCommand(); command.execute(model);
	 * 
	 * return "/item/list"; }
	 */

}
