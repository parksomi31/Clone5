package kr.soft.study.ProductCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.PDao;
import kr.soft.study.dao.ReviewDao;
import kr.soft.study.util.Constant;

public class PReviewWriteCommand implements ProductCommand {

	@Override
	public void execute(Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		int productNum = (int) map.get("productNum");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		int star = Integer.parseInt(request.getParameter("star"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String image = request.getParameter("image");

		System.out.println(productNum);
		System.out.println(name);
		System.out.println(password);
		System.out.println(star);
		System.out.println(title);
		System.out.println(content);
		System.out.println(image);

		SqlSession sqlSession = Constant.sqlSession;
		ReviewDao dao = sqlSession.getMapper(ReviewDao.class);
		PDao dao2 = sqlSession.getMapper(PDao.class);

		dao2.upReview(productNum);
		dao.write(productNum, name, password, title, content, image, star);

		/* model.addAttribute("products", dao.list()); */

	}

}
