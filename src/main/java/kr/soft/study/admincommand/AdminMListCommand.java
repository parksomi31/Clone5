package kr.soft.study.admincommand;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.MDao;
import kr.soft.study.util.Constant;

public class AdminMListCommand implements AdminCommand {

	@Override
	public void execute(Model model) {

		SqlSession sqlSession = Constant.sqlSession;
		MDao dao = sqlSession.getMapper(MDao.class);
		
		model.addAttribute("member", dao.memberView());
	}

}
