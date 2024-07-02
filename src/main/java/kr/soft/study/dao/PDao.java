package kr.soft.study.dao;

import java.util.ArrayList;

import kr.soft.study.dto.PDto;

public interface PDao {

	public ArrayList<PDto> list();

	void upLike(final String title);

	public void addProduct(String title, String description, String price, String like, String review, String image, String second_type_id);
	
	public void deleteProduct(String title);
}
