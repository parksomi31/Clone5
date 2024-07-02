package kr.soft.study.dto;

import java.sql.Timestamp;

public class ReviewDto {

	int review_index;
	int product_num;
	String name;
	String title;
	String content;
	String image;
	Timestamp date;
	int star;
	int k_number;

	public ReviewDto() {
		super();
	}

	public ReviewDto(int review_index, int product_num, String name, String title, String content, String image,
			Timestamp date, int star, int k_number) {
		super();
		this.review_index = review_index;
		this.product_num = product_num;
		this.name = name;
		this.title = title;
		this.content = content;
		this.image = image;
		this.date = date;
		this.star = star;
		this.k_number = k_number;
	}

	public int getReview_index() {
		return review_index;
	}

	public void setReview_index(int review_index) {
		this.review_index = review_index;
	}

	public int getProduct_num() {
		return product_num;
	}

	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public int getK_number() {
		return k_number;
	}

	public void setK_number(int k_number) {
		this.k_number = k_number;
	}

}
