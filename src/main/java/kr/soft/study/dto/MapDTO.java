package kr.soft.study.dto;

public class MapDTO {

	private int map_index;
	private String title;
	private String address;
	private String phone;
	private String time;

	public MapDTO() {
		super();
	}

	public MapDTO(int map_index, String title, String address, String phone, String time) {
		super();
		this.map_index = map_index;
		this.title = title;
		this.address = address;
		this.phone = phone;
		this.time = time;
	}

	public int getMap_index() {
		return map_index;
	}

	public void setMap_index(int map_index) {
		this.map_index = map_index;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}
