package kr.soft.study.dao;

import java.util.ArrayList;

import kr.soft.study.dto.ReviewDto;

public interface ReviewDao {

	public ArrayList<ReviewDto> list(int product_num);

	public void write(int num, String name, String password, String title, String content, String image, int star);

}
