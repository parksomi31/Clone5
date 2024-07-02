package kr.soft.study.dao;

import java.util.ArrayList;

import kr.soft.study.dto.PDto;

public interface PDao {

	public ArrayList<PDto> list();

	void upLike(final String title);

}
