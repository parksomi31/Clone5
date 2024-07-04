package kr.soft.study.storeCommand;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.ProductCommand.ProductCommand;
import kr.soft.study.dao.MapDao;
import kr.soft.study.util.Constant;

public class StoreMapCommand implements ProductCommand {

	@Override
	public void execute(Model model) {

		SqlSession sqlSession = Constant.sqlSession;
		MapDao dao = sqlSession.getMapper(MapDao.class);

		model.addAttribute("storeList", dao.storeList());
	}

}
