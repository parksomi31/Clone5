package kr.soft.study.admincommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import kr.soft.study.admincommand.AdminCommand;
import kr.soft.study.dao.IDao;
import kr.soft.study.dao.PDao;
import kr.soft.study.dao.RDAO;
import kr.soft.study.util.Constant;

public class AdminDeleteProgramCommand implements AdminCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap(); //�𵨿� ����� �ִ� �ֵ��� �����·� ġȯ ��Ʈ���� ������Ʈ
		HttpServletRequest request = (HttpServletRequest) map.get("request"); //Ű�� ȣ���ϸ� ������� ������.
		String id = request.getParameter("id");
		
		System.out.println("id :"+id);
		SqlSession sqlSession = Constant.sqlSession;
		RDAO dao = sqlSession.getMapper(RDAO.class);
		dao.deleteProgram(id);

	}

}
