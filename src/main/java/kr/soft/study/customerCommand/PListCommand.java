package kr.soft.study.customerCommand;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.admincommand.AdminCommand;
import kr.soft.study.dao.RDAO;
import kr.soft.study.util.Constant;

public class PListCommand implements AdminCommand {

	@Override
	public void execute(Model model) {

		SqlSession sqlSession = Constant.sqlSession;
		RDAO dao = sqlSession.getMapper(RDAO.class);

		model.addAttribute("products", dao.programView());

	}

}
