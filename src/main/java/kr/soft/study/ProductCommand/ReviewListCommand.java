package kr.soft.study.ProductCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.ReviewDao;
import kr.soft.study.util.Constant;

public class ReviewListCommand implements ProductCommand {

	@Override
	public void execute(Model model) {

		Map<String, Object> map = model.asMap();
		int product_num = (int) map.get("productNum");

		/* int product_num = Integer.parseInt(request.getParameter("productNum")); */
		SqlSession sqlSession = Constant.sqlSession;
		ReviewDao dao = sqlSession.getMapper(ReviewDao.class);

		model.addAttribute("reviews", dao.list(product_num));

	}

}
