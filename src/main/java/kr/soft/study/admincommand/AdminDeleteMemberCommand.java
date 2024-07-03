package kr.soft.study.admincommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.admincommand.AdminCommand;
import kr.soft.study.dao.IDao;
import kr.soft.study.dao.MDao;
import kr.soft.study.dao.PDao;
import kr.soft.study.util.Constant;

public class AdminDeleteMemberCommand implements AdminCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap(); //모델에 담겨져 있는 애들을 맵형태로 치환 스트링은 리퀘스트
		HttpServletRequest request = (HttpServletRequest) map.get("request"); //키를 호출하면 밸류값을 가져옴.
		String k_number = request.getParameter("k_number");
		
		SqlSession sqlSession = Constant.sqlSession;
		MDao dao = sqlSession.getMapper(MDao.class);
		dao.deleteMember(k_number);

	}

}
