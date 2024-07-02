package kr.soft.study.dto;

public class PDto {

	String title;
	String description;
	int price;
	String image;
	int like;
	int review;
	int first_type_id;
	String first_type_title;
	int second_type_id;
	String secont_type_title;

	public PDto() {
		super();
	}

	public PDto(String title, String description, int price, String image, int like, int review, int first_type_id,
			String first_type_title, int second_type_id, String secont_type_title) {
		super();
		this.title = title;
		this.description = description;
		this.price = price;
		this.image = image;
		this.like = like;
		this.review = review;
		this.first_type_id = first_type_id;
		this.first_type_title = first_type_title;
		this.second_type_id = second_type_id;
		this.secont_type_title = secont_type_title;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

	public int getReview() {
		return review;
	}

	public void setReview(int review) {
		this.review = review;
	}

	public int getFirst_type_id() {
		return first_type_id;
	}

	public void setFirst_type_id(int first_type_id) {
		this.first_type_id = first_type_id;
	}

	public String getFirst_type_title() {
		return first_type_title;
	}

	public void setFirst_type_title(String first_type_title) {
		this.first_type_title = first_type_title;
	}

	public int getSecond_type_id() {
		return second_type_id;
	}

	public void setSecond_type_id(int second_type_id) {
		this.second_type_id = second_type_id;
	}

	public String getSecont_type_title() {
		return secont_type_title;
	}

	public void setSecont_type_title(String secont_type_title) {
		this.secont_type_title = secont_type_title;
	}

}
