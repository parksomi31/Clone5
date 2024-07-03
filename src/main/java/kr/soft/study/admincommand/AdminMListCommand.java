package kr.soft.study.admincommand;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.PDao;
import kr.soft.study.dao.ReviewDao;
import kr.soft.study.dto.PDto;
import kr.soft.study.util.Constant;

public class AdminMListCommand implements AdminCommand {

	@Override
	public void execute(Model model) {

		SqlSession sqlSession = Constant.sqlSession;
		ReviewDao dao = sqlSession.getMapper(ReviewDao.class);

	}

}
