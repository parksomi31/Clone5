package kr.soft.study.admincommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.IDao;
import kr.soft.study.util.Constant;

public class AdminNoticeCommand implements AdminCommand{
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		SqlSession sqlSession = Constant.sqlSession;
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list", dao.noticeView()); // 데이터 사라지면 안되니까, list라는 이름으로 model에 담아야지. 그래야 컨트롤러 통해서 뷰에 갈 수 있지.
		
	}

}
