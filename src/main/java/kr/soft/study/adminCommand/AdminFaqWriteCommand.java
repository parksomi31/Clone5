package kr.soft.study.adminCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.adminCommand.AdminCommand;
import kr.soft.study.dao.IDao;
import kr.soft.study.util.Constant;

public class AdminFaqWriteCommand implements AdminCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap(); //모델에 담겨져 있는 애들을 맵형태로 치환 스트링은 리퀘스트
		HttpServletRequest request = (HttpServletRequest) map.get("request"); //키를 호출하면 밸류값을 가져옴.
		String faq_title = request.getParameter("faq_title");
		String faq_content = request.getParameter("faq_content");
		
		SqlSession sqlSession = Constant.sqlSession;
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.faqWrite(faq_title,faq_content);

	}

}
