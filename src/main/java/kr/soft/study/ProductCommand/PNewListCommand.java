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

		// Model ��ü�� ����� ���� Map ���·� ��ȯ�մϴ�. (model��ü���� request�Ӹ��� �ƴ϶� �پ��� ������ �������)
		Map<String, Object> map = model.asMap(); // field�� Ű�� �ǰ� �ű⿡ ��� ���� value�� ��
		String title = (String) map.get("title");
		// Map���� "request" Ű�� �ش��ϴ� ���� ������ HttpServletRequest�� ĳ�����մϴ�.
		/*
		 * HttpServletRequest request = (HttpServletRequest) map.get("request"); //
		 * map�ȿ� request�� Ű, value�� �� �ȿ� ��� �����̾�
		 * 
		 * String title = request.getParameter("title");
		 */
		SqlSession sqlSession = Constant.sqlSession;
		PDao dao = sqlSession.getMapper(PDao.class);

		dao.upLike(title);

		model.addAttribute("products", dao.list());
	}

}
