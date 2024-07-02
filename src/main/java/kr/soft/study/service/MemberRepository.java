package kr.soft.study.service;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.soft.study.dto.KakaoDTO;

@Repository
public class MemberRepository {

	// mapper�� ȣ���ϱ� ���� Ŭ���� ����.
	@Autowired
	private SqlSessionTemplate sql;
	
	// ���� ����
	public void kakaoinsert(HashMap<String, Object> userInfo) {
		sql.insert("Member.kakaoInsert",userInfo);
	}

	// ���� Ȯ��
	public KakaoDTO findkakao(HashMap<String, Object> userInfo) {
		System.out.println("RN:"+userInfo.get("nickname"));
		System.out.println("RE:"+userInfo.get("email"));
		return sql.selectOne("Member.findKakao", userInfo);
	}

}