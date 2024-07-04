package kr.soft.study.customerCommand;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.admincommand.AdminCommand;
import kr.soft.study.dao.IDao;
import kr.soft.study.dao.MDao;
import kr.soft.study.util.Constant;

public class NoticeListCommand implements AdminCommand {

	@Override
	public void execute(Model model) {

		SqlSession sqlSession = Constant.sqlSession;
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list", dao.noticeView());
	}

}
