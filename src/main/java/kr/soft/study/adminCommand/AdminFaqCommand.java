package kr.soft.study.adminCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.IDao;
import kr.soft.study.util.Constant;

public class AdminFaqCommand implements AdminCommand{
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub		
		SqlSession sqlSession = Constant.sqlSession;
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("faqlist", dao.faqView()); // 데이터 사라지면 안되니까, list라는 이름으로 model에 담아야지. 그래야 컨트롤러 통해서 뷰에 갈 수 있지.
		
	}

}
