package kr.soft.study.adminCommand;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.PDao;
import kr.soft.study.dto.PDto;
import kr.soft.study.product.ProductCommand;
import kr.soft.study.util.Constant;

public class AdminPListCommand implements AdminCommand {

	@Override
	public void execute(Model model) {

		SqlSession sqlSession = Constant.sqlSession;
		PDao dao = sqlSession.getMapper(PDao.class);

		model.addAttribute("products", dao.list());
		for (PDto product : dao.list()) {
			System.out.println("Product: " + product.getTitle() + ", Price: " + product.getPrice());
		}
	}

}
