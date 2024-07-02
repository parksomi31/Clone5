package kr.soft.study.adminCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.dao.IDao;
import kr.soft.study.util.Constant;

public class AdminFaqCommand implements AdminCommand{
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub		
		SqlSession sqlSession = Constant.sqlSession;
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("faqlist", dao.faqView()); // ������ ������� �ȵǴϱ�, list��� �̸����� model�� ��ƾ���. �׷��� ��Ʈ�ѷ� ���ؼ� �信 �� �� ����.
		
	}

}
