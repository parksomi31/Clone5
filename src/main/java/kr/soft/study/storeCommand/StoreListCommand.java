package kr.soft.study.storeCommand;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.ProductCommand.ProductCommand;
import kr.soft.study.dao.StoreDao;
import kr.soft.study.util.Constant;

public class StoreListCommand implements ProductCommand {

	@Override
	public void execute(Model model) {

		SqlSession sqlSession = Constant.sqlSession;
		StoreDao dao = sqlSession.getMapper(StoreDao.class);

		model.addAttribute("stores", dao.storeList());
	}

}
