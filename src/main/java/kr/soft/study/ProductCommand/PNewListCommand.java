package kr.soft.study.ProductCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.PDao;
import kr.soft.study.dto.PDto;
import kr.soft.study.util.Constant;

public class PNewListCommand implements ProductCommand {

	@Override
	public void execute(Model model) {

		// Model 객체에 저장된 값을 Map 형태로 변환합니다. (model객체에는 request뿐만이 아니라 다양한 값들이 담겨있음)
		Map<String, Object> map = model.asMap(); // field가 키가 되고 거기에 담긴 값이 value가 됨
		String title = (String) map.get("title");
		// Map에서 "request" 키에 해당하는 값을 가져와 HttpServletRequest로 캐스팅합니다.
		/*
		 * HttpServletRequest request = (HttpServletRequest) map.get("request"); //
		 * map안에 request가 키, value가 그 안에 담긴 값들이야
		 * 
		 * String title = request.getParameter("title");
		 */
		SqlSession sqlSession = Constant.sqlSession;
		PDao dao = sqlSession.getMapper(PDao.class);

		dao.upLike(title);

		model.addAttribute("products", dao.list());
	}

}
