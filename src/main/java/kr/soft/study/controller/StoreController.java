package kr.soft.study.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.soft.study.ProductCommand.ProductCommand;
import kr.soft.study.storeCommand.StoreListCommand;
import kr.soft.study.storeCommand.StoreMapCommand;
import kr.soft.study.util.Constant;

/**
 * Handles requests for the application home page.
 */

@Controller // 이 클래스가 Spring MVC의 컨트롤러 역할
public class StoreController {

	ProductCommand command = null; // BCommand 인터페이스 타입의 참조변수를 선언

	private SqlSession sqlSession;

	@Autowired
	public StoreController(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		Constant.sqlSession = this.sqlSession;
	}

	@RequestMapping("/store") // 상품 목록
	public String store(Model model) {

		System.out.println("store()");

		command = new StoreListCommand();
		command.execute(model);
		
		return "/store/store";
	}

	
	@RequestMapping("/map") // 상품 목록
	public String storeMap(Model model) {

		System.out.println("storeMap()");

		command = new StoreMapCommand();
		command.execute(model);

		return "/store/storemap";
	}
}
