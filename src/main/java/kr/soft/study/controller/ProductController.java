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
import kr.soft.study.ProductCommand.PReviewWriteCommand;
import kr.soft.study.ProductCommand.ProductCommand;
import kr.soft.study.ProductCommand.ReviewListCommand;
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

	@RequestMapping("/list") // ��ǰ ���
	public String list(Model model) {

		System.out.println("list()");

		command = new PListCommand();
		command.execute(model);

		return "/item/list";
	}

	@RequestMapping("/newlist") // ���ƿ� ������Ʈ
	public String newlist(HttpServletRequest request, Model model) {

		System.out.println("newlist()");
		String title = request.getParameter("title");
		model.addAttribute("title", title);

		command = new PNewListCommand();
		command.execute(model);

		return "/item/list";
	}

	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public String review(@RequestParam("product_num") int productNum, Model model) {
		System.out.println("review()");

		/* int productNum = Integer.parseInt(request.getParameter("product_num")); */
		model.addAttribute("productNum", productNum);
		command = new ReviewListCommand();
		command.execute(model);

		return "/item/reviewList";
	}

	@RequestMapping("/reviewWriteForm")
	public String reviewWriteForm(HttpServletRequest request, Model model) {
		System.out.println("reviewWriteForm()");

		int product_num = Integer.parseInt(request.getParameter("product_num"));
		System.out.println();
		model.addAttribute("product_num", product_num);
		return "/item/reviewWrite";
	}

	@RequestMapping("/reviewwite")
	public String reviewwrite(HttpServletRequest request, Model model) {
		System.out.println("reviewwrite()");
		System.out.println("reqeust: " + request.getParameter("product_num"));
		System.out.println("reqeust: " + request.getParameter("product_num").getClass());
		int productNum = Integer.parseInt(request.getParameter("product_num"));
		System.out.println(productNum);
		model.addAttribute("productNum", productNum);
		model.addAttribute("request", request);
		model.addAttribute("alert", "���並 ����Ͽ����ϴ�.");
		command = new PReviewWriteCommand();
		command.execute(model);

		return "redirect:list";
	}

}
