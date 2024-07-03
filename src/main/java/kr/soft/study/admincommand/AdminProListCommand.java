package kr.soft.study.admincommand;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.RDAO;
import kr.soft.study.util.Constant;

public class AdminProListCommand implements AdminCommand {

	@Override
	public void execute(Model model) {

		SqlSession sqlSession = Constant.sqlSession;
		RDAO dao = sqlSession.getMapper(RDAO.class);

		model.addAttribute("programView", dao.programView());
	}

}
