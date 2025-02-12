package kr.soft.study.admincommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.admincommand.AdminCommand;
import kr.soft.study.dao.IDao;
import kr.soft.study.dao.PDao;
import kr.soft.study.util.Constant;

public class AdminAddProductCommand implements AdminCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap(); //모델에 담겨져 있는 애들을 맵형태로 치환 스트링은 리퀘스트
		HttpServletRequest request = (HttpServletRequest) map.get("request"); //키를 호출하면 밸류값을 가져옴.
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String like = request.getParameter("like");
		String review = request.getParameter("review");
		String image = request.getParameter("image");
		String second_type_id = request.getParameter("second_type_id");
		
		SqlSession sqlSession = Constant.sqlSession;
		PDao dao = sqlSession.getMapper(PDao.class);
		dao.addProduct(title,description,price,like,review,image,second_type_id);

	}

}
