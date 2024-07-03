package kr.soft.study.dao;

import java.util.ArrayList;

import kr.soft.study.dto.KakaoDTO;

public interface MDao {
	
	public ArrayList<KakaoDTO> memberView();
	public void deleteMember(String k_number);
}
