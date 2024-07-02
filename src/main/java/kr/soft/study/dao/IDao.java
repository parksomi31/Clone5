package kr.soft.study.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.jdbc.core.JdbcTemplate;

import kr.soft.study.dto.BDto;
import kr.soft.study.util.Constant;

public interface IDao {
	public void noticeWrite(String notice_title, String notice_content);
	public ArrayList<BDto> noticeView();
	
	public void faqWrite(String faq_title, String faq_content);
	public ArrayList<BDto> faqView();

}
