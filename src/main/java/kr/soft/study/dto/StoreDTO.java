package kr.soft.study.dto;

public class StoreDTO {

	private int store_index;
	private String title;
	private String content;
	private String address;
	private String image;

	public StoreDTO() {
		super();
	}

	public StoreDTO(int store_index, String title, String content, String address, String image) {
		super();
		this.store_index = store_index;
		this.title = title;
		this.content = content;
		this.address = address;
		this.image = image;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getStore_index() {
		return store_index;
	}

	public void setStore_index(int store_index) {
		this.store_index = store_index;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
